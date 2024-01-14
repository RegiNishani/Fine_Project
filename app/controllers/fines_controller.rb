class FinesController < InheritedResources::Base

  private

    def fine_params
      params.require(:fine).permit(:reason, :place, :time_of_issue, :amount, :payment_status, :penalty_amount)
    end

end
