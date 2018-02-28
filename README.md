# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
  ## テーブル
    - players
      - id, first_name, last_name,　name, university_id, grade
        - player_competition
          - id, player_id, competition_id, attendance
    - judges
      - id, first_name, last_name, name, university_id, role_id, password
        - judge_competition
          - id, judge_id, competition_id, attendance
    - competitions
      - id, term_id, stage_id, table_estimation_id, date
    - results
      - id, competition_id, rank_id, table_number, degree_of_progress, table_point
        - resultDetail
          - id, result_id, player_id, judge_id, table_role, ranking, feeling_ranking, q, c1, c2, s1, s2, s3, a1, a2, a3, attitude_point, statement_count, point, occupancy_rate

        - universities
          - id, name
        - role
          - id, name
        - rank
          - id, layer_id
        - layer
          - id, name
        - term
          - id, name
        - stage
          - id, name
        - table_estimation
          - id, number
        - attendance
          - id, name
        - table_role


## 出力したいもの
  - データベース
  - 集計結果
  - ディビジョン

## 取り込みたいもの
  - データベース
  - 出欠情報
  - ディクテ

## 編集したいもの
  - データベース
  - 出欠情報
  - ディクテ

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
