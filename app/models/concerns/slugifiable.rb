module Slugifiable
    module InstanceMethods
        def slug
            firstname = self.name.split(" ")[0].downcase
            lastname = self.name.split(" ")[1].downcase
            slug = firstname + "-" + lastname
         end
         
    end

    module ClassMethods
        def find_by_slug(slug)
            self.detect{|a| a.name == slug}
            
          
        end
    end
end