//
//  question_data.swift
//  patient_app
//
//  Created by Angelo Kastroulis on 10/25/15.
//  Copyright © 2015 Bravado. All rights reserved.
//

import Foundation

struct questions{
    var Fatigue: Bool
    var WeightLoss: Bool
    var Fever: Bool
    var LossAppetite: Bool
}

var question_data = questions(Fatigue: false, WeightLoss: false, Fever: false, LossAppetite: false)