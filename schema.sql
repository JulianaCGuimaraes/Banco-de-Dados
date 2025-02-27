create schema video_jc;

use video_jc;

CREATE TABLE if not exists owner_details (  
    content_id varchar(24) NOT NULL,
    timeLinked DATETIME, 
    PRIMARY KEY(content_id)
);

CREATE TABLE if not exists Channell (
    channellid VARCHAR(24) NOT NULL,
    channelTitle VARCHAR(120) NOT NULL, 
    description VARCHAR(500),
    kind varchar(30),
    content_id varchar(24) NOT NULL,
    link VARCHAR(255), 
    publishedAt VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    PRIMARY KEY (channellid), 
    FOREIGN KEY (content_id) references owner_details(content_id)
);

CREATE TABLE if not exists video (  
    videoId VARCHAR(14) NOT NULL,
    channellid VARCHAR(24) NOT NULL,
    link VARCHAR(255),
    kind varchar(30),
    title VARCHAR(255),
    publishedAt DATETIME, 
    description VARCHAR(500),
    PRIMARY KEY(videoId),
    FOREIGN KEY(channellid) references channell(channellid)
);

CREATE TABLE if not exists video_statistics (
    viewCount int(255), 
    likeCount int(255),
    dislikeCount int(255),  
    favoriteCount int(255), 
    commentCount int(255),
    videoId VARCHAR(14) NOT NULL,
    FOREIGN KEY(videoId) references video(videoId)
);

CREATE TABLE if not exists channel_statistics (
    viewCount int(255),
    channellid VARCHAR(24) NOT NULL,
    subscriberCount int(255),
    videoCount int(255),
    FOREIGN KEY(channellid) references channell(channellid)
);