t_start = t_start_new
t_end = t_end_new
time_step = time_step
Td = Td_new
t_dur_save = t_dur_save_new

clear t_start_new;
clear t_end_new;
clear time_step_new;
clear Td_new;
clear t_dur_save_new;

variables_name = who;
number_of_variables = length(variables_name)


t_index_a = size(saved_time_span_save)
t_index_b= size(t_dur_save)


t_index = find(saved_time_span_save >= t_dur_save);

for i = 1:number_of_variables,
    number_of_values = eval(['length(' char(variables_name(i)) ')']);
    if (number_of_values > 1)
        if(findstr(char(variables_name(i)),'IC') > 0)
            eval([char(variables_name(i)) '=' char(variables_name(i)) '(' num2str(t_index(1)) ');']);
            char(variables_name(i));
        else
            eval([char(variables_name(i)) '=' char(variables_name(i)) '(' num2str(t_index(1)) ':' num2str(number_of_values) ');']);
            char(variables_name(i));
        end
    end
end


clear variables_name;
clear number_of_variables;
clear t_index;
clear number_of_values;
