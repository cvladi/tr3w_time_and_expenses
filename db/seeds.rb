User.delete_all
User.create(:login => 'admin',
            :email => 'admin@tr3w.com',
            :password => '123', :password_confirmation => '123'
            :authorized_approver => true)

Client.delete_all      
client = Client.create(:name => 'Taigan', :code => 'TAIGAN')

BillingCode.delete_all
client.billing_codes.create(:code => 'MTG', :description => 'Meetings')
client.billing_codes.create(:code => 'DEV', :description => 'Development')