# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

caramelos_data = [
  {
    name: "Bambino",
    story: "Um sonhador com olhar doce, mestre na arte de conseguir um petisco com apenas um olhar. Foi encontrado dormindo numa caixa de feira.",
    found_on: 3.years.ago,
    judgemental_stare_intensity: 7
  },
  {
    name: "Paçoca",
    story: "Doce como o nome sugere, Paçoca é a alegria da vizinhança. Passa o dia na calçada esperando por carinho e não dispensa um bom cochilo ao sol.",
    found_on: 1.year.ago,
    judgemental_stare_intensity: 4
  },
  {
    name: "Rogerinho",
    story: "Líder nato da matilha do bairro. Conhece cada beco e tem um faro infalível para churrascos. Sua especialidade é 'resgatar' chinelos perdidos.",
    found_on: 5.years.ago,
    judgemental_stare_intensity: 9
  },
  {
    name: "Faxina",
    story: "O aspirador de pó de quatro patas. Nenhuma migalha escapa de sua patrulha na cozinha. Foi adotada após ser encontrada 'limpando' a frente de uma padaria.",
    found_on: 2.years.ago,
    judgemental_stare_intensity: 6
  },
  {
    name: "Pix",
    story: "Ágil, rápido e sempre alerta. Pix aparece em menos de 3 segundos quando ouve o som de um pacote de petiscos. Foi o primeiro a aprender a usar a porta de cachorro.",
    found_on: 6.months.ago,
    judgemental_stare_intensity: 8
  }
]

caramelos_data.each do |caramel_data|
  Caramel.find_or_create_by!(name: caramel_data[:name]) do |caramel|
    caramel.story = caramel_data[:story]
    caramel.found_on = caramel_data[:found_on]
    caramel.judgemental_stare_intensity = caramel_data[:judgemental_stare_intensity]
  end
end

puts "Seeded #{Caramel.count} caramels!"
