import SwiftUI

struct LoginView: View {
    
    // Giriş mi kayıt mı? bunu kontrol ediyoruz
    @State private var isSigningUp = false
    
    // Form bilgileri state olarak tutuluyor, SwiftUI'de form inputlarını izlemek için şart
    @State private var email = ""
    @State private var password = ""
    @State private var name = "" // Sadece kayıt için gerekli
    
    // Giriş başarılı olursa bu state true olacak ve yönlendirme gerçekleşecek
    @State private var isLoggedIn = false

    var body: some View {
        // Navigation yapabilmek için tüm ekranı NavigationStack içine aldık (iOS 16+)
        NavigationStack {
            VStack(spacing: 20) {
                
                // Uygulama başlığı
                Text("BondShield")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                // Kayıt ekranındaysak isim alanı göster
                if isSigningUp {
                    TextField("Ad Soyad", text: $name)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8.0)
                }
                
                // E-posta alanı
                TextField("E-posta", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8.0)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                // Şifre alanı
                SecureField("Şifre", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8.0)

                // 🔁 Giriş başarılı olursa bu görünmez NavigationLink tetiklenir
                // Neden böyle yaptık? Çünkü bir butonla programatik geçiş yapıyoruz
                NavigationLink(destination: AgencyDashboardView(), isActive: $isLoggedIn) {
                    EmptyView() // Görünmez placeholder
                }

                // Giriş veya kayıt butonu
                Button(action: handlePrimaryAction) {
                    Text(isSigningUp ? "Hesap Oluştur" : "Giriş Yap")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                .padding(.top)
                
                // Alt seçenekler: Kayıt/Giriş değiştirici ve Şifremi unuttum
                HStack {
                    Button(action: {
                        isSigningUp.toggle() // Mod değiştir
                    }) {
                        Text(isSigningUp ? "Zaten hesabın var mı? Giriş Yap" : "Hesap Oluştur")
                    }
                    
                    Spacer()
                    
                    if !isSigningUp {
                        Button(action: handleForgotPassword) {
                            Text("Şifremi Unuttum")
                        }
                    }
                }
                .font(.footnote)
                .padding(.horizontal)
            }
            .padding()
        }
    }
    
    // Bu fonksiyon Giriş Yap veya Hesap Oluştur butonuna basınca çalışır
    func handlePrimaryAction() {
        if isSigningUp {
            // Gerçek API çağrısı yerine simülasyon
            print("Kayıt işlemi başlatılıyor: \(name), \(email)")
            isLoggedIn = true // Kayıt başarılıysa yönlendirme yapılır
        } else {
            print("Giriş işlemi başlatılıyor: \(email)")
            isLoggedIn = true // Giriş başarılıysa yönlendirme yapılır
        }
    }
    
    // Şifremi Unuttum butonuna basılınca çalışır
    func handleForgotPassword() {
        print("Şifre sıfırlama talebi gönderildi: \(email)")
        // API çağrısı buraya eklenecek
    }
}

#Preview {
    LoginView()
}
