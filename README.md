# ⚽ SoccerStats

A simple **Ruby Sinatra** web app that fetches **real-time soccer match data** using the [API-FOOTBALL](https://www.api-football.com/) API.




## 🌟 Features
- **Search for any soccer team** by name.
- **Fetch the last 5 matches** of the selected team.
- **Displays match results** including home & away teams, goals, and match dates.
- **Simple and beautiful UI** with CSS styling.
- **Lightweight Sinatra app**—no database required.

---

## 🛠️ **Tech Stack**
- **Ruby** (Sinatra)
- **HTTParty** (API Requests)
- **Dotenv** (Environment variables)
- **HTML, CSS** (Front-end styling)

---

## ⚽ Example Teams for Testing
To test the **Soccer Stats Lookup** app, enter any of the following **team names** in the search box. The app will fetch the latest match results.

### 🌍 Popular European Clubs
| **Club Name**             | **Country**  | **Suggested Input**  |
|---------------------------|-------------|----------------------|
| **FC Barcelona**          | Spain 🇪🇸   | `Barcelona`         |
| **Real Madrid**           | Spain 🇪🇸   | `Real Madrid`       |
| **Manchester United**     | England 🏴  | `Manchester United` |
| **Liverpool**             | England 🏴  | `Liverpool`         |
| **Chelsea**               | England 🏴  | `Chelsea`           |
| **Bayern Munich**         | Germany 🇩🇪 | `Bayern Munich`     |
| **Borussia Dortmund**     | Germany 🇩🇪 | `Borussia Dortmund` |
| **Paris Saint-Germain**   | France 🇫🇷  | `Paris Saint-Germain` |
| **Juventus**              | Italy 🇮🇹   | `Juventus`          |
| **AC Milan**              | Italy 🇮🇹   | `AC Milan`          |

### 🌎 Popular South American Clubs
| **Club Name**        | **Country**   | **Suggested Input** |
|----------------------|--------------|---------------------|
| **Flamengo**        | Brazil 🇧🇷   | `Flamengo`         |
| **Palmeiras**       | Brazil 🇧🇷   | `Palmeiras`        |
| **Boca Juniors**    | Argentina 🇦🇷 | `Boca Juniors`     |
| **River Plate**     | Argentina 🇦🇷 | `River Plate`      |
| **Colo-Colo**       | Chile 🇨🇱    | `Colo-Colo`        |
| **Peñarol**         | Uruguay 🇺🇾  | `Peñarol`          |

### 🏆 National Teams
| **Country**         | **Suggested Input** |
|---------------------|---------------------|
| **Argentina** 🇦🇷  | `Argentina`         |
| **Brazil** 🇧🇷    | `Brazil`            |
| **France** 🇫🇷    | `France`            |
| **Germany** 🇩🇪   | `Germany`           |
| **England** 🏴    | `England`           |
| **Portugal** 🇵🇹  | `Portugal`          |

---

## ✅ How to Test
1. **Enter a team name** (e.g., `Barcelona`, `Manchester United`).
2. **Click "Search"** to retrieve match history.
3. **View results** including match dates, scores, and teams.

🔹 *If no matches appear, try another team, as some leagues may have limited data availability on the free API plan.*



## 🚀 **How to Run Locally**
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/Candide23/SoccerStats.git
cd SoccerStats
bundle install
ruby app.rb




