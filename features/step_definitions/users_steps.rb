Quando('faço uma requisição GET para o serviço Users') do
  @request_users = users.get_users
  end
  
  Então('o serviço Users deve responder com {int}') do |status_code|
    expect(@request_users.code).to eq status_code
  end
  
  Então('retorna a lista de usuários') do
    expect(@request_users.message).not_to be_empty
  end
  
  Quando('faço uma requisição GET para o serviço Users passando id') do
    @id= sort_id.to_i
    @request_users = users.get_user(@id)
  end
  
  Então('o serviço users deve responder com {int}') do |status_code|
    expect(@request_users.code).to eq status_code
  end
  
  Então('retorna o usuário') do
    expect(@request_users.parsed_response['id']).to eql @id
  end

  Quando('faço uma requisição POST para o serviço Users') do
    @payload_users = build(:user).user_hash
    @request_users = users.post_users(@payload_users)
  end
  
  Então('retorna o usário criado') do
    expect(@request_users['id']).to eql @payload_users[:ID]
    expect(@request_users['userName']).to eql @payload_users[:UserName]
    expect(@request_users['password']).to eql @payload_users[:Password]
  end