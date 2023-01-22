//
//  BookingView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct BookingView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var selectedHotel: Hotel
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = "+966"
    @State private var nGuests: Int = 1
    @State private var nRooms: Int = 1
    @State private var selectedCountry: Country = Country.countries.first!
    
    var body: some View {
        ZStack {
            Colors.topaz
                .ignoresSafeArea(.all)
            
            VStack(spacing: 0) {
                // MARK: - Top Navigation
                VStack {
                    ZStack {
                        HStack {
                            Button { self.presentationMode.wrappedValue.dismiss() } label: {
                                Image(systemName: "arrow.left")
                            }
                            Spacer()
                        }
                        HStack {
                            Text("\(selectedHotel.name) Hotel")
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                .foregroundColor(Colors.paleGrey)
                .font(.title3)
                .bold()
                
                // MARK: - White Area
                Spacer()
                VStack {
                    ZStack {
                        Colors.paleGrey
                        VStack(spacing: 0) {
                            // MARK: - Image
                            selectedHotel.image
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .frame(height: UIScreen.main.bounds.height/4)
                                .padding(.top, 32)
                            
                            // MARK: - Top Text
                            HStack {
                                VStack {
                                    Text("\(selectedHotel.name) Hotel")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(Colors.black)
                                    Text("City Name")
                                        .font(.body)
                                        .foregroundColor(Colors.grey)
                                    Spacer()
                                }
                                
                                Spacer()
                                
                                VStack {
                                    HStack {
                                        Text("⭐️ \(selectedHotel.rating.removeZerosFromEnd())")
                                        Text("(\(selectedHotel.numRatings) reviews)")
                                    }
                                    .foregroundColor(Colors.black)
                                    .font(.body)
                                    Spacer()
                                }
                            }
                            .padding(.top)
                            
                            // MARK: - Text Fields
                            VStack {
                                HStack {
                                    Text("Name")
                                        .font(.body)
                                        .foregroundColor(Colors.grey)
                                    Spacer()
                                }
                                HStack {
                                    TextField("name", text: $name)
                                        .foregroundColor(Colors.black)
                                        .padding(.vertical, 8)
                                }
                                .background {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Colors.white)
                                }
                                HStack {
                                    Text("Email Address")
                                        .font(.body)
                                        .foregroundColor(Colors.grey)
                                    Spacer()
                                }
                                HStack {
                                    TextField("email", text: $email)
                                        .foregroundColor(Colors.black)
                                        .padding(.vertical, 8)
                                }
                                .background {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Colors.white)
                                }
                            }
                            
                            
                            // MARK: - Phone Field
                            VStack {
                                HStack {
                                    Text("Phone Number")
                                        .font(.body)
                                        .foregroundColor(Colors.grey)
                                    Spacer()
                                }
                                HStack {
                                    Menu {
                                        ForEach(Country.countries) { country in
                                            DropDownBtn(selecteCountry: $selectedCountry, areaCode: $phone, country: country)
                                        }
                                    } label: {
                                        HStack(spacing: 5) {
                                            Text(selectedCountry.flag)
                                                .font(.title)
                                            Image(systemName: "arrowtriangle.down.fill")
                                                .foregroundColor(Colors.black)
                                                .font(.caption)
                                        }
                                        .padding(.horizontal)
                                        .padding(.vertical, 2)
                                        .background {
                                            RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor(Colors.white)
                                        }
                                    }
                                    TextField("phone", text: $phone)
                                        .foregroundColor(Colors.black)
                                        .padding(.vertical, 8)
                                        .background {
                                            RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor(Colors.white)
                                        }
                                }
                            }
                            
                            // MARK: - Rooms
                            VStack {
                                HStack {
                                    Text("Rooms Required")
                                        .font(.body)
                                        .foregroundColor(Colors.grey)
                                    Spacer()
                                }
                                HStack {
                                    Menu {
                                        ForEach(1..<6) { num in
                                            Button(action: { nGuests = num }) {
                                                Text("0\(num) Guests")
                                                    .font(.body)
                                                    .foregroundColor(Colors.black)
                                            }
                                        }
                                    } label: {
                                        HStack {
                                            Text("0\(nGuests) Guests")
                                                .font(.body)
                                                .bold()
                                                .foregroundColor(Colors.black)
                                            
                                            Image(systemName: "arrowtriangle.down.fill")
                                                .foregroundColor(Colors.topaz)
                                        }
                                    }
                                    .padding()
                                    .background {
                                        RoundedRectangle(cornerRadius: 8)
                                            .foregroundColor(Colors.white)
                                    }
                                    Spacer()
                                    
                                    HStack(spacing: 20) {
                                        Button(action: {if nRooms > 1 {nRooms -= 1}}) {
                                            Image(systemName: "minus")
                                                .font(.body)
                                                .foregroundColor(Colors.topaz)
                                        }
                                        Text("\(nRooms) Rooms")
                                            .font(.body)
                                            .foregroundColor(Colors.black)
                                            .bold()
                                        Button(action: {if nRooms < 5 {nRooms += 1}}) {
                                            Image(systemName: "plus")
                                                .font(.body)
                                                .foregroundColor(Colors.topaz)
                                        }
                                    }
                                }
                            }
                            Spacer()
                            Button(action: {}) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Colors.topaz)
                                        .frame(height: 80)
                                        .padding(.horizontal)
                                    Text("Proceed to Pay")
                                        .foregroundColor(Colors.white)
                                        .font(.title3)
                                        .bold()
                                }
                                
                            }
                        }
                        .padding(.horizontal, 32)
                        .padding(.bottom, 30)
                    }
                }
                .ignoresSafeArea()
                .frame(height: UIScreen.main.bounds.height - 150)
            }
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView(selectedHotel: Hotel.hotels.first!)
    }
}
