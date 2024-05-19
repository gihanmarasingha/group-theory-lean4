import GameServer.Commands

-- import all worlds
import Game.Levels.GroupDefinition
import Game.Levels.Basics

Title "LMS Education Day Lean Game Example"

Introduction "
# Welcome to this Lean example

## Group theory

This simple Lean game example explores ideas in group theory.

Please click the larger blue disc on the right of this pane to start.
"

Info "
Developed by Gihan Marasingha using the Lean 4 game engine at HHU.
"

-- Dependency World₁ → World₂ -- because of `≠`

MakeGame
