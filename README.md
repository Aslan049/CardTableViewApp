# iOS TableView Uygulaması (Swift & UIKit)

Bu proje, temel bir `UITableView` kullanımını, özel bir `UITableViewCell` oluşturmayı ve farklı bir ekrana veri geçişini gösteren basit bir iOS uygulamasıdır. UIKit framework'ü kullanılarak Swift dilinde geliştirilmiştir.

## Temel Özellikler

- **Özel `UITableViewCell`:** Her bir kart için özel bir görsel ve isim etiketi içeren `CardTableViewCell` kullanır.
- **Lazy Initialization:** UI elemanları yalnızca ihtiyaç duyulduğunda oluşturulur, bu da performansı artırır.
- **Auto Layout:** Farklı ekran boyutlarında tutarlı bir kullanıcı arayüzü sağlamak için Auto Layout constraintleri kullanılmıştır.
- **Veri Modelleme:** Kart verilerini temsil etmek için basit bir `Card` struct'ı kullanılır.
- **Güvenli Görsel Yükleme:** `safeImage()` fonksiyonu ile görseller güvenli bir şekilde yüklenir ve bulunamayan görseller için varsayılan bir görsel kullanılır.
- **`UITableViewDelegate` ve `UITableViewDataSource`:** TableView'ın davranışını ve veri yönetimini sağlamak için bu protokoller uygulanmıştır.
- **Sola Kaydırarak Silme:** Kullanıcılar, hücreleri sola kaydırarak listeden silebilirler.
- **Hücre Seçimiyle Detay Ekranına Geçiş:** Bir hücreye dokunulduğunda, seçilen kartın adını ve görselini gösteren `NextViewController` adlı yeni bir ekrana geçiş yapılır.

## Proje Yapısı

- **Model**: `Card.swift`
- **View**: `CardTableViewCell.swift`
- **Controller**: `ViewController.swift`, `NextViewController.swift`
- **Resources**: `LaunchScreen.storyboard`, `Assets.xcassets`
- **Application**: `AppDelegate.swift`, `SceneDelegate.swift`

## Nasıl Çalıştırılır?

1. Bu repository'yi bilgisayarınıza klonlayın:
    ```bash
    git clone <repository_url>
    ```
2. Klonlanan dizine gidin:
    ```bash
    cd <repository_directory>
    ```
3. Xcode'u açın ve proje dosyasını (`.xcodeproj`) seçin.
4. Gerekli simülatörü veya gerçek cihazı seçin.
5. Projeyi çalıştırmak için "Run" butonuna (Play ikonu) tıklayın.

## Kullanılan Teknolojiler

- Swift
- UIKit

