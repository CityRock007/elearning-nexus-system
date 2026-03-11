-- Courses Table
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `instructor_name` varchar(100),
  `thumbnail_url` varchar(255),
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Lessons Table (Linked to Courses)
CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_url` varchar(255),
  `content_text` longtext,
  `order_index` int(11) DEFAULT 0,
  FOREIGN KEY (`course_id`) REFERENCES courses(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Progress Tracking
CREATE TABLE IF NOT EXISTS `user_progress` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `is_completed` boolean DEFAULT false,
  `completed_at` timestamp NULL,
  FOREIGN KEY (`lesson_id`) REFERENCES lessons(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
