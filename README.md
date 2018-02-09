# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
  ## テーブル
    - universities
      - id, name
    - players
      - id, first_name, last_name, grade, university_id
    - judges
      - id, name, university_id, password, admin_user
    - competitions
      - id, name, date
    - tables
      - id, judge_id, table_rank, degree_of_progress, table_statement_count, table_point
    - results
      - id, player_id, ranking, feeling_ranking, opinion_presenter, q, c1, c2, s1, s2, s3, a1, a2, a3, attitude_point, statement_count, point, occupancy_rate
    - playerAttendances
      - id, player_id, competition_id, attendance
    - judgeAttendances
      - id, judge_id, competition_id, attendance

# 出力したいもの
  - データベース
  - 集計結果
  - ディビジョン

# 取り込みたいもの
  - データベース
  - 出欠情報
  - ディクテ

# 編集したいもの
  - データベース
  - 出欠情報
  - ディクテ

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
