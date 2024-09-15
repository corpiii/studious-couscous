-- Language Table
INSERT INTO `language` (`language_id`, `iso_639_1`, `name`, `english_name`) VALUES
(1, 'ko', '한국어/조선말', 'Korean'),
(2, 'fr', 'français', 'French'),
(3, 'en', 'English', 'English'),
(4, 'de', 'Deutsch', 'German'),
(5, 'it', 'Italiano', 'Italian'),
(6, 'es', 'Español', 'Spanish'),
(7, 'ja', '日本語', 'Japanese'),
(8, 'zh', '中文', 'Chinese'),
(9, 'pt', 'Português', 'Portuguese'),
(10, 'ru', 'Русский', 'Russian'),
(11, 'ar', 'العربية', 'Arabic'),
(12, 'hi', 'हिन्दी', 'Hindi'),
(13, 'sv', 'Svenska', 'Swedish'),
(14, 'no', 'Norsk', 'Norwegian'),
(15, 'da', 'Dansk', 'Danish'),
(16, 'nl', 'Nederlands', 'Dutch'),
(17, 'pl', 'Polski', 'Polish'),
(18, 'tr', 'Türkçe', 'Turkish'),
(19, 'he', 'עברית', 'Hebrew'),
(20, 'th', 'ไทย', 'Thai');

-- Country Table
INSERT INTO `country` (`country_id`, `iso_3166_1`, `name`) VALUES
(1, 'KR', '대한민국'),
(2, 'FR', '프랑스'),
(3, 'US', '미국'),
(4, 'DE', '독일'),
(5, 'IT', '이탈리아'),
(6, 'ES', '스페인'),
(7, 'JP', '일본'),
(8, 'CN', '중국'),
(9, 'PT', '포르투갈'),
(10, 'RU', '러시아'),
(11, 'AR', '아랍에미리트'),
(12, 'IN', '인도'),
(13, 'SE', '스웨덴'),
(14, 'NO', '노르웨이'),
(15, 'DK', '덴마크'),
(16, 'NL', '네덜란드'),
(17, 'PL', '폴란드'),
(18, 'TR', '터키'),
(19, 'IL', '이스라엘'),
(20, 'TH', '태국');

-- Collection Table
INSERT INTO `collection` (`collection_id`, `name`, `poster_path`, `backdrop_path`) VALUES
(1, '범죄도시 시리즈', '/kvJqs0vm29U0xJa373wlzHb3FRh.jpg', '/a9kA1fDgG04m4kvV5e34yW6Q8C3.jpg'),
(2, '토이스토리 시리즈', '/w1FkhQwafDKNfhBuHeag9DpsQUr.jpg', '/o3GWspNdp4b3yyY6vAKgfz3eRxP.jpg');

-- Genre Table
INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, '액션'),
(2, '범죄'),
(3, '코미디'),
(4, '드라마'),
(5, '애니메이션'),
(6, '모험'),
(7, '가족'),
(8, '판타지');

-- Production Company Table
INSERT INTO `production_company` (`production_company_id`, `name`, `logo_path`, `country_id`) VALUES
(1, '청년필름', '/9c7yOQfQKwAAUC5Fqcf5AFY8ofm.png', 1),
(2, 'CJ ENM', '/iEQcNZ1p2BgA5co7e3MFTJt4daM.png', 1),
(3, '디즈니', '/8PJF9ErDlAe1lFhqB9XaFQWW8RM.png', 3),
(4, '드림웍스', '/r8QRD0jUyKRHNYdyF8CmjMjj9rZ.png', 3),
(5, 'Barunson E&A', '/aTcclYzGPYdSFP7N5CbGwjOQSpc.png', 1),
(6, 'CJ Entertainment', '/ijEIoOZdT3fBlK3w2YZzC3cAZef.png', 1),
(7, 'Showbox', '/qOGgL9xCzWjLCjXx7rKyh7rMiNx.png', 1),
(8, '20th Century Fox', '/2LCFPa0xALv8PzHJ6JaQ2FRDbV2.png', 3),
(9, 'Warner Bros. Pictures', '/bhNN8A98dW4XfTZdfT7JYFVwmme.png', 3),
(10, 'Paramount Pictures', '/tM0hGHFYFjLDvhqfXJz35vAaeIV.png', 3);

-- Movie Info Table (Sample Movies)
INSERT INTO `movie_info` (`movie_id`, `title`, `original_title`, `overview`, `release_date`, `runtime`, `status`, `budget`, `revenue`, `vote_average`, `vote_count`, `popularity`, `tagline`, `homepage`, `poster_path`, `backdrop_path`, `adult`, `video`, `imdb_id`, `collection_id`, `language_id`) VALUES
-- 한국 영화
(1, '범죄도시', '범죄도시', '강력반 형사 마석도(마동석)는 중국에서 넘어온 범죄자들을 소탕하는 임무를 맡고 있다.', '2017-10-03', 121, 'Released', 10000000, 50000000, 7.5, 2000, 80.0, '모두가 숨죽이는 순간, 당신은 쫓고, 나는 잡는다.', 'https://movie.example.com/theoutlaws', '/kvJqs0vm29U0xJa373wlzHb3FRh.jpg', '/a9kA1fDgG04m4kvV5e34yW6Q8C3.jpg', 0, 0, 'tt7468056', 1, 1),
(2, '범죄도시 2', '범죄도시 2', '마석도 형사는 다시 한번 국제 범죄조직에 맞서 싸운다.', '2022-05-18', 106, 'Released', 12000000, 80000000, 8.1, 3000, 85.5, '이번엔 국제 범죄와의 전쟁이다.', 'https://movie.example.com/theoutlaws2', '/xvBsv8Lau9RLjswRtVx8VBBznOn.jpg', '/a9kA1fDgG04m4kvV5e34yW6Q8C3.jpg', 0, 0, 'tt1234567', 1, 1),
(3, '기생충', '기생충', '서민 가족과 부유한 가족 사이의 긴장감 넘치는 계층 갈등을 다룬 블랙 코미디.', '2019-05-30', 132, 'Released', 11400000, 258500000, 8.6, 8500, 95.0, '아래층과 위층의 경계선.', 'https://movie.example.com/parasite', '/gj28ovk47lOHfwMvHdRZJsbdMOI.jpg', '/xNdfpTiwO0Toh33ShRixHrp92wp.jpg', 0, 0, 'tt6751668', NULL, 1),
(4, '올드보이', '올드보이', '복수를 위해 15년간 감금된 남자의 이야기.', '2003-11-21', 120, 'Released', 3000000, 15000000, 8.4, 7000, 70.5, '한 남자의 복수.', 'https://movie.example.com/oldboy', '/tvwXUCFaQnREU8mC0yMs5OFDBPE.jpg', '/lZXuIkUhe7m7I7wm5gkDwRkaInK.jpg', 0, 0, 'tt0364569', NULL, 1),
(5, '괴물', '괴물', '한강에 나타난 괴생물체와 가족의 생존 이야기.', '2006-07-27', 120, 'Released', 11000000, 89000000, 7.0, 10000, 75.0, '인간과 괴물의 대결.', 'https://movie.example.com/thehost', '/rlLZB0RI47eN3UHOQsHkWEQWdeJ.jpg', '/kNRXdo2Tb6jaDrWy7l5oHapD9F9.jpg', 0, 0, 'tt0468492', NULL, 1),
(6, '친절한 금자씨', '친절한 금자씨', '복수를 꿈꾸는 금자씨의 이야기.', '2005-07-29', 112, 'Released', 4000000, 20000000, 7.6, 6000, 68.4, '여인의 복수.', 'https://movie.example.com/ladyvengeance', '/gHfGV2tE9A0xBbcADoMwnTyCdtJ.jpg', '/cVoetHnIMIM7ICsZMPA4rknmpcO.jpg', 0, 0, 'tt0451094', NULL, 1),
(7, '부산행', '부산행', '좀비 대재앙 속 부산으로 향하는 열차의 이야기.', '2016-07-20', 118, 'Released', 8500000, 93000000, 7.5, 12000, 85.7, '모두가 달리는 열차.', 'https://movie.example.com/traintobusan', '/aNE8I4m6zxQ8yMXArzF8DgyNzzg.jpg', '/c6a3ejyTFy35XfbakIkMxQ58vBO.jpg', 0, 0, 'tt5700672', NULL, 1),
(8, '도둑들', '도둑들', '최고의 도둑들이 모여 한탕을 꿈꾸는 이야기.', '2012-07-25', 135, 'Released', 14000000, 85000000, 6.9, 5000, 60.0, '절도계의 레전드들.', 'https://movie.example.com/thethieves', '/xAPuqUQJji2jXcOcNLLlcjyM0d7.jpg', '/tChl9fvnQnnWgZrM5zUqloX0tiC.jpg', 0, 0, 'tt2330866', NULL, 1),
(9, '암살', '암살', '일제강점기 시대 독립 운동가들의 비밀 임무.', '2015-07-22', 140, 'Released', 16000000, 89000000, 7.3, 4000, 75.5, '역사의 비밀 작전.', 'https://movie.example.com/assassination', '/2ZRpaFXMdUPXFiDl0wENiPY5zRR.jpg', '/t3rhMvDMEHkSyVSsbMJ11y0gnIu.jpg', 0, 0, 'tt4162186', NULL, 1),
(10, '신과함께: 죄와 벌', '신과함께: 죄와 벌', '죽음 후에 펼쳐지는 사후 세계의 재판 이야기.', '2017-12-20', 139, 'Released', 20000000, 120000000, 7.5, 8000, 78.0, '사후의 심판.', 'https://movie.example.com/alongwiththegods', '/yW6kAZCbMY3jQzxFD8KovYTyREi.jpg', '/eIrIkOAKdpIxfm3Re3ZRgnm9gri.jpg', 0, 0, 'tt7160070', NULL, 1),
(11, '타짜', '타짜', '도박꾼들의 세계와 배신.', '2006-09-28', 139, 'Released', 4500000, 25000000, 7.3, 9000, 82.5, '도박과 배신의 게임.', 'https://movie.example.com/tazza', '/gKlRJez7A7BbM6A2hHPmQHRYo3A.jpg', '/nVVxsdZzIkLsImyY4pmM1YvB4Uw.jpg', 0, 0, 'tt0968761', NULL, 1),
(12, '추격자', '추격자', '전직 형사가 살인자를 추격하는 이야기.', '2008-02-14', 125, 'Released', 3200000, 30000000, 7.8, 6500, 68.3, '추격전의 시작.', 'https://movie.example.com/thechaser', '/2xyXgbHgNRcHr5ar9wvTB7G4C2b.jpg', '/s3d6ENlQTlWx4BkhJhCcxyupqxM.jpg', 0, 0, 'tt1190536', NULL, 1),
(13, '밀정', '밀정', '일제강점기 비밀 경찰과 독립 운동가의 싸움.', '2016-09-07', 140, 'Released', 8000000, 55000000, 7.2, 5000, 74.2, '어둠 속의 대결.', 'https://movie.example.com/ageofshadows', '/hJu6DU0A0ZQtL5I0NFRqjOj8uo7.jpg', '/f1XngtBhr7X9zTSOPlllf2tt0SP.jpg', 0, 0, 'tt4914580', NULL, 1),
(14, '변호인', '변호인', '노무현 변호사의 실화를 바탕으로 한 법정 드라마.', '2013-12-18', 127, 'Released', 4000000, 60000000, 7.9, 4000, 81.3, '정의의 목소리.', 'https://movie.example.com/theattorney', '/ftkS0hxXUt9Q2MYoM8kD7z7IEcP.jpg', '/eWiZk0ElcHd1oT2XYgRJfHbaR1d.jpg', 0, 0, 'tt3404098', NULL, 1),
(15, '명량', '명량', '이순신 장군의 전투 이야기.', '2014-07-30', 126, 'Released', 13000000, 132000000, 7.0, 3000, 79.0, '용맹한 전투.', 'https://movie.example.com/theadmiral', '/wpTuH4cZ0p2a7YfhGBlSDsFvTHG.jpg', '/mQhHpSzV5cU5bm1Kp8uF4P5F7zA.jpg', 0, 0, 'tt4200002', NULL, 1),
(16, '7번방의 선물', '7번방의 선물', '한 지적 장애인 아버지와 그의 딸의 감동적인 이야기.', '2013-01-23', 127, 'Released', 3000000, 80000000, 8.0, 4500, 87.6, '아버지의 사랑.', 'https://movie.example.com/cell7', '/s9DqkHyCpbS6hVEt3xV5CNC6mMU.jpg', '/pMph6itEN1vVqGh4xzomgMCtM5T.jpg', 0, 0, 'tt2659414', NULL, 1),
(17, '국제시장', '국제시장', '한국 현대사를 배경으로 한 가족 이야기.', '2014-12-17', 126, 'Released', 10000000, 110000000, 7.5, 3500, 74.9, '역사를 거슬러.', 'https://movie.example.com/odetomyfather', '/nLbsfNs4O9MpsK7z7DlfJys3YXy.jpg', '/qY1VbffkJth4Ow5wJXrFcVKr0V3.jpg', 0, 0, 'tt4769944', NULL, 1),
(18, '곡성','곡성', '작은 마을에서 일어나는 이상한 사건.', '2016-05-12', 156, 'Released', 6000000, 51000000, 7.6, 5000, 80.2, '불길한 사건의 시작.', 'https://movie.example.com/thewailing', '/5HVkBFJnAox3cDFkIbvAmHbCMZ1.jpg', '/lB2kvxJDiPtYYIEqwQymbq1ppro.jpg', 0, 0, 'tt5215952', NULL, 1),
(19, '마녀', '마녀', '초능력을 가진 소녀의 이야기.', '2018-06-27', 125, 'Released', 5500000, 25000000, 7.3, 4000, 78.6, '강력한 초능력의 등장.', 'https://movie.example.com/thewitch', '/jIfBjg3w5Gjf1IZ8Yb1D2Ip5H9e.jpg', '/pZbM4E4MYkRLHykZ1pSiuyx68x3.jpg', 0, 0, 'tt8575388', NULL, 1),
(20, '해바라기','해바라기', '한 남자의 감동적인 이야기.', '2006-11-23', 116, 'Released', 3000000, 12000000, 7.1, 3000, 70.0, '아픔 속에 핀 희망.', 'https://movie.example.com/sunflower', '/5FyCEttDzmZRmGpZjJt2qlufxL9.jpg', '/gHfGV2tE9A0xBbcADoMwnTyCdtJ.jpg', 0, 0, 'tt0913477', NULL, 1),

-- 해외 영화
(21, '토이 스토리', 'Toy Story', '장난감들이 살아 움직이는 마법의 세계!', '1995-11-22', 81, 'Released', 30000000, 373554033, 8.3, 8500, 90.5, '장난감의 모험이 시작된다!', 'https://movie.example.com/toystory', '/w1FkhQwafDKNfhBuHeag9DpsQUr.jpg', '/o3GWspNdp4b3yyY6vAKgfz3eRxP.jpg', 0, 0, 'tt0114709', 2, 3),
(22, '토이 스토리 2', 'Toy Story 2', '우디와 버즈가 다시 모험을 떠나다!', '1999-11-24', 92, 'Released', 90000000, 497366869, 7.9, 7400, 75.3, '장난감의 끝없는 모험!', 'https://movie.example.com/toystory2', '/2J3O4alAl93Qn8uJ99RYPW2DCbV.jpg', '/l9btwe3GWzxwBci1KPLfKjyF2xL.jpg', 0, 0, 'tt0120363', 2, 3),
(23, '인셉션', 'Inception', '꿈 속의 꿈에서 벌어지는 스릴 넘치는 이야기가 펼쳐진다.', '2010-07-16', 148, 'Released', 160000000, 829895144, 8.8, 21000, 92.3, '꿈을 훔치는 자들.', 'https://movie.example.com/inception', '/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg', '/s3TBrRGB1iav7gFOCNx3H31MoES.jpg', 0, 0, 'tt1375666', NULL, 3),
(24, '매드 맥스: 분노의 도로', 'Mad Max: Fury Road', '포스트 아포칼립스 세계에서 생존을 위해 싸우는 이야기.', '2015-05-15', 120, 'Released', 150000000, 374736354, 8.1, 18000, 89.6, '끝없는 도로의 전투.', 'https://movie.example.com/madmax', '/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg', '/kb6sDdwv5oUwbMWxRVCQZ8R0uG5.jpg', 0, 0, 'tt1392190', NULL, 3),
(25, '다크 나이트', 'The Dark Knight', '배트맨이 조커와의 싸움을 통해 정의를 지키는 이야기.', '2008-07-18', 152, 'Released', 185000000, 1004558444, 9.0, 24000, 96.2, '혼돈의 사나이.', 'https://movie.example.com/thedarkknight', '/qJ2tW6WMUDux911r6m7haRef0WH.jpg', '/hqkIcbrOHL86UncnHIsHVcVmzue.jpg', 0, 0, 'tt0468569', NULL, 3),
(26, '타이타닉', 'Titanic', '비극적인 배와 그 위에 펼쳐지는 러브 스토리.', '1997-12-19', 195, 'Released', 200000000, 2187463944, 7.8, 30000, 95.8, '사랑의 운명.', 'https://movie.example.com/titanic', '/6VmFqApQRyZZzmiGOQq2C92jyvH.jpg', '/xiXwIt8BWbzw14uS0UlHjJZHUbF.jpg', 0, 0, 'tt0120338', NULL, 3),
(27, '어벤져스: 엔드게임', 'Avengers: Endgame', '히어로들이 타노스와의 마지막 전투에 나선다.', '2019-04-26', 181, 'Released', 356000000, 2797800564, 8.4, 25000, 94.1, '끝을 맞이할 시간.', 'https://movie.example.com/avengersendgame', '/or06FN3Dka5tukK1e9sl16pB3iy.jpg', '/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg', 0, 0, 'tt4154796', NULL, 3),
(28, '포레스트 검프', 'Forrest Gump', '포레스트 검프의 인생과 사랑 이야기.', '1994-07-06', 142, 'Released', 55000000, 678222284, 8.8, 23000, 93.7, '삶은 초콜릿 상자와 같다.', 'https://movie.example.com/forrestgump', '/h5J4W4veyxMXDMjeNxZI46TsHOb.jpg', '/c2fPA04GtyERmU1mnUk6afJ5tFF.jpg', 0, 0, 'tt0109830', NULL, 3),
(29, '셜록 홈즈', 'Sherlock Holmes', '셜록 홈즈와 왓슨 박사가 사건을 풀어나가는 이야기.', '2009-12-25', 128, 'Released', 90000000, 524028679, 7.6, 8000, 82.0, '모든 비밀이 드러난다.', 'https://movie.example.com/sherlockholmes', '/momjdzuaCDBvndOuA6XuBYOYRZi.jpg', '/i9XzH7Ewr1tdmmA2Lo6fHt3xXe6.jpg', 0, 0, 'tt0988045', NULL, 3),
(30, '글레디에이터', 'Gladiator', '로마의 장군이 노예가 되어 검투사가 되는 이야기.', '2000-05-05', 155, 'Released', 103000000, 457640427, 8.5, 15000, 90.2, '용맹한 검투사.', 'https://movie.example.com/gladiator', '/yAmU44APg1J3ueMvJ9f5xiN9c7s.jpg', '/mdFph2P9k7C6nWw9Zth9j5dIIL.jpg', 0, 0, 'tt0172495', NULL, 3),
(31, '인터스텔라', 'Interstellar', '지구의 미래를 위해 우주 탐사를 떠나는 이야기.', '2014-11-05', 169, 'Released', 165000000, 677471339, 8.6, 22000, 91.3, '우주를 탐험하다.', 'https://movie.example.com/interstellar', '/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg', '/vTn5D4KSj5zSmJ1LA5yOiqYYNPR.jpg', 0, 0, 'tt0816692', NULL, 3),
(32, '라이언 일병 구하기', 'Saving Private Ryan', '세계 대전 중, 한 병사를 구하기 위해 파견된 군인들.', '1998-07-24', 169, 'Released', 70000000, 482349603, 8.6, 14000, 88.0, '한 사람을 구하기 위한 희생.', 'https://movie.example.com/savingprivateryan', '/miDOiZ8gHBO2iU8IJms3GTPdI9i.jpg', '/A4Y4vYlRXo8ajF8atpBksxSlkjM.jpg', 0, 0, 'tt0120815', NULL, 3),
(33, '셜록: 다섯 개의 주의', 'Sherlock: The Abominable Bride', '셜록 홈즈가 19세기 런던으로 돌아온다.', '2016-01-01', 90, 'Released', 0, 0, 8.3, 4500, 71.0, '19세기의 홈즈.', 'https://movie.example.com/sherlockbride', '/hO4AATJKWoH8Hd7FwR3Q3kqrsWl.jpg', '/vHTwRtGFsXsvWh0XgJxSuMmvydF.jpg', 0, 0, 'tt3845232', NULL, 3),
(34, '피아니스트', 'The Pianist', '홀로코스트 시기의 피아니스트의 생존 이야기.', '2002-09-25', 150, 'Released', 35000000, 120072577, 8.5, 6000, 83.7, '음악을 통해 살아남다.', 'https://movie.example.com/thepianist', '/lPDpahV1FhjqyztI4axuEhH8kq6.jpg', '/q7mGSlb5H0X0V5M6MFIPXRU4Qw5.jpg', 0, 0, 'tt0253474', NULL, 3),
(35, '아메리칸 스나이퍼', 'American Sniper', '전설적인 저격수의 이야기.', '2014-12-11', 132, 'Released', 58000000, 547959475, 7.3, 9000, 84.0, '적을 향한 한 발.', 'https://movie.example.com/americansniper', '/gDb1R4uZkI1i8IKaHeT9stJZTx7.jpg', '/z7Hv6Su3SxBPOTL3nBDFjrwbhzG.jpg', 0, 0, 'tt2179136', NULL, 3),
(36, '죠스', 'Jaws', '해변에서 펼쳐지는 공포의 상어 이야기.', '1975-06-20', 124, 'Released', 9000000, 471979000, 8.0, 10000, 79.2, '모든 상어가 무섭다.', 'https://movie.example.com/jaws', '/lXkxUqRbg8P5xzLMh93GFQDiMWD.jpg', '/xlJjOCDLk6Gq4S7hR1XX3LrAdyX.jpg', 0, 0, 'tt0073195', NULL, 3),
(37, '쇼생크 탈출', 'The Shawshank Redemption', '부당하게 감옥에 갇힌 남자의 이야기.', '1994-09-23', 142, 'Released', 25000000, 28341469, 9.3, 24000, 97.6, '희망은 영원하다.', 'https://movie.example.com/shawshank', '/5cIUvCJQ2aNPXRCmXiELmCdq0vD.jpg', '/3hO6DIGRBaJQj2NLEYBMwpcz88D.jpg', 0, 0, 'tt0111161', NULL, 3),
(38, '플래닛 오브 더 에이프스: 진화의 시작', 'Rise of the Planet of the Apes', '유전자 실험으로 인한 인간과 원숭이의 충돌.', '2011-08-05', 105, 'Released', 93000000, 481800873, 7.5, 7000, 77.2, '진화의 시작.', 'https://movie.example.com/planetapes', '/2gjkkiGFkzNytskAfmuA6Y5f1uX.jpg', '/hvObxYXorM6Nny8PRfOyvOsxGTm.jpg', 0, 0, 'tt1318514', NULL, 3),
(39, '라라랜드', 'La La Land', '꿈을 향해 달리는 두 사람의 이야기.', '2016-12-09', 128, 'Released', 30000000, 448514405, 8.0, 19000, 89.5, '꿈의 도시.', 'https://movie.example.com/lalaland', '/ylXkfjMM5mH6W4E35YbK5PyEbWq.jpg', '/G2uXbSHdNqWp6qz1haSEZGjovC.jpg', 0, 0, 'tt3783958', NULL, 3),
(40, '파이트 클럽', 'Fight Club', '현대인의 정체성과 싸움.', '1999-10-15', 139, 'Released', 63000000, 100853753, 8.8, 21000, 94.2, '규칙은 없다.', 'https://movie.example.com/fightclub', '/yE5d3BUhE8hCnkMUJOo1QDoOGNz.jpg', '/vIAmRJ9o5hY5J2wP2kQUdku5jZT.jpg', 0, 0, 'tt0137523', NULL, 3);

-- Movie Genre Table
INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
-- 한국 영화
(1, 2), (1, 6), -- 범죄도시 (범죄, 모험)
(2, 2), (2, 6), -- 범죄도시 2 (범죄, 모험)
(3, 4), (3, 7), -- 기생충 (드라마, 가족)
(4, 4), (4, 2), -- 올드보이 (드라마, 범죄)
(5, 6), (5, 7), -- 괴물 (모험, 가족)
(6, 4), (6, 2), -- 친절한 금자씨 (드라마, 범죄)
(7, 6), (7, 8), -- 부산행 (모험, 판타지)
(8, 2), (8, 6), -- 도둑들 (범죄, 모험)
(9, 2), (9, 4), -- 암살 (범죄, 드라마)
(10, 8), (10, 4), -- 신과함께: 죄와 벌 (판타지, 드라마)
(11, 2), (11, 6), -- 타짜 (범죄, 모험)
(12, 2), (12, 6), -- 추격자 (범죄, 모험)
(13, 2), (13, 4), -- 밀정 (범죄, 드라마)
(14, 4), (14, 7), -- 변호인 (드라마, 가족)
(15, 6), (15, 8), -- 명량 (모험, 판타지)
(16, 7), (16, 4), -- 7번방의 선물 (가족, 드라마)
(17, 7), (17, 4), -- 국제시장 (가족, 드라마)
(18, 4), (18, 6), -- 곡성 (드라마, 모험)
(19, 8), (19, 4), -- 마녀 (판타지, 드라마)
(20, 4), (20, 7), -- 해바라기 (드라마, 가족)

-- 해외 영화
(21, 5), (21, 7), -- 토이 스토리 (애니메이션, 가족)
(22, 5), (22, 7), -- 토이 스토리 2 (애니메이션, 가족)
(23, 6), (23, 4), -- 인셉션 (모험, 드라마)
(24, 6), (24, 8), -- 매드 맥스: 분노의 도로 (모험, 판타지)
(25, 6), (25, 2), -- 다크 나이트 (모험, 범죄)
(26, 6), (26, 4), -- 타이타닉 (모험, 드라마)
(27, 6), (27, 8), -- 어벤져스: 엔드게임 (모험, 판타지)
(28, 4), (28, 7), -- 포레스트 검프 (드라마, 가족)
(29, 6), (29, 2), -- 셜록 홈즈 (모험, 범죄)
(30, 6), (30, 8), -- 글레디에이터 (모험, 판타지)
(31, 6), (31, 8), -- 인터스텔라 (모험, 판타지)
(32, 6), (32, 4), -- 라이언 일병 구하기 (모험, 드라마)
(33, 6), (33, 2), -- 셜록: 다섯 개의 주의 (모험, 범죄)
(34, 4), (34, 8), -- 피아니스트 (드라마, 판타지)
(35, 6), (35, 4), -- 아메리칸 스나이퍼 (모험, 드라마)
(36, 6), (36, 4), -- 죠스 (모험, 드라마)
(37, 4), (37, 6), -- 쇼생크 탈출 (드라마, 모험)
(38, 8), (38, 6), -- 플래닛 오브 더 에이프스: 진화의 시작 (판타지, 모험)
(39, 4), (39, 7), -- 라라랜드 (드라마, 가족)
(40, 4), (40, 2); -- 파이트 클럽 (드라마, 범죄)

-- Country Origin Data
INSERT INTO `origin_country` (`movie_id`, `country_id`) VALUES
-- 한국 영화
(1, 1), -- 범죄도시 (대한민국)
(2, 1), -- 범죄도시 2 (대한민국)
(3, 1), -- 기생충 (대한민국)
(4, 1), -- 올드보이 (대한민국)
(5, 1), -- 괴물 (대한민국)
(6, 1), -- 친절한 금자씨 (대한민국)
(7, 1), -- 부산행 (대한민국)
(8, 1), -- 도둑들 (대한민국)
(9, 1), -- 암살 (대한민국)
(10, 1), -- 신과함께: 죄와 벌 (대한민국)
(11, 1), -- 타짜 (대한민국)
(12, 1), -- 추격자 (대한민국)
(13, 1), -- 밀정 (대한민국)
(14, 1), -- 변호인 (대한민국)
(15, 1), -- 명량 (대한민국)
(16, 1), -- 7번방의 선물 (대한민국)
(17, 1), -- 국제시장 (대한민국)
(18, 1), -- 곡성 (대한민국)
(19, 1), -- 마녀 (대한민국)
(20, 1), -- 해바라기 (대한민국)

-- 해외 영화
(21, 3), -- 토이 스토리 (미국)
(22, 3), -- 토이 스토리 2 (미국)
(23, 3), -- 인셉션 (미국)
(24, 3), -- 매드 맥스: 분노의 도로 (미국)
(25, 3), -- 다크 나이트 (미국)
(26, 3), -- 타이타닉 (미국)
(27, 3), -- 어벤져스: 엔드게임 (미국)
(28, 3), -- 포레스트 검프 (미국)
(29, 3), -- 셜록 홈즈 (미국)
(30, 3), -- 글레디에이터 (미국)
(31, 3), -- 인터스텔라 (미국)
(32, 3), -- 라이언 일병 구하기 (미국)
(33, 3), -- 셜록: 다섯 개의 주의 (미국)
(34, 3), -- 피아니스트 (미국)
(35, 3), -- 아메리칸 스나이퍼 (미국)
(36, 3), -- 죠스 (미국)
(37, 3), -- 쇼생크 탈출 (미국)
(38, 3), -- 플래닛 오브 더 에이프스: 진화의 시작 (미국)
(39, 3), -- 라라랜드 (미국)
(40, 3); -- 파이트 클럽 (미국)

-- Production Country Data
INSERT INTO `production_country` (`movie_id`, `country_id`) VALUES
(1, 1), -- 청년필름 (대한민국)
(2, 1), -- CJ ENM (대한민국)
(3, 3), -- 디즈니 (미국)
(4, 3), -- 드림웍스 (미국)
(5, 1), -- Barunson E&A (대한민국)
(6, 1), -- CJ Entertainment (대한민국)
(7, 1), -- Showbox (대한민국)
(8, 3), -- 20th Century Fox (미국)
(9, 3), -- Warner Bros. Pictures (미국)
(10, 3); -- Paramount Pictures (미국)

-- Movie Language Data
INSERT INTO `movie_language` (`movie_id`, `language_id`) VALUES
-- 한국 영화
(1, 1), -- 범죄도시 (한국어)
(2, 1), -- 범죄도시 2 (한국어)
(3, 1), -- 기생충 (한국어)
(4, 1), -- 올드보이 (한국어)
(5, 1), -- 괴물 (한국어)
(6, 1), -- 친절한 금자씨 (한국어)
(7, 1), -- 부산행 (한국어)
(8, 1), -- 도둑들 (한국어)
(9, 1), -- 암살 (한국어)
(10, 1), -- 신과함께: 죄와 벌 (한국어)
(11, 1), -- 타짜 (한국어)
(12, 1), -- 추격자 (한국어)
(13, 1), -- 밀정 (한국어)
(14, 1), -- 변호인 (한국어)
(15, 1), -- 명량 (한국어)
(16, 1), -- 7번방의 선물 (한국어)
(17, 1), -- 국제시장 (한국어)
(18, 1), -- 곡성 (한국어)
(19, 1), -- 마녀 (한국어)
(20, 1), -- 해바라기 (한국어)

-- 해외 영화
(21, 3), (21, 2), -- 토이 스토리 (영어, 프랑스어)
(22, 3), -- 토이 스토리 2 (영어)
(23, 3), (23, 6), -- 인셉션 (영어, 스페인어)
(24, 3), -- 매드 맥스: 분노의 도로 (영어)
(25, 3), (25, 4), -- 다크 나이트 (영어, 독일어)
(26, 3), (26, 5), -- 타이타닉 (영어, 이탈리아어)
(27, 3), -- 어벤져스: 엔드게임 (영어)
(28, 3), -- 포레스트 검프 (영어)
(29, 3), (29, 7), -- 셜록 홈즈 (영어, 일본어)
(30, 3), -- 글레디에이터 (영어)
(31, 3), -- 인터스텔라 (영어)
(32, 3), (32, 8), -- 라이언 일병 구하기 (영어, 중국어)
(33, 3), -- 셜록: 다섯 개의 주의 (영어)
(34, 3), (34, 4), -- 피아니스트 (영어, 독일어)
(35, 3), -- 아메리칸 스나이퍼 (영어)
(36, 3), -- 죠스 (영어)
(37, 3), (37, 9), -- 쇼생크 탈출 (영어, 포르투갈어)
(38, 3), -- 플래닛 오브 더 에이프스: 진화의 시작 (영어)
(39, 3), (39, 10), -- 라라랜드 (영어, 러시아어)
(40, 3); -- 파이트 클럽 (영어);

-- Movie ProductionCompany Data
INSERT INTO `movie_production_company` (`movie_id`, `production_company_id`) VALUES
-- 한국 영화
(1, 1), (1, 2), -- 범죄도시 (청년필름, CJ ENM)
(2, 1), (2, 6), -- 범죄도시 2 (청년필름, CJ Entertainment)
(3, 5), (3, 2), -- 기생충 (Barunson E&A, CJ ENM)
(4, 1), (4, 7), -- 올드보이 (청년필름, Showbox)
(5, 6), (5, 7), -- 괴물 (CJ Entertainment, Showbox)
(6, 2), (6, 5), -- 친절한 금자씨 (CJ ENM, Barunson E&A)
(7, 7), (7, 1), -- 부산행 (Showbox, 청년필름)
(8, 2), (8, 6), -- 도둑들 (CJ ENM, CJ Entertainment)
(9, 6), (9, 5), -- 암살 (CJ Entertainment, Barunson E&A)
(10, 2), (10, 1), -- 신과함께: 죄와 벌 (CJ ENM, 청년필름)
(11, 1), (11, 7), -- 타짜 (청년필름, Showbox)
(12, 6), (12, 7), -- 추격자 (CJ Entertainment, Showbox)
(13, 5), (13, 6), -- 밀정 (Barunson E&A, CJ Entertainment)
(14, 2), (14, 7), -- 변호인 (CJ ENM, Showbox)
(15, 7), (15, 6), -- 명량 (Showbox, CJ Entertainment)
(16, 2), (16, 6), -- 7번방의 선물 (CJ ENM, CJ Entertainment)
(17, 7), (17, 2), -- 국제시장 (Showbox, CJ ENM)
(18, 6), (18, 1), -- 곡성 (CJ Entertainment, 청년필름)
(19, 5), (19, 2), -- 마녀 (Barunson E&A, CJ ENM)
(20, 7), (20, 6), -- 해바라기 (Showbox, CJ Entertainment)

-- 해외 영화
(21, 3), (21, 9), -- 토이 스토리 (디즈니, Warner Bros. Pictures)
(22, 3), (22, 8), -- 토이 스토리 2 (디즈니, 20th Century Fox)
(23, 9), (23, 8), -- 인셉션 (Warner Bros. Pictures, 20th Century Fox)
(24, 8), (24, 3), -- 매드 맥스: 분노의 도로 (20th Century Fox, 디즈니)
(25, 9), (25, 10), -- 다크 나이트 (Warner Bros. Pictures, Paramount Pictures)
(26, 10), (26, 3), -- 타이타닉 (Paramount Pictures, 디즈니)
(27, 3), (27, 9), -- 어벤져스: 엔드게임 (디즈니, Warner Bros. Pictures)
(28, 8), (28, 10), -- 포레스트 검프 (20th Century Fox, Paramount Pictures)
(29, 9), (29, 3), -- 셜록 홈즈 (Warner Bros. Pictures, 디즈니)
(30, 10), (30, 8), -- 글레디에이터 (Paramount Pictures, 20th Century Fox)
(31, 9), (31, 3), -- 인터스텔라 (Warner Bros. Pictures, 디즈니)
(32, 8), (32, 10), -- 라이언 일병 구하기 (20th Century Fox, Paramount Pictures)
(33, 9), (33, 3), -- 셜록: 다섯 개의 주의 (Warner Bros. Pictures, 디즈니)
(34, 10), (34, 8), -- 피아니스트 (Paramount Pictures, 20th Century Fox)
(35, 8), (35, 9), -- 아메리칸 스나이퍼 (20th Century Fox, Warner Bros. Pictures)
(36, 3), (36, 10), -- 죠스 (디즈니, Paramount Pictures)
(37, 9), (37, 3), -- 쇼생크 탈출 (Warner Bros. Pictures, 디즈니)
(38, 8), (38, 10), -- 플래닛 오브 더 에이프스: 진화의 시작 (20th Century Fox, Paramount Pictures)
(39, 3), (39, 9), -- 라라랜드 (디즈니, Warner Bros. Pictures)
(40, 9), (40, 3); -- 파이트 클럽 (Warner Bros. Pictures, 디즈니)