#!/bin/bash

# Set variables
num_agent_train_steps_per_iter=1
learning_rate=0.00001
n_iter=200_000
max_episode_length=1000
# Construct exp_name dynamically
exp_name="q4_ddpg${num_agent_train_steps_per_iter}_lr${learning_rate}"

# Use variables in the command
python run_hw3_ql.py env.exp_name=${exp_name} alg.rl_alg=ddpg env.env_name=InvertedPendulum-v2 alg.num_agent_train_steps_per_iter=$num_agent_train_steps_per_iter alg.learning_rate=$learning_rate env.atari=false alg.double_q=false alg.n_iter=$n_iter env.max_episode_length=$max_episode_length

# Tuning update freq

# Make a sound indicating that the run is completed

echo -e '\a'