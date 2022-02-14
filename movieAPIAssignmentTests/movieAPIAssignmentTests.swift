//
//  movieAPIAssignmentTests.swift
//  movieAPIAssignmentTests
//
//  Created by Brian Bachow on 2/11/22.
//

import XCTest
@testable import movieAPIAssignment

class movieAPIAssignmentTests: XCTestCase {

    var vm = MovieViewModel.init()
    
    override func setUpWithError() throws {
        let transcoding = Transcoding(id: "2", size: 4, height: 5, state: "California", width: 4)
        let objMovie = Movie.init(duration: 1.0, plays: 1, transcodings: [transcoding], title: "movie")
        vm.arr = [objMovie]
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testGetMovie(){

    }
    
    func apiCallGetsValidJSONResponse(){
        
    }
    
    func testIfArrIsZero(){
        let results = vm.getCount()
        XCTAssertEqual(results, 1)
    }
    
    func testIfArrHasTextForHeader(){
        let results = vm.getMovieTitleHeader(index: 1)
        XCTAssert(results == "movie")
    }
    
    func testForError(){
        
        let results = vm.getError()
        XCTAssertNil(results)
    
//    func testForMovie(){
//        XCTAssert(vm.arr[0] != nil)
//    }

}
}
