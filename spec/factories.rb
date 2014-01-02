FactoryGirl.define do
	factory :user do
		name		"Jared Rainwater"
		email		"jared@example.com"
		password	"foobar"
		password_confirmation	"foobar"
	end
end