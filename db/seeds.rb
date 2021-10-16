# create!d users for system
u1 = User.create!(email: 'alice@doctor.com', full_name: 'Alice Power', city: 'Barcelona', role: 'doctor', password: 'Pa$$w0rd')
User.create!(email: 'bob@doctor.com', full_name: 'Bob Simpson', city: 'Tarragona', role: 'doctor', password: 'Pa$$w0rd')
User.create!(email: 'judit@doctor.com', full_name: 'Judit Blanch', city: 'Madrid', role: 'doctor', password: 'Pa$$w0rd')
User.create!(email: 'philips@doctor.com', full_name: 'Philips Ramos', city: 'Tarragona', role: 'doctor', password: 'Pa$$w0rd')
User.create!(email: 'krista@patient.com', full_name: 'Krista Martin', city: 'Barcelona', role: 'patient', password: 'Pa$$w0rd')
User.create!(email: 'tom@patient.com', full_name: 'Tom Parker', city: 'Barcelona', role: 'patient', password: 'Pa$$w0rd')
User.create!(email: 'ben@patient.com', full_name: 'Ben Marques', city: 'Barcelona', role: 'patient', password: 'Pa$$w0rd')
User.create!(email: 'alice@patient.com', full_name: 'Alice Williams', city: 'Lleida', role: 'patient', password: 'Pa$$w0rd')

# create!d appintments
appointments = [Appointment.new(doctor_id: '1', patient_id: '5', appointment_date: DateTime.new(2021,11,9,9,05), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '2', patient_id: '5', appointment_date: DateTime.new(2021,11,17,11), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '2', patient_id: '5', appointment_date: DateTime.new(2021,11,16,12), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '2', patient_id: '6', appointment_date: DateTime.new(2021,11,22,7), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '3', patient_id: '7', appointment_date: DateTime.new(2021,12,3,8,30), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '3', patient_id: '8', appointment_date: DateTime.new(2021,12,15,15,30), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '4', patient_id: '8', appointment_date: DateTime.new(2021,12,14,11,15), observations: "Some observations about the appointment"),
Appointment.new(doctor_id: '4', patient_id: '6', appointment_date: DateTime.new(2021,12,10,9), observations: "Some observations about the appointment")]

# Attach images to appointments
1.upto(3) do |i|
    appointments.map { 
        |a| a.images.attach(io: File.open(Rails.root.join('app/assets/images/image-'+i.to_s+'.png')), filename: 'image-'+i.to_s+'.png')
        a.save
    }
end