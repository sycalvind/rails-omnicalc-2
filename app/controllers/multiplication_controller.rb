class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "multiplication_templates/multiplication_form" })
  end

  def multiply_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number * @second_number

    render({ :template => "multiplication_templates/multiply_result" })
  end
end
