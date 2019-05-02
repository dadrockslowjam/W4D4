# == Schema Information
#
# Table name: tracks
#
#  id       :bigint           not null, primary key
#  title    :string           not null
#  ord      :integer          not null
#  lyrics   :text
#  bonus    :boolean          default(FALSE)
#  album_id :integer          not null
#

class Track < ApplicationRecord
    
end
