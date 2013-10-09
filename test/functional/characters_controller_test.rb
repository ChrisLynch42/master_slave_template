require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { background: @character.background, base_charisma: @character.base_charisma, base_constitution: @character.base_constitution, base_dexterity: @character.base_dexterity, base_intelligence: @character.base_intelligence, base_strength: @character.base_strength, base_wisdom: @character.base_wisdom, charisma: @character.charisma, constitution: @character.constitution, description: @character.description, dexterity: @character.dexterity, eyes: @character.eyes, hair: @character.hair, height: @character.height, hit_dice: @character.hit_dice, hit_points: @character.hit_points, initiative: @character.initiative, intelligence: @character.intelligence, klass: @character.klass, klass_charisma: @character.klass_charisma, klass_constitution: @character.klass_constitution, klass_dexterity: @character.klass_dexterity, klass_intelligence: @character.klass_intelligence, klass_strength: @character.klass_strength, klass_wisdom: @character.klass_wisdom, level: @character.level, name: @character.name, race: @character.race, race_charisma: @character.race_charisma, race_constitution: @character.race_constitution, race_dexterity: @character.race_dexterity, race_intelligence: @character.race_intelligence, race_strength: @character.race_strength, race_wisdom: @character.race_wisdom, size: @character.size, specialty: @character.specialty, speed: @character.speed, strength: @character.strength, vision: @character.vision, weight: @character.weight, wisdom: @character.wisdom }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    put :update, id: @character, character: { background: @character.background, base_charisma: @character.base_charisma, base_constitution: @character.base_constitution, base_dexterity: @character.base_dexterity, base_intelligence: @character.base_intelligence, base_strength: @character.base_strength, base_wisdom: @character.base_wisdom, charisma: @character.charisma, constitution: @character.constitution, description: @character.description, dexterity: @character.dexterity, eyes: @character.eyes, hair: @character.hair, height: @character.height, hit_dice: @character.hit_dice, hit_points: @character.hit_points, initiative: @character.initiative, intelligence: @character.intelligence, klass: @character.klass, klass_charisma: @character.klass_charisma, klass_constitution: @character.klass_constitution, klass_dexterity: @character.klass_dexterity, klass_intelligence: @character.klass_intelligence, klass_strength: @character.klass_strength, klass_wisdom: @character.klass_wisdom, level: @character.level, name: @character.name, race: @character.race, race_charisma: @character.race_charisma, race_constitution: @character.race_constitution, race_dexterity: @character.race_dexterity, race_intelligence: @character.race_intelligence, race_strength: @character.race_strength, race_wisdom: @character.race_wisdom, size: @character.size, specialty: @character.specialty, speed: @character.speed, strength: @character.strength, vision: @character.vision, weight: @character.weight, wisdom: @character.wisdom }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
