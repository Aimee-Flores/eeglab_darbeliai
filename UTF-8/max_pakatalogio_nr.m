function nr=max_pakatalogio_nr(katalogas)
d=dir(katalogas); 
d0={d(find([d.isdir])).name};
d1=arrayfun(@(x) textscan(d0{x},'%d'), 3:length(d0),'UniformOutput', false);
d2=[d1{:}] ;
if isempty(d2); nr=0; return; end; 
nr=max([d2{:}]) ;
if isempty(nr); nr=0; end; 
