//
//  SwiftUnitTestlerProjesiUITests.swift
//  SwiftUnitTestlerProjesiUITests
//
//  Created by Kadirhan Keles on 28.10.2023.
//

import XCTest

final class SwiftUnitTestlerProjesiUITests: XCTestCase {



    func testAddToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        let addButton = app.navigationBars["SwiftUnitTestlerProjesi.View"].buttons["Add"]
        

        let textField = app.alerts["To Do Item"].scrollViews.otherElements.collectionViews.textFields["ToDo Giriniz"]
        

        let okButton = app.alerts["To Do Item"].scrollViews.otherElements.buttons["OK"]
        
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        
        
        
    }

    func testDeleteToDoItem() throws {
        let app = XCUIApplication()
        app.launch()

        let addButton = app.navigationBars["SwiftUnitTestlerProjesi.View"].buttons["Add"]
        let textField = app.alerts["To Do Item"].scrollViews.otherElements.collectionViews.textFields["ToDo Giriniz"]
        let okButton = app.alerts["To Do Item"].scrollViews.otherElements.buttons["OK"]
        let addedRow = app.tables.staticTexts["my to do"]
        let tableView = app.tables
        let deleteButton = tableView.buttons["Delete"]
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()

        addedRow.swipeLeft()
        deleteButton.tap()
    }
}
