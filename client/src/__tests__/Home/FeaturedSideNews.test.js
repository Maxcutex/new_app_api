import React from "react";
import { shallow } from "enzyme";

import FeaturedSideNews from "../../components/Home/FeaturedSideNews";
describe("FeaturedSideNews Component", () => {
  it("renders without crashing", () => {
    const component = shallow(<FeaturedSideNews />);
  });
});
