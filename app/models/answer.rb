class Answer < ApplicationRecord

  # Enums
  enum defense_type: [ 'Condenatória1', 'Executiva2', 'Mandamental2', 'Declaratória2', 'Constitutiva2']
  enum lawsuit_type: [ 'Condenatória', 'Executiva', 'Mandamental', 'Declaratória', 'Constitutiva']
  enum evidence: [ 'RESERVA DE VÔO;', 'COMPROVANTE DE EMBARQUE',
                   'INSCRIÇÃO NO EVENTO DE INOVAÇÃO',
                   'COMPROVANTE DE RESERVA NO HOTEL TANGO',
                   'FOTOS TURÍSTICO', 'COMPROVANTES DE GASTOS NA VIAGEM']
  enum addressing_type: ['Vara Única da Comarca de Bom Retiro/SC.',
                        'Juizado Especial Cível da comarca de Florianópolis/SC',
                        'Juizado Especial Cível da comarca de Curitiba/PR']

  belongs_to :petition, optional: true

end
