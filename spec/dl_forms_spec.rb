require File.dirname(__FILE__) + "/spec_helper"

describe "dl_forms" do
  before(:each) do
    @av = ActionView::Base.new
  end

  describe "LabeledFormHelper" do
    describe "label_tag" do
      it "should output a label with the for and value" do
        @av.label_tag("foo", "bar").should == '<label for="foo">bar</label>'
      end
    end

    describe "label_for" do
      before(:each) do
        @obj = mock('ar', :foo => "bar", :inspect => "object_output")
      end

      it "should use a label tag" do
        out = @av.label_for(@obj, :foo)
        out.should =~ /label/
      end
    end
  end
end
