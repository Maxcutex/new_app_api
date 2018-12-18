import React from "react";
import { shallow } from "enzyme";
import App from "../components/App";

describe("App", () => {
  it("should render Header correctly", () => {
    let wrapper = shallow(<App />);
    expect(wrapper).toMatchSnapshot();
  });

  it("should render Header correctly", () => {
    let wrapper = shallow(<App />);
    const home = wrapper.find("Home");
    console.log(home);
    expect(home.length).toBe(1);
  });
});
