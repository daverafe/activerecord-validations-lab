class TitleValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title && (record.title.include?("Won't Believe") || record.title.match(/Top \d+/) || record.title.include?("Secret") || record.title.include?("Guess"))
            record.errors[:title] << "Not Clickbait"
        end
    end
end