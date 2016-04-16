<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <RootNamespace>IdentityServerConsoleApplication</RootNamespace>
    <ProjectGuid>{bb52ddca-7454-4fc1-8c9e-438b3ca70c04}</ProjectGuid>
    <OutputType>exe</OutputType>
    <AssemblyName>IdentityServerConsoleApplication</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyOutParams>False</AllowLegacyOutParams>
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <ApplicationIcon>Properties\App.ico</ApplicationIcon>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.5</TargetFrameworkVersion>
    <Name>IdentityServerConsoleApplication</Name>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <Optimize>false</Optimize>
    <OutputPath>.\bin\Debug</OutputPath>
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>True</GenerateMDB>
    <EnableAsserts>True</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <Optimize>true</Optimize>
    <OutputPath>.\bin\Release</OutputPath>
    <GeneratePDB>False</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <EnableAsserts>False</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="IdentityServer3">
      <HintPath>..\packages\IdentityServer3.2.5.0\lib\net45\IdentityServer3.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Owin">
      <HintPath>..\packages\Microsoft.Owin.3.0.1\lib\net45\Microsoft.Owin.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Owin.Diagnostics">
      <HintPath>..\packages\Microsoft.Owin.Diagnostics.3.0.1\lib\net45\Microsoft.Owin.Diagnostics.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Owin.Host.HttpListener">
      <HintPath>..\packages\Microsoft.Owin.Host.HttpListener.3.0.1\lib\net45\Microsoft.Owin.Host.HttpListener.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Owin.Hosting">
      <HintPath>..\packages\Microsoft.Owin.Hosting.3.0.1\lib\net45\Microsoft.Owin.Hosting.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="mscorlib" />
    <Reference Include="Owin">
      <HintPath>..\packages\Owin.1.0\lib\net40\Owin.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Serilog">
      <HintPath>..\packages\Serilog.1.5.14\lib\net45\Serilog.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Serilog.FullNetFx">
      <HintPath>..\packages\Serilog.1.5.14\lib\net45\Serilog.FullNetFx.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Serilog.Sinks.Literate">
      <HintPath>..\packages\Serilog.Sinks.Literate.1.2.0\lib\net45\Serilog.Sinks.Literate.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Data" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Core">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml.Linq">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Data.DataSetExtensions">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Compile Include="Clients.pas" />
    <Compile Include="Program.pas" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <Compile Include="Scopes.pas" />
    <Compile Include="Startup.pas" />
    <Compile Include="Users.pas" />
    <Content Include="packages.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Properties\App.ico" />
    <EmbeddedResource Include="Properties\Resources.resx">
      <Generator>ResXFileCodeGenerator</Generator>
    </EmbeddedResource>
    <Compile Include="Properties\Resources.Designer.pas" />
    <None Include="Properties\Settings.settings">
      <Generator>SettingsSingleFileGenerator</Generator>
    </None>
    <Compile Include="Properties\Settings.Designer.pas" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Properties\" />
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Elements\RemObjects.Elements.Echoes.targets" />
  <PropertyGroup>
    <PreBuildEvent />
  </PropertyGroup>
</Project>