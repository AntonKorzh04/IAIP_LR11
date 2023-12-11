require 'json'

class LuckyNumbersController < ApplicationController
    def input
    end

    def view
      # ищем в бд запись по переданному параметру params[:numbers_count]
      lucky_number = LuckyNumber.find_by(numbers_count: params[:numbers_count])
      
      # если не находим, то создаем новую
      if lucky_number.nil?
        generate_result
        lucky_number = LuckyNumber.new(numbers_count: params[:numbers_count], data: generate_json) # создание новой записи
        lucky_number.save # сохранение
      else
        @result = JSON.parse(lucky_number.data).values
      end

      respond_to do |format|
        format.html
        format.json { render json: lucky_number.data } # формируем json либо из новых созданных данных, либо из найденных
      end
    end

    # просмотр содержимого базы
    def view_database
      # Получить все записи из модели LuckyNumber
      @all_lucky_numbers = LuckyNumber.all
    end

    private

    # генерация массива с результатами
    def generate_result
      @result = []
      0.upto(params[:numbers_count].to_i) do |i|
          number = ('0' * (6 - i.to_s.length)) + i.to_s
          @result.append(number) if (number[0..2].each_char.map(&:to_i).reduce(:+) == number[3..5].each_char.map(&:to_i).reduce(:+))
      end
    end

    # формирование json из результирующего массива чисел
    def generate_json
      result_hash = {}
          @result.each_with_index do |number, index|
          result_hash[index.to_s] = number.to_s
        end
        result_hash.to_json
    end
end
