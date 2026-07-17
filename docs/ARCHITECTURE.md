# EmpireCraft Architecture

## Overview

EmpireCraft is built using independent gameplay systems.

Each system has one responsibility and communicates with other systems only when necessary.

---

## Core Systems

### Player System

Responsibilities

- Health
- Mana
- XP
- Levels
- Classes
- Statistics

---

### World System

Responsibilities

- Kingdoms
- Villages
- Structures
- Dungeons
- Biomes

---

### Magic System

Responsibilities

- Spellbook
- Mana
- Spells
- Magic Effects
- Cooldowns

---

### Weapon System

Responsibilities

- Weapons
- Armor
- Accessories
- Upgrades

---

### Boss System

Responsibilities

- Boss AI
- Boss Arenas
- Boss Rewards
- Relics

---

### Economy System

Responsibilities

- Empire Coins
- Shops
- Trading
- Marketplace

---

### Empire System

Responsibilities

- Reputation
- Kingdom Control
- Guards
- Castle Progression

---

### Quest System

Responsibilities

- Main Story
- Side Quests
- NPC Dialogue
- Achievements

---

### UI System

Responsibilities

- Menus
- Notifications
- HUD
- Boss Bars

---

## Design Principles

- One responsibility per system.
- Keep systems modular.
- Avoid duplicate code.
- Optimize for Minecraft Bedrock.
- Optimize for mobile performance.