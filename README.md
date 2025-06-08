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

<p align="center">
  <img src="https://github.com/user-attachments/assets/7d90e8f1-161a-44fa-b4ed-7a9e0d7682b7" width="300" />
  <img src="https://github.com/user-attachments/assets/b39b64ee-24eb-4d14-b658-074e220235f9" width="300" />
  <img src="https://github.com/user-attachments/assets/090a30b1-5e07-4369-ba12-37bc07ce9ecd" width="300" />
  <img src="https://github.com/user-attachments/assets/dde7dbb2-b88b-4267-a0fb-51647d10e9bf" width="300" />
  <img src="https://github.com/user-attachments/assets/a65d254a-25f3-402f-9335-382c7a760a79" width="300" />
  <img src="https://github.com/user-attachments/assets/eaea487a-ea9c-4dcc-b085-56abebc55674" width="300" />
  <img src="https://github.com/user-attachments/assets/8f12e307-030c-4e14-b4ae-f9d726927768" width="300" />
  <img src="https://github.com/user-attachments/assets/336899d1-3531-475b-9eb7-6c79ad961ab5" width="300" />
  <img src="https://github.com/user-attachments/assets/44a8eff9-1317-491c-8154-9b24fb8309b0" width="300" />
  <img src="https://github.com/user-attachments/assets/26769993-27b3-4c06-8ad3-445dfed2aacf" width="300" />
  <!-- Add more if needed -->
</p>



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
