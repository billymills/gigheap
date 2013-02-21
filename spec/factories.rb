FactoryGirl.define do
	factory :user do
		name	"Billy Mills"
		email	"billy@billy.com"
		password "foobar"
		password_confirmation "foobar"
	end
end
