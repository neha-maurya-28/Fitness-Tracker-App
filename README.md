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

3. **Summary**
   - View total workouts per category (e.g., Cardio: 3, Strength: 2)
   - Displays a simple bar chart using `fl_chart`.

4. **BMI Calculator**
   - Input: Weight (kg) and Height (cm)
   - Output: BMI value with health status (e.g., Normal, Overweight)

---

## 🎯 Objectives

- Build a user-friendly Flutter app to track daily fitness activity.
- Help users analyze their performance via summaries and BMI insights.

---

## 📸 Screenshots

> ![IMG-20250609-WA0001](https://github.com/user-attachments/assets/19439bb7-7dac-4fb3-ab21-dc40cbf32974)
> ![IMG-20250609-WA0002](https://github.com/user-attachments/assets/b000bb46-6fb3-4c40-921c-7de85fe65c80)
> ![IMG-20250609-WA0003](https://github.com/user-attachments/assets/0f7fdaab-b5c5-4462-b140-fe4eadb00c14)
> ![IMG-20250609-WA0004](https://github.com/user-attachments/assets/b6ee5286-ed57-4539-8031-a05389a18549)
> ![IMG-20250609-WA0005](https://github.com/user-attachments/assets/7290d221-1656-411b-8585-5f3b10ac523a)
> ![IMG-20250609-WA0006](https://github.com/user-attachments/assets/a96f1a5b-ee50-4c21-b30a-c7a50218a12c)
> ![IMG-20250609-WA0007](https://github.com/user-attachments/assets/762ab182-01a3-47f4-82d7-0c96155abdc7)
> ![IMG-20250609-WA0008](https://github.com/user-attachments/assets/4f1f2499-1237-425f-8585-9288d79fb92c)
> ![IMG-20250609-WA0009](https://github.com/user-attachments/assets/14fdf15c-2e21-439c-8702-9bfadaab70a2)
> ![IMG-20250609-WA0010](https://github.com/user-attachments/assets/d699475b-52d1-4407-851a-6d0bb903aaaf)

---

## 🧱 Tech Stack

| Component          | Technology          |
|-------------------|---------------------|
| Frontend UI       | Flutter             |
| State Management  | `setState`  |
| Chart Visualization | `fl_chart` package |
| Local Storage  | `shared_preferences`  |

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
