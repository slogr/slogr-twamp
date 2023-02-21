CREATE DATABASE slogr;
use slogr;

CREATE TABLE reports (
    test_name varchar(255),
    avgdownlinktime varchar(255),
    avgjitter varchar(255),
    avgrtt varchar(255),
    avguplink varchar(255),
    maxdownlink varchar(255),
    maxjitter varchar(255),
    maxrtt varchar(255),
    maxuplink varchar(255),
    mindownlink varchar(255),
    minjitter varchar(255),
    minrtt varchar(255),
    minuplinktime varchar(255),
    receivedpackets varchar(255),
    stddevdownlinktime varchar(255),
    stddevrtt varchar(255),
    stddevuplinktime varchar(255),
    testdscp varchar(255),
    testpacketsize varchar(255),
    timestamp varchar(255),
    totalpackets varchar(255),
    twampclientip varchar(255),
    twampserverip varchar(255)
);

CREATE TABLE sessions (
    id int NOT NULL AUTO_INCREMENT,
    sender varchar(255),
    reciever varchar(255),
    port varchar(255),
    n_packets varchar(255),
    intervel varchar(255),
    w_time varchar(255),
    dscp varchar(255),
    p_size varchar(255),
    t_name varchar(255),
    schedule varchar(255),
    c_ip varchar(225),
    last_executed varchar(225), 
    count varchar(255),
    PRIMARY KEY (id)
);