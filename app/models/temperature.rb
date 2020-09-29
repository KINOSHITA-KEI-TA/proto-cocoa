class Temperature < ActiveHash::Base
  self.data = [
      {id: 1, name: '35.0'}, {id: 2, name: '35.1'}, {id: 3, name: '35.2'},
      {id: 4, name: '35.3'}, {id: 5, name: '35.4'}, {id: 6, name: '35.5'},
      {id: 7, name: '35.6'}, {id: 8, name: '35.7'}, {id: 9, name: '35.8'},
      {id: 10, name: '35.9'}, {id: 11, name: '36.0'}, {id: 12, name: '36.1'},
      {id: 13, name: '36.2'}, {id: 14, name: '36.3'}, {id: 15, name: '36.4'},
      {id: 16, name: '36.5'}, {id: 17, name: '36.6'}, {id: 18, name: '36.7'},
      {id: 19, name: '36.8'}, {id: 20, name: '36.9'}, {id: 21, name: '37.0'},
      {id: 22, name: '37.1'}, {id: 23, name: '37.2'}, {id: 24, name: '37.3'},
      {id: 25, name: '37.4'}, {id: 26, name: '37.5'}, {id: 27, name: '37.6'},
      {id: 28, name: '37.7'}, {id: 29, name: '37.8'}, {id: 30, name: '37.9'},
      {id: 31, name: '38.0'}, {id: 32, name: '38.1'}, {id: 33, name: '38.2'},
      {id: 34, name: '38.3'}, {id: 35, name: '38.4'}, {id: 36, name: '38.5'},
      {id: 37, name: '38.6'}, {id: 38, name: '38.7'}, {id: 39, name: '38.8'},
      {id: 40, name: '38.9'}, {id: 41, name: '39.0'}, {id: 42, name: '39.1'},
      {id: 43, name: '39.2'}, {id: 44, name: '39.3'}, {id: 45, name: '39.4'},
      {id: 46, name: '39.5'}, {id: 47, name: '39.6'}, {id: 48, name: '39.7'},
      {id: 49, name: '39.8'}, {id: 50, name: '39.9'}, {id: 51, name: '40.0'},
  ]
end
include ActiveHash::Associations
belongs_to :comment