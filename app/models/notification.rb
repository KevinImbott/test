class Notification < ApplicationRecord
    enum status: {in_process: 0, sent: 1, received: 2}
end
