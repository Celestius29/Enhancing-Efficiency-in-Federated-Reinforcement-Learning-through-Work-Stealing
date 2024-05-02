__Enhancing Efficiency in Federated Reinforcement Learning through Work Stealing__
Overview

This repository contains implementations of Decentralized Federated Reinforcement Learning (FRL) algorithms with a focus on fault tolerance and efficiency improvements. The project includes support for various worker configurations and implements a work-stealing algorithm to optimize task allocation and reduce idle time.

Installation

    Clone the repository: git clone https://github.com/Celestius29/Enhancing-Efficiency-in-Federated-Reinforcement-Learning-through-Work-Stealing/

    bash cd your-repo



Install dependencies:

    pip install -r requirements.txt

Usage

    Modify configurations in worker.py to specify worker setups and experiment parameters.
    Change environments in the environment.py file.
    Run experiments using the provided scripts:

    python run_experiments.py

Credit

The implementation is based on the research paper "Decentralized Federated Policy Gradient with Byzantine
Fault-Tolerance and Provably Fast Convergence"
Philip Jordan, Florian Gr ̈otschla, Flint Xiaofeng Fan, and Roger Wat-
tenhofer. Decentralized federated policy gradient with byzantine fault-
tolerance and provably fast convergence. 2024.(https://arxiv.org/abs/2401.03489)


Implementation Details

    Decentralized FRL Algorithms: Implementations of decentralized Federated Reinforcement Learning algorithms, including fault-tolerant variants.
    Work-Stealing Algorithm: Integration of a work-stealing algorithm to dynamically allocate tasks among workers and improve system efficiency.
    Experimentation Framework: Scripts and tools for conducting experiments with different worker configurations and evaluating performance metrics.
    Visualization and Analysis: Tools for visualizing experiment results, analyzing idle time reduction, and assessing the impact of fault tolerance mechanisms.

Contributing

Contributions are welcome! Feel free to submit pull requests or open issues for bug fixes, enhancements, or new features.
License

This project is licensed under the MIT License - see the LICENSE file for details.
