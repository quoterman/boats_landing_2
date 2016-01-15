class Web::Admin::TextBlocksController < Web::Admin::ApplicationController
  before_action :set_text_block, only: [:show, :edit, :update, :destroy]
  layout "web/admin/admin_application"
  # GET /text_blocks
  # GET /text_blocks.json
  def index
    @text_blocks = TextBlock.all
  end

  # GET /text_blocks/1
  # GET /text_blocks/1.json
  def show
  end

  # GET /text_blocks/new
  def new
    @text_block = TextBlock.new
  end

  # GET /text_blocks/1/edit
  def edit
  end

  # POST /text_blocks
  # POST /text_blocks.json
  def create
    @text_block = TextBlock.new(text_block_params)

    respond_to do |format|
      if @text_block.save
        format.html { redirect_to [:admin, @text_block], notice: 'Text block was successfully created.' }
        format.json { render :show, status: :created, location: @text_block }
      else
        format.html { render :new }
        format.json { render json: @text_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_blocks/1
  # PATCH/PUT /text_blocks/1.json
  def update
    respond_to do |format|
      if @text_block.update(text_block_params)
        format.html { redirect_to @text_block, notice: 'Text block was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_block }
      else
        format.html { render :edit }
        format.json { render json: @text_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_blocks/1
  # DELETE /text_blocks/1.json
  def destroy
    @text_block.destroy
    respond_to do |format|
      format.html { redirect_to [:admin, @text_block], notice: 'Text block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_block
      @text_block = TextBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_block_params
      params.require(:text_block).permit(:text, :visible)
    end
end
