# 🏋️‍♀️ Fitness Tracker – Personal Workout and Health Logger

A simple Flutter mobile application that allows users to log workouts, view workout history, calculate BMI, and see a summary of their fitness activities.

---

## 📱 Features

### ✅ Core Modules

1. **Workout Logging**
   - Add workouts with title, category, duration, and date.

2. **Workout List**
   - View a scrollable list of all logged workouts.
   - Each workout card displays:
     - Title
     - Category icon
     - Duration
     - Date

3. **Summary (Optional)**
   - View total workouts per category (e.g., Cardio: 3, Strength: 2)
   - Displays a simple bar chart using `fl_chart`.

4. **BMI Calculator (Optional / Bonus)**
   - Input: Weight (kg) and Height (cm)
   - Output: BMI value with health status (e.g., Normal, Overweight)

---

## 🎯 Objectives

- Build a user-friendly Flutter app to track daily fitness activity.
- Help users analyze their performance via summaries and BMI insights.

---

## 📸 Screenshots

> _(Include screenshots of your app’s main pages here for demonstration)_

---

## 🧱 Tech Stack

| Component          | Technology          |
|-------------------|---------------------|
| Frontend UI       | Flutter             |
| State Management  | `setState` (basic) or Provider (optional) |
| Chart Visualization | `fl_chart` package |
| Local Storage (Optional) | `shared_preferences` (not implemented here) |

---

## 🧪 Functional Requirements

| ID   | Description                                      |
|------|--------------------------------------------------|
| FR1  | Add a new workout entry                         |
| FR2  | View the list of logged workouts                |
| FR3  | Show workout details (duration, category)       |
| FR4  | Calculate BMI using user input                  |
| FR5  | View activity summary grouped by category       |

---

## 🖼️ UI Navigation Flow

1. **Home Page** – Displays all workout logs
2. **Add Workout Page** – Form to add a workout
3. **BMI Page (Optional)** – Calculates BMI based on height & weight
4. **Summary Page (Optional)** – Bar chart showing workout categories

---

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/yourusername/fitness_tracker_app.git
cd fitness_tracker_app
