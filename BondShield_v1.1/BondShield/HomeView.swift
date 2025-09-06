import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // 🏠 Başlık ve Karşılama
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Hoş Geldin")
                            .font(.title2)
                            .foregroundColor(.gray)
                        
                        Text("BondShield Panel")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal)
                    
                    // 📊 İstatistik kutucukları
                    HStack(spacing: 16) {
                        StatCard(title: "Mülk", value: "12", color: .blue)
                        StatCard(title: "Denetim", value: "5", color: .green)
                        StatCard(title: "PDF Rapor", value: "7", color: .orange)
                    }
                    .padding(.horizontal)

                    // 🚀 Hızlı işlemler
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Hızlı Erişim")
                            .font(.headline)
                        
                        NavigationLink(destination: PropertiesListView()) {
                            ActionButton(title: "Mülkleri Görüntüle", icon: "house.fill", bgColor: .blue)
                        }
                        NavigationLink(destination: StartInspectionView(property: Property)) {
                            ActionButton(title: "Yeni Denetim Başlat", icon: "plus.circle.fill", bgColor: .green)
                        }
                        NavigationLink(destination: ReviewAndGeneratePDFView(inspectionId: <#String#>)) {
                            ActionButton(title: "PDF Raporlarını Görüntüle", icon: "doc.richtext", bgColor: .orange)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
        }
    }
}

// 📦 İstatistik kartı bileşeni
struct StatCard: View {
    var title: String
    var value: String
    var color: Color
    
    var body: some View {
        VStack {
            Text(value)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text(title)
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(width: 100, height: 80)
        .background(color)
        .cornerRadius(12)
    }
}

// 🔘 Hızlı erişim butonu bileşeni
struct ActionButton: View {
    var title: String
    var icon: String
    var bgColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            Spacer()
        }
        .padding()
        .background(bgColor)
        .cornerRadius(12)
    }
}

// 🔍 Önizleme
#Preview {
    HomeView()
}
