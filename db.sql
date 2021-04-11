SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE posts (
  id int(11) NOT NULL,
  title varchar(250) NOT NULL,
  body text NOT NULL,
  publishDate date NOT NULL,
  userId int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE users (
  'id' int(11) NOT NULL,
  'username' varchar(250) NOT NULL,
  'email' varchar(250) NOT NULL,
  'password' varchar(250) NOT NULL,
  'fullname' varchar(250) NOT NULL,
  'dob' date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE 'posts'
  ADD PRIMARY KEY ('id'),
  ADD KEY 'userId' ('userId');

ALTER TABLE 'users'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'username' ('username','email');

ALTER TABLE 'posts'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE 'users'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE 'posts'
  ADD CONSTRAINT 'posts_ibfk_1' FOREIGN KEY ('userId') REFERENCES 'users' ('id');
