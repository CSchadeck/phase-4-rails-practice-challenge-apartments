class LeaseController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 
    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created
    end

    def update
       lease = find_lease
        render json: leased.update(lease_params), status: :accepted
    end

    def destroy
        lease = find_lease
        .destroy
        head :no_content
    end


    private 

    def find_lease
        Lease.find(params[])

    def tenant_params
        params.permit(:name, :age)

    end

        def render_unprocessable_entity_response 
         render json:{errors: invalid.record.errors.full_messages}, status: :unproccessable_entity
        end

        def render_not_found_response
        render json: {errors: "can't find it"} status: :not_found
        end
end   



end
