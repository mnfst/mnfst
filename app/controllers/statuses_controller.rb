class StatusesController < ApplicationController
  def create
    status = Status.new(status_params)
    if status.save
      status.key.populate_signers!
      response.headers['Location'] = hex_url(status.hexid)
      render text: '', status: 201
    else
      render text: status.errors.full_messages.join(', '), status: 400
    end
  end

  def show
    status = find_status
    respond_to do |format|
      format.html { @status = status }
      format.json { render json: status }
    end
  end

  private

  def status_params
    params.require(:status).permit(:signed_body)
  end

  def find_status
    Status.find_by_hexid(params[:hexid])
  end
end
