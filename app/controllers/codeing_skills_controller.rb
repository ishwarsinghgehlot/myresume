class CodeingSkillsController < ApplicationController
  before_action :set_codeing_skill, only: [:show, :edit, :update, :destroy]

  # GET /codeing_skills
  # GET /codeing_skills.json
  def index
    @codeing_skills = CodeingSkill.all
  end

  # GET /codeing_skills/1
  # GET /codeing_skills/1.json
  def show
  end

  # GET /codeing_skills/new
  def new
    @codeing_skill = CodeingSkill.new
  end

  # GET /codeing_skills/1/edit
  def edit
  end

  # POST /codeing_skills
  # POST /codeing_skills.json
  def create
    @codeing_skill = CodeingSkill.new(codeing_skill_params)

    respond_to do |format|
      if @codeing_skill.save
        format.html { redirect_to @codeing_skill, notice: 'Codeing skill was successfully created.' }
        format.json { render :show, status: :created, location: @codeing_skill }
      else
        format.html { render :new }
        format.json { render json: @codeing_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codeing_skills/1
  # PATCH/PUT /codeing_skills/1.json
  def update
    respond_to do |format|
      if @codeing_skill.update(codeing_skill_params)
        format.html { redirect_to @codeing_skill, notice: 'Codeing skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @codeing_skill }
      else
        format.html { render :edit }
        format.json { render json: @codeing_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codeing_skills/1
  # DELETE /codeing_skills/1.json
  def destroy
    @codeing_skill.destroy
    respond_to do |format|
      format.html { redirect_to codeing_skills_url, notice: 'Codeing skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_codeing_skill
      @codeing_skill = CodeingSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codeing_skill_params
      params.require(:codeing_skill).permit(:language, :progress)
    end
end
