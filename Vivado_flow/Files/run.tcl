# # Opening the GUI for any user-based options
start_gui 

# Creating the project
set project_name "SPI_project" 
set project_dir "./SPI_synth" 

create_project ${project_name} "$project_dir" -part xc7a35ticpg236-1L -force

# Adding the files

set file_list [open "./SPI_list.txt" r]
set file_content [read $file_list]
close $file_list
set files [split $file_content "\n"]
set files_excluding_tb [lrange $files 0 end-1]
foreach file $files {
        if {$file ne ""} {
            add_files $files_excluding_tb
        }
}

add_files basys_master.xdc

## Get the top module for the syntehesis

set top_module "SPI_WRAPPER"

synth_design -rtl -top $top_module

# synth_design -rtl -top $top_module > elab.log

write_schematic "${project_dir}/elaborated_schematic.pdf" -format pdf -force

launch_runs synth_1 


# launch_runs synth_1 > synth.log

wait_on_run synth_1
open_run synth_1

write_schematic "${project_dir}/synthesized_schematic.pdf" -format pdf -force 

set netlist_filename "${project_dir}/${top_module}_netlist.v"

write_verilog -force $netlist_filename

launch_runs impl_1 -to_step write_bitstream 

wait_on_run impl_1
open_run impl_1

# open_hw

# connect_hw_server