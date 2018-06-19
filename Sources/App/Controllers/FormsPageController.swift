//
//  Example.swift
//  VaporForms
//
//  Created by Mike Bronner on 6/17/18.
//

import Leaf
import Vapor

final class FormsPageController {
    func index(_ request: Request) throws -> Future<View> {
        let data = ["test": 5]
        return try request.view().render("forms", data)
    }
}
