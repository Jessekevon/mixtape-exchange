# This migration comes from commontator (originally 0)
class Install < ActiveRecord::Migration
  def change
    create_table 'commontator_comments' do |t|
      t.string   'creator_type'
      t.integer  'creator_id'
      t.string   'editor_type'
      t.integer  'editor_id'
      t.integer  'thread_id', :null => false
      t.text     'body', :null => false
      t.datetime 'deleted_at'
      
      t.integer  'cached_votes_total', :default => 0
      t.integer  'cached_votes_up', :default => 0
      t.integer  'cached_votes_down', :default => 0

      t.timestamps
    end

    add_index :commontator_comments, [:creator_type, :creator_id, :thread_id], :name => 'index_c_c_on_c_type_and_c_id_and_t_id'
    add_index :commontator_comments, :thread_id

    add_index :commontator_comments, :cached_votes_total
    add_index :commontator_comments, :cached_votes_up
    add_index :commontator_comments, :cached_votes_down
    
    create_table 'commontator_subscriptions' do |t|
      t.string   'subscriber_type', :null => false
      t.integer  'subscriber_id', :null => false
      t.integer  'thread_id', :null => false
      t.integer  'unread', :null => false, :default => 0

      t.timestamps
    end

    add_index :commontator_subscriptions, [:subscriber_type, :subscriber_id, :thread_id], :unique => true, :name => 'index_c_s_on_s_type_and_s_id_and_t_id'
    add_index :commontator_subscriptions, :thread_id

    create_table 'commontator_threads' do |t|
      t.string   'commontable_type'
      t.integer  'commontable_id'
      t.datetime 'closed_at'
      t.string   'closer_type'
      t.integer  'closer_id'

      t.timestamps
    end

    add_index :commontator_threads, [:commontable_type, :commontable_id], :unique => true, :name => 'index_c_t_on_c_type_and_c_id'
  end
end
