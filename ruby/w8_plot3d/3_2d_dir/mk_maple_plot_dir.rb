require 'scanf'

data = []
Dir.glob("d_task_*/result.txt").each do |file|
  data << File.readlines(file)[0].scanf("[%f, %f, %f]")
end

puts "with(plots):
AA:=#{data}:
p_A:=pointplot3d(AA, symbolsize=20);

with(LinearAlgebra);
data := convert(Transpose(Matrix(AA)), listlist);
with(stats);
fit1 := fit[leastsquare[[s, t, u], 
u = a4*s*t + a5*t^2 + a6*s^2 + a2*t + a3*s + a1, 
{a1, a2, a3, a4, a5, a6}]](data);
f1 := unapply(rhs(fit1), s, t);
pf1 := plot3d(f1(ss, uu), ss = -1.0 .. 1.0, uu = -1.0 .. 1.0):
display(pf1, p_A);
"
