class HomeController < ApplicationController
	
    before_action :authenticate_user!


	def index
        @meses_esp = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'septiembre', 'Octubre', 'Noviembre', 'Diciembre']
        # @cantidades = [12, 19, 3, 5, 2, 3, 5, 7, 9, 6, 14, 15]
        @meses = []
        @cantidades = []

        fecha_actual = DateTime.now.in_time_zone  # Date.parse('2021-12-31') #  2021-12-01
        primer_dia_anio = fecha_actual.beginning_of_year # Date.parse('2021-01-1') #
        ultimo_dia_anio = fecha_actual.end_of_year
        # puts "********"
		@users = User.where(" created_at >= '#{primer_dia_anio}' and created_at <= '#{fecha_actual }' ")
        # puts @users
        # puts "********"

        fecha_min = Date.parse( @users.minimum(:created_at).to_s )
        fecha_max = Date.parse( @users.maximum(:created_at).to_s )

        @meses = (fecha_min.beginning_of_month..fecha_max).select { |f| f == f.beginning_of_month }

        @cantidades = @meses.map { |mes| @users.where(" created_at >= '#{mes.beginning_of_month}' and created_at <= '#{mes.end_of_month}' ").count }

        @meses = @meses.map { |mes| @meses_esp[ mes.month - 1 ] }





        # @cantidades = [12, 19, 3, 5, 2, 3, 5, 7, 9, 6, 14, 15]
        @mess = []
        @cantidad = []
       
		@empleados = Empleado.where(" created_at >= '#{primer_dia_anio}' and created_at <= '#{fecha_actual }' ")
       
        fecha_min = Date.parse( @empleados.minimum(:created_at).to_s )
        fecha_max = Date.parse( @empleados.maximum(:created_at).to_s )
        # puts "***** meses ******"
        @mess = (fecha_min.beginning_of_month..fecha_max).select { |f| f == f.beginning_of_month }
        # puts @mess.count
        # puts "***** meses fin******"

        # puts "**** cantidad ******"
        @cantidad = @mess.map { |mes| @empleados.where(" created_at >= '#{mes.beginning_of_month}' and created_at <= '#{mes.end_of_month}' ").count }
        # puts @cantidad
        # puts " *****cantidad fin*****"
        
        # puts "******* mess 2*******"
        # puts @meses_esp[11]
        @mess = @mess.map { |mes|
            @meses_esp[ mes.month - 1 ] 
           
        } 
        # puts "*****************************"
        # puts @mess
        # puts "********* mess 2 fin*********"

       


       

    end
end