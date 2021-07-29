youtube <- read.csv("C:/Users/hp/AppData/Local/Temp/Rar$DIa0.867/youtube.csv")
library(dplyr)
library(lubridate)
str(youtube)
head(youtube$trending_date)
youtube <- youtube %>% 
  mutate(trending_date = ymd(trending_date),
         category_id   = as.factor(category_id) 
  )

youtube %>% 
  filter(category_id == "Music") %>% 
  group_by(channel_title) %>% 
  summarise(likes_ratio = mean(likes/views)) %>% 
  arrange(desc(likes_ratio)) %>% 
  head(10)

1. Fungsi `dplyr` mana yang sesuai untuk mengisi kode di atas?  
  - [X] filter, summarise, arrange
- [ ] select, pivot, order
- [ ] filter, mutate, order
- [ ] select, summarise, arrange
___

## Membangun Aplikasi Dashboard

Berdasarkan channel YouTube yang telah Anda ekstrak, Anda berencana untuk membuat prototipe *dashboard* untuk klien Anda menggunakan flexdashboard. Anda membuat mockup dengan desain berikut:
  
  ![](assets/mockup.png)
___
2. Untuk menghasilkan tata letak (*layout*) seperti di atas menggunakan *template* dari flexdashboard, bagaimana seharusnya tata letak disusun?
  - [X] orientation: rows ; 2 header pada bagian pertama, 1 header pada bagian kedua
- [ ] orientation: columns ; 2 header pada bagian pertama, 1 headers pada bagian kedua
- [ ] orientation: columns ; 1 header pada bagian pertama, 2 header pada bagian kedua
- [ ] orientation: rows ; 1 header pada bagian pertama, 2 header pada bagian kedua

*Referensi Opsi Bahasa Inggris:*
  - [ ] orientation: rows ; 2 headers in first section, 1 headers in the second section
- [ ] orientation: columns ; 2 headers in first section, 1 headers in the second section
- [ ] orientation: columns ; 1 headers in first section, 2 headers in the second section
- [ ] orientation: rows ; 1 headers in first section, 2 headers in the second section
___

Sekarang perhatikan plot kanan atas. Plot menunjukkan *likes ratio* dan *dislikes ratio* dari video trending pada kategori Musik. Bila Anda ingin menambahkan fitur interaktif yang menarik dimana pengguna dapat memilih kategori yang mereka inginkan dan plot akan berubah sesuai dengan kategori tersebut.
___
3. Manakah dari jenis masukan (*input type*) di bawah ini yang sesuai untuk jenis pilihan di atas?
  - [X] selectInput()
- [ ] sliderInput()
- [ ] numericInput()
- [ ] passwordInput()
___

Masih di plot yang sama, Anda juga ingin memiliki plot yang dapat menampilkan setiap judul video untuk analisis lebih lanjut. Karena Anda menyadari bahwa menambahkan geom_text dapat membuat plot menjadi terlalu penuh (tidak rapih), Anda berencana untuk membuat object *plotly* yang menampilkan judul video dengan mengarahkan kursor pada bagian tertentu pada plot.
___
4. Manakah dari kode berikut yang merupakan pasangan yang tepat antara fungsi render dan output untuk membuat plotly pada Shiny Dashboard?
  - [ ] output$plot1 <- renderPlot({}) ; plotlyOutput("plot1")
- [ ] output$plotly1 <- renderPlotly({}) ; plotOutput("plotly1")
- [ ] output$plot1 <- renderPlot({}) ; plotOutput("plot1")
- [X] output$plot1 <- renderPlotly({}) ; plotlyOutput("plot1")
___
