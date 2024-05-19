import GameServer.Commands

-- import all worlds
import Game.Levels.GroupWorld

Title "LMS Education Day Lean Game Example"

Introduction "
# Welcome to this Lean example

## Group theory

This simple Lean game example contains one 'world', exploring ideas in group theory.

Please click the blue circle on the right of this pane to start.
"

Info "
Developed by Gihan Marasingha using the Lean 4 game engine at HHU.
"

-- Dependency World₁ → World₂ -- because of `≠`

MakeGame
