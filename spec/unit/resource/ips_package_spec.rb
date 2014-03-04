#
# Author:: Bryan McLellan <btm@opscode.com>
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'spec_helper'

describe Chef::Resource::IpsPackage, "initialize" do

  before(:each) do
    @resource = Chef::Resource::IpsPackage.new("crypto/gnupg")
  end

  it "should return a Chef::Resource::IpsPackage" do
    @resource.should be_a_kind_of(Chef::Resource::IpsPackage)
  end

  it "should set the resource_name to :ips_package" do
    @resource.resource_name.should eql(:ips_package)
  end

  it "should set the provider to Chef::Provider::Package::Ips" do
    @resource.provider.should eql(Chef::Provider::Package::Ips)
  end

  it "should support accept_license" do
    @resource.accept_license(true)
    @resource.accept_license.should eql(true)
  end
end
