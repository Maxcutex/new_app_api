//import ReactDOM from "react-dom";
import React from "react";
import { shallow } from "enzyme";

import FeaturedSection from "../../components/Home/FeaturedSection";

describe("Featured Component", () => {
  it("renders without crashing", () => {
    let component = shallow(<FeaturedSection />);
  });
  //   it("has shows three news components", () => {
  //     const component = shallow(<Header />);
  //     var node = component.find("nav");
  //     expect(node.length).toEqual(1);
  //   });
  //   it("has shows a big section component", () => {
  //     const component = shallow(<Header />);
  //     var node = component.find("nav");
  //     expect(node.length).toEqual(1);
  //   });
  //   it("has shows two small section component", () => {
  //     const component = shallow(<Header />);
  //     var node = component.find("nav");

  //     expect(node.length).toEqual(1);
  //   });
});
