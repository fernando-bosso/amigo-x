require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:one)
    @group = Group.new(name: "G"*51, description: "Descricao valida", user_id: @user.id)
    @group2 = Group.new(name: "Grupo", description: nil, user_id: @user.id)
    @group3 = Group.new(name: "Grup", description: "Descricao valida", user_id: @user.id)
    @group4 = Group.new(name: "Grupo", description: "D"*501, user_id: @user.id)
    @group5 = Group.new(name: "Grupo", description: "D"*50, user_id: nil)
  end

  test "grupo nao aceita titulo valido tamanho minimo?" do
    assert_not @group3.valid?
  end

  test "grupo nao aceita titulo valido tamanho máximo?" do
    assert_not @group.valid?
  end

  test "grupo nao aceita descricao tamanho maximo" do
    assert_not @group4.valid?
  end

  test "aceita grupo valido" do
    assert @group2.valid?
  end

  test "nao aceita grupo sem usuário" do
    assert_not @group5.valid?
  end
end
