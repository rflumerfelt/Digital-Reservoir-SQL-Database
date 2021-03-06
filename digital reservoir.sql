USE [PRB]
GO
/****** Object:  Schema [admin]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [admin]
GO
/****** Object:  Schema [alias]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [alias]
GO
/****** Object:  Schema [analysis]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [analysis]
GO
/****** Object:  Schema [frac]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [frac]
GO
/****** Object:  Schema [prod]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [prod]
GO
/****** Object:  Schema [ref]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [ref]
GO
/****** Object:  Schema [well]    Script Date: 6/30/2022 9:49:59 AM ******/
CREATE SCHEMA [well]
GO
/****** Object:  Table [analysis].[Production_Statistics_Daily]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [analysis].[Production_Statistics_Daily](
	[Well_ID] [int] NOT NULL,
	[First_Prod_Date] [date] NULL,
	[Last_Prod_Date] [date] NULL,
	[Days_On_Production] [int] NULL,
	[Oil_Cumulative] [real] NULL,
	[Oil_Peak_Day] [real] NULL,
	[Oil_Peak_30_Days] [real] NULL,
	[Oil_Peak_60_Days] [real] NULL,
	[Oil_Peak_90_Days] [real] NULL,
	[Oil_Peak_180_Days] [real] NULL,
	[Oil_Peak_365_Days] [real] NULL,
	[Cum_Oil_365_Days] [real] NULL,
	[Cum_Oil_730_Days] [real] NULL,
	[Gas_Cumulative] [real] NULL,
	[Gas_Peak_Day] [real] NULL,
	[Gas_Peak_30_Days] [real] NULL,
	[Gas_Peak_60_Days] [real] NULL,
	[Gas_Peak_90_Days] [real] NULL,
	[Gas_Peak_180_Days] [real] NULL,
	[Gas_Peak_365_Days] [real] NULL,
	[Cum_Gas_365_Days] [real] NULL,
	[Cum_Gas_730_Days] [real] NULL,
	[Water_Cumulative] [real] NULL,
	[Water_Peak_Day] [real] NULL,
	[Water_Peak_30_Days] [real] NULL,
	[Water_Peak_60_Days] [real] NULL,
	[Water_Peak_90_Days] [real] NULL,
	[Water_Peak_180_Days] [real] NULL,
	[Water_Peak_365_Days] [real] NULL,
	[Water_Peak_730_Days] [real] NULL,
	[Cum_Water_365_Days] [real] NULL,
	[Cum_Water_730_Days] [real] NULL,
	[BOE_Cumulative] [real] NULL,
	[BOE_Peak_Day] [real] NULL,
	[BOE_Peak_30_Days] [real] NULL,
	[BOE_Peak_60_Days] [real] NULL,
	[BOE_Peak_90_Days] [real] NULL,
	[BOE_Peak_180_Days] [real] NULL,
	[BOE_Peak_365_Days] [real] NULL,
	[BOE_Peak_730_Days] [real] NULL,
	[Cum_BOE_365_Days] [real] NULL,
	[Cum_BOE_730_Days] [real] NULL,
	[AVG_GOR_First_10_Days] [real] NULL,
	[AVG_GOR_First_180_Days] [real] NULL,
	[GOR_at_365_Days] [real] NULL,
	[GOR_at_730_Days] [real] NULL,
	[GOR_Last_30_Days] [real] NULL,
	[AVG_WOR_First_10_Days] [real] NULL,
	[AVG_WOR_First_180_Days] [real] NULL,
	[WOR_at_365_Days] [real] NULL,
	[WOR_at_730_Days] [real] NULL,
	[WOR_Last_30_Days] [real] NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Production_Statistics] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [well].[Header]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Header](
	[Well_ID] [int] IDENTITY(1,1) NOT NULL,
	[Link_Well_ID] [int] NULL,
	[API_Number] [varchar](14) NULL,
	[Well_Report_Name] [varchar](80) NULL,
	[Well_Report_Name_Short] [varchar](50) NULL,
	[Stick_Name] [varchar](50) NULL,
	[Trajectory] [varchar](20) NULL,
	[Lease_Name] [varchar](60) NULL,
	[Unit_Name] [varchar](70) NULL,
	[Well_Number] [varchar](50) NULL,
	[Operator] [varchar](80) NULL,
	[Initial_Operator] [varchar](70) NULL,
	[Producing_Formation] [nvarchar](60) NULL,
	[Producing_Interval] [nvarchar](100) NULL,
	[Formation_At_TD] [nvarchar](60) NULL,
	[Field_Name] [varchar](60) NULL,
	[Study_Area] [varchar](50) NULL,
	[Geologic_Area] [varchar](50) NULL,
	[Business_Unit] [varchar](50) NULL,
	[Well_Type] [varchar](25) NULL,
	[Well_Status] [varchar](50) NULL,
	[Well_Status_Date] [date] NULL,
	[Primary_Phase] [varchar](30) NULL,
	[Current_Producing_Method] [varchar](30) NULL,
	[Lateral_Length] [real] NULL,
	[Lateral_Length_Method] [varchar](100) NULL,
	[Perforated_Interval] [real] NULL,
	[Reserve_Class] [varchar](20) NULL,
	[Reserve_Category] [varchar](20) NULL,
	[Spud_Date] [date] NULL,
	[Rig_Release_Date] [date] NULL,
	[Frac_Start_Date] [date] NULL,
	[Frac_End_Date] [date] NULL,
	[Date_Permit_Submitted] [date] NULL,
	[Date_Permit_Approved] [date] NULL,
	[First_Prod_Date] [datetime] NULL,
	[Last_Prod_Date] [date] NULL,
	[IP_Date] [date] NULL,
	[IP_Oil] [real] NULL,
	[IP_Gas] [real] NULL,
	[IP_Water] [real] NULL,
	[IP_Hours_Tested] [real] NULL,
	[IP_Prod_Method] [real] NULL,
	[IP_Choke_Size] [varchar](20) NULL,
	[IP_FTP] [real] NULL,
	[IP_Csg_Press] [real] NULL,
	[KB_Elevation] [real] NULL,
	[Ground_Elevation] [real] NULL,
	[MD] [real] NULL,
	[Avg_TVD] [real] NULL,
	[Max_TVD] [real] NULL,
	[Percent_in_Formation] [real] NULL,
	[Percent_in_Interval] [real] NULL,
	[Pad_Name] [varchar](50) NULL,
	[Pad_Pop_Order] [int] NULL,
	[Facility_Name] [varchar](50) NULL,
	[Well_Data_Category] [varchar](50) NULL,
	[Well_Count] [int] NULL,
	[Completion_Count] [int] NULL,
	[Prod_Entity_Count] [int] NULL,
	[Lease_Number] [varchar](30) NULL,
	[GEOM] [geography] NULL,
	[Long_Geography] [geography] NULL,
	[Lateral_Midpoint_Geography] [geometry] NULL,
	[Lateral_Geography] [geography] NULL,
	[Endpoint_Geography] [geography] NULL,
	[State] [varchar](3) NULL,
	[County] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Basin] [varchar](50) NULL,
	[Type_Curve_Group] [varchar](50) NULL,
	[District] [bigint] NULL,
	[Survey] [varchar](60) NULL,
	[Abstract] [varchar](60) NULL,
	[Block] [varchar](50) NULL,
	[Section] [varchar](50) NULL,
	[Township] [varchar](50) NULL,
	[Range] [varchar](50) NULL,
	[Quarter_Quarter] [varchar](50) NULL,
	[Aries_Propnum] [varchar](12) NULL,
	[API_12] [varchar](12) NULL,
	[API_10] [varchar](10) NULL,
	[Type_Curve_ID] [int] NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
	[Row_Modified_By] [varchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Header] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [analysis].[Production_Statistics_Monthly]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [analysis].[Production_Statistics_Monthly](
	[Well_ID] [int] NOT NULL,
	[First_Prod_Date] [date] NULL,
	[Last_Prod_Date] [date] NULL,
	[Months_On_Production] [int] NULL,
	[Oil_Cumulative] [real] NULL,
	[Oil_REM] [real] NULL,
	[Oil_EUR] [real] NULL,
	[Oil_Peak_1_Month] [real] NULL,
	[Oil_Peak_3_Months] [real] NULL,
	[Oil_Peak_6_Months] [real] NULL,
	[Oil_Peak_12_Months] [real] NULL,
	[Oil_Peak_24_Months] [real] NULL,
	[Gas_Cumulative] [real] NULL,
	[Gas_Rem] [real] NULL,
	[Gas_EUR] [real] NULL,
	[Gas_Peak_1_Month] [real] NULL,
	[Gas_Peak_3_Months] [real] NULL,
	[Gas_Peak_6_Months] [real] NULL,
	[Gas_Peak_12_Months] [real] NULL,
	[Gas_Peak_24_Months] [real] NULL,
	[Water_Cumulative] [float] NULL,
	[Water_Peak_1_Month] [real] NULL,
	[Water_Peak_3_Months] [real] NULL,
	[Water_Peak_6_Months] [real] NULL,
	[Water_Peak_12_Months] [real] NULL,
	[Water_Peak_24_Months] [real] NULL,
	[BOE_Cumulative] [real] NULL,
	[BOE_Peak_1_Month] [real] NULL,
	[BOE_Peak_3_Months] [real] NULL,
	[BOE_Peak_6_Months] [real] NULL,
	[BOE_Peak_12_Months] [real] NULL,
	[BOE_Peak_24_Months] [real] NULL,
	[MCFE_Cumulative] [real] NULL,
	[MCFE_Peak_1_Month] [real] NULL,
	[MCFE_Peak_3_Months] [real] NULL,
	[MCFE_Peak_6_Months] [real] NULL,
	[MCFE_Peak_12_Months] [real] NULL,
	[MCFE_Peak_24_Months] [real] NULL,
	[Oil_5_Yr_Cum] [real] NULL,
	[Oil_10_Yr_Cum] [real] NULL,
	[Gas_5_Yr_Cum] [real] NULL,
	[Gas_10_Yr_Cum] [real] NULL,
	[Water_5_Yr_Cum] [real] NULL,
	[Water_10_Yr_Cum] [real] NULL,
	[BOE_5_Yr_Cum] [real] NULL,
	[BOE_10_Yr_Cum] [real] NULL,
	[MCFE_5_Yr_Cum] [real] NULL,
	[MCFE_10_Yr_Cum] [real] NULL,
	[First_Month_Gas_Oil_Ratio] [real] NULL,
	[Gas_Oil_Ratio_at_6_Months] [real] NULL,
	[Gas_Oil_Ratio_at_1_Yr] [real] NULL,
	[Gas_Oil_Ratio_at_2_Yrs] [real] NULL,
	[Last_Month_Gas_Oil_Ratio] [real] NULL,
	[Lateral_Midpoint] [geography] NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Production_Statistics_Monthly] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [frac].[Job_Data_by_Well]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [frac].[Job_Data_by_Well](
	[Well_ID] [int] NOT NULL,
	[Refrac_Number] [smallint] NOT NULL,
	[Frac_Service_Company] [nvarchar](50) NULL,
	[Frac_Start_Date] [smalldatetime] NULL,
	[Frac_End_Date] [smalldatetime] NULL,
	[Upper_Perf] [real] NULL,
	[Lower_Perf] [real] NULL,
	[Perforated_Lateral_Length] [real] NULL,
	[Completion_Code] [nvarchar](60) NULL,
	[Design_Completion_Code] [nvarchar](60) NULL,
	[Delivery_Method] [nvarchar](50) NULL,
	[Fluid_System] [nvarchar](50) NULL,
	[Total_Proppant] [float] NULL,
	[Total_Fluid] [float] NULL,
	[Avg_Clusters_Per_Stage] [real] NULL,
	[Avg_Cluster_Spacing] [real] NULL,
	[Avg_Stage_Length] [real] NULL,
	[Proppant_Type] [varchar](50) NULL,
	[Proppant_Size] [varchar](50) NULL,
	[Proppant_Details] [varchar](150) NULL,
	[Number_Of_Proppant_Sizes] [int] NULL,
	[Size_Range] [float] NULL,
	[Minimum_Proppant_Mesh_Size] [varchar](12) NULL,
	[Maximum_Proppant_Mesh_Size] [varchar](12) NULL,
	[Minimum_Proppant_Grain_Size] [float] NULL,
	[Maximum_Proppant_Grain_Size] [float] NULL,
	[Number_Of_Stages] [smallint] NULL,
	[Stage_Length_Method] [nvarchar](100) NULL,
	[Number_Of_Clusters] [smallint] NULL,
	[Avg_Cluster_Length] [real] NULL,
	[Avg_Perfs_Per_Cluster] [real] NULL,
	[Number_Of_Stages_Lost] [int] NULL,
	[Number_of_Stages_Cancelled] [int] NULL,
	[Total_Lateral_Length_Lost] [real] NULL,
	[Lateral_Length_Lost_Stage_Gap] [real] NULL,
	[Lateral_Length_Lost_Screen_Out] [real] NULL,
	[Lateral_Length_Lost_Cancelled] [real] NULL,
	[Perforation_Strategy] [varchar](20) NULL,
	[Number_Of_Perforations] [smallint] NULL,
	[Perf_Diameter] [real] NULL,
	[Shots_Per_Ft] [real] NULL,
	[Avg_Design_Cluster_Spacing] [real] NULL,
	[Avg_Design_Clusters_Per_Stage] [real] NULL,
	[Design_Volume_Total_Fluid] [real] NULL,
	[Design_Mass_Total_Proppant] [real] NULL,
	[Design_Number_of_Stages] [int] NULL,
	[Avg_Design_Stage_Length] [real] NULL,
	[Design_Number_of_Clusters] [smallint] NULL,
	[Design_Number_of_Perforations] [smallint] NULL,
	[Avg_Treatment_Rate] [real] NULL,
	[Avg_Breakdown_Pressure] [real] NULL,
	[Avg_ISIP_Pre_Frac] [real] NULL,
	[Avg_ISIP_Post_Frac] [real] NULL,
	[Avg_Pressure_at_5_Minutes] [real] NULL,
	[Avg_Pressure_at_10_Minutes] [real] NULL,
	[Avg_Max_Pressure] [real] NULL,
	[Avg_Treatment_Pressure] [real] NULL,
	[Avg_ISIP_Pre_Frac_Gradient] [real] NULL,
	[Avg_ISIP_Post_Frac_Gradient] [real] NULL,
	[Avg_Frac_Gradient] [real] NULL,
	[Avg_Final_Concentration] [real] NULL,
	[Avg_Volume_Overflush] [real] NULL,
	[Pad_Volume] [real] NULL,
	[Number_Of_Casing_Strings] [smallint] NULL,
	[Remarks] [nvarchar](500) NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Job_Data_By_Well] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Refrac_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [well].[Deviation_Survey_Summary]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Deviation_Survey_Summary](
	[Well_ID] [int] NOT NULL,
	[Survey_ID] [bigint] NOT NULL,
	[Drilled_Lateral_Length] [real] NULL,
	[Depth_Max_Md] [float] NULL,
	[Depth_Lateral_Start] [float] NULL,
	[Depth_Avg_TVD] [float] NULL,
	[Depth_Max_TVD] [float] NULL,
	[Elev_Avg_TVDSS] [float] NULL,
	[Elev_Max_TVDSS] [float] NULL,
	[Azimuth] [float] NULL,
	[Dip] [float] NULL,
	[Toe_Up_Down] [nvarchar](10) NULL,
	[Elev_Standard_Deviation] [float] NULL,
	[Direction_Standard_Deviation] [float] NULL,
	[Max_Vertical_Dog_Leg_Severity] [float] NULL,
	[Lateral_Start_X] [float] NULL,
	[Lateral_Start_Y] [float] NULL,
	[Lateral_End_X] [float] NULL,
	[Lateral_End_Y] [float] NULL,
	[Active_Survey] [varchar](1) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Deviation_Survey_Summary] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Survey_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [well].[Offsets]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Offsets](
	[Well_Id] [int] NOT NULL,
	[Offset_Well_Id] [int] NOT NULL,
	[Avg_Well_Spacing] [float] NULL,
	[Heel_Toe_Offset] [float] NULL,
	[Avg_TVD_Difference] [float] NULL,
	[Percent_Overlap] [float] NULL,
	[Parent_Child] [varchar](6) NULL,
	[Left_Right] [varchar](5) NULL,
 CONSTRAINT [PK_Offsets] PRIMARY KEY CLUSTERED 
(
	[Well_Id] ASC,
	[Offset_Well_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [well].[Ownership]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Ownership](
	[Well_ID] [int] NOT NULL,
	[Ownership_Number] [smallint] NOT NULL,
	[Reversion_Type] [varchar](30) NULL,
	[Reversion_Value] [float] NULL,
	[Working_Interest] [float] NULL,
	[Revenue_Interest] [float] NULL,
	[Reversion_Balance] [float] NULL,
	[Participation] [varchar](30) NULL,
 CONSTRAINT [PK_Ownership_2] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Ownership_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vBase_Header]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[vBase_Header]
AS

WITH
	q0 AS
		(SELECT
				2500 AS MaxDist
			  , 300 AS MaxTVDDist
			  , 40 AS Min_Pct_Overlap),
	q1 AS
		(SELECT
				Well_ID
			  , MIN(wo.Avg_Well_Spacing) AS left_well_spcg
			FROM well.[Offsets] wo
			   , q0
			WHERE wo.Avg_TVD_Difference < MaxDist
			AND wo.Left_Right = 'LEFT'
			AND wo.Avg_Well_Spacing > 100
			AND wo.Avg_Well_Spacing < q0.MaxDist
			AND wo.Avg_TVD_Difference < q0.MaxTVDDist
			AND wo.Percent_Overlap > q0.Min_Pct_Overlap
			GROUP BY wo.Well_ID),
	q2 AS
		(SELECT
				Well_ID
			  , MIN(wo.Avg_Well_Spacing) AS right_well_spcg
			FROM well.[Offsets] wo
			   , q0
			WHERE wo.Avg_TVD_Difference < MaxTVDDist
			AND wo.Left_Right = 'RIGHT'
			AND wo.Avg_Well_Spacing > 100
			AND wo.Avg_Well_Spacing < q0.MaxDist
			AND wo.Avg_TVD_Difference < q0.MaxTVDDist
			AND wo.Percent_Overlap > q0.Min_Pct_Overlap
			GROUP BY wo.Well_ID),

	q3 AS
		(SELECT
				wh.Well_ID
			  , wh.Well_Status
			  , left_well_spcg
			  , right_well_spcg
			FROM well.Header wh
			LEFT JOIN q1
				ON wh.Well_ID = q1.Well_ID
			LEFT JOIN q2
				ON wh.Well_ID = q2.Well_ID),
	spcg AS
		(   SELECT
			Well_ID
		  , left_well_spcg
		  , right_well_spcg
		  , CASE
				WHEN left_well_spcg IS NULL AND
					right_well_spcg IS NULL THEN 'Unbounded'
				WHEN left_well_spcg IS NOT NULL AND
					right_well_spcg IS NOT NULL THEN 'Center'
				ELSE 'Edge'
			END AS spcg_type
		  , CASE
				WHEN left_well_spcg IS NULL AND
					right_well_spcg IS NULL THEN NULL
				WHEN left_well_spcg IS NOT NULL AND
					right_well_spcg IS NOT NULL THEN (left_well_spcg + right_well_spcg) / 2
				WHEN left_well_spcg IS NOT NULL THEN left_well_spcg
				WHEN right_well_spcg IS NOT NULL THEN right_well_spcg
				ELSE NULL
			END AS well_spacing
		FROM q3)

SELECT
	wh.Well_Id										 AS Well_Id
  , wh.API_Number									 AS API_Number
  , wh.Well_Report_Name								 AS Well_Official_Name
  , wh.Well_Report_Name_Short						 AS Well_Name
  , wh.Lease_Name									 AS Lease_Name
  , wh.Well_Number									 AS Well_Number
  , wh.Operator										 AS Operator
  , wh.Producing_Formation							 AS Formation
  , wh.Producing_Interval							 AS Interval
  , wh.Well_Status									 AS Well_Status
  , wh.Type_Curve_Group								 AS Type_Curve_Group
  , wh.Study_Area									 AS Study_Area
  , wh.Primary_Phase								 AS Primary_Phase
  , wh.Current_Producing_Method						 AS Producing_Method
  , wh.Trajectory									 AS Trajectory
  , wh.Lateral_Length								 AS Lateral_Length
  , ROUND(ws.Well_Spacing,0)						 AS Well_Spacing
  , ws.spcg_type									 AS Well_Spacing_Type
  , wh.[Reserve_Class] + '-' + wh.[Reserve_Category] AS Rsv_Class_Cat
  , ps.First_Prod_Date								 AS First_Prod_Date
  , ps.Last_Prod_Date								 AS Last_Prod_Date
  , YEAR(wh.[First_Prod_Date])						 AS Vintage
  , wh.Spud_Date									 AS Spud_Date
  , wh.Pad_Name										 AS Pad_Name
  , wh.State										 AS State
  , wh.County										 AS County
  , wh.Geologic_Area								 AS Geologic_Area
  , wd.Drilled_Lateral_Length						 AS Drilled_Lateral_Length
  , wd.Elev_Avg_TVDSS								 AS Avg_TVD
  , IIF(o.[Working_Interest] > 0, 'Y', 'N')			 AS Elephant_Ownership
  , [o].[Working_Interest]							 AS Elephant_WI
  , [o].[Revenue_Interest]							 AS Elephant_NRI
  , o.[Participation]								 AS Elephant_Participation_Type
  , CASE
		WHEN o.[Participation] = 'Participate'
			THEN 'Participated'
		WHEN o.[Participation] = 'DrillCo'
			THEN 'Did not Participate'
		WHEN o.[Participation] = 'Non-Consent'
			THEN 'Did not Participate'
		ELSE o.[Participation]
	END												 AS Elephant_Participated
  , IIF(wh.Lateral_Length >0, fw.Total_Proppant/wh.Lateral_Length, NULL)	 AS Lb_Per_ft
  , IIF(wh.Lateral_Length >0, fw.Total_Fluid/wh.Lateral_Length, NULL)	 AS Bbl_Per_ft
FROM well.Header AS wh
	LEFT JOIN well.Deviation_Survey_Summary AS wd ON
		wd.Well_Id = wh.Well_Id
	LEFT JOIN well.[Ownership] AS [o] ON
		[wh].[Well_Id] = [o].[Well_Id]
	LEFT JOIN analysis.Production_Statistics_Monthly AS ps ON
		wh.Well_Id = ps.Well_Id
	LEFT JOIN analysis.Production_Statistics_Daily AS psd ON
		wh.Well_Id = psd.Well_Id
	LEFT JOIN spcg ws ON
		ws.Well_Id = wh.Well_Id
	LEFT JOIN frac.Job_Data_by_Well fw ON
		fw.Well_Id = wh.Well_Id
WHERE
	(wd.Active_Survey = 'Y' OR
	wd.Active_Survey IS NULL) AND
	wh.[Active_Ind] = 'Y'
GO
/****** Object:  View [dbo].[vProduction_Statistics_Daily]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vProduction_Statistics_Daily]

AS
SELECT
	bh.*
  , psd.[First_Prod_Date] AS First_Daily_Prod_Date
  , psd.[Last_Prod_Date]  AS Last_Daily_Prod_Date
  , [Days_On_Production]
  , [Oil_Cumulative]
  , [Oil_Peak_Day]
  , [Oil_Peak_30_Days]
  , [Oil_Peak_60_Days]
  , [Oil_Peak_90_Days]
  , [Oil_Peak_180_Days]
  , [Oil_Peak_365_Days]
  , [Cum_Oil_365_Days]
  , [Cum_Oil_730_Days]
  , [Gas_Cumulative]
  , [Gas_Peak_Day]
  , [Gas_Peak_30_Days]
  , [Gas_Peak_60_Days]
  , [Gas_Peak_90_Days]
  , [Gas_Peak_180_Days]
  , [Gas_Peak_365_Days]
  , [Cum_Gas_365_Days]
  , [Cum_Gas_730_Days]
  , [Water_Cumulative]
  , [Water_Peak_Day]
  , [Water_Peak_30_Days]
  , [Water_Peak_60_Days]
  , [Water_Peak_90_Days]
  , [Water_Peak_180_Days]
  , [Water_Peak_365_Days]
  , [Water_Peak_730_Days]
  , [Cum_Water_365_Days]
  , [Cum_Water_730_Days]
  , [BOE_Cumulative]
  , [BOE_Peak_Day]
  , [BOE_Peak_30_Days]
  , [BOE_Peak_60_Days]
  , [BOE_Peak_90_Days]
  , [BOE_Peak_180_Days]
  , [BOE_Peak_365_Days]
  , [BOE_Peak_730_Days]
  , [Cum_BOE_365_Days]
  , [Cum_BOE_730_Days]
  , [AVG_GOR_First_10_Days]
  , [AVG_GOR_First_180_Days]
  , [GOR_at_365_Days]
  , [GOR_at_730_Days]
  , [GOR_Last_30_Days]
  , [AVG_WOR_First_10_Days]
  , [AVG_WOR_First_180_Days]
  , [WOR_at_365_Days]
  , [WOR_at_730_Days]
  , [WOR_Last_30_Days]
  , [Row_Modified_By]
  , [Row_Modified_Date]
  , [Active_Ind]
FROM [analysis].[Production_Statistics_Daily] psd
	JOIN dbo.vBase_Header AS bh ON
		psd.Well_Id = bh.Well_Id

GO
/****** Object:  View [dbo].[vProduction_Statistics_Monthly]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vProduction_Statistics_Monthly]

AS

SELECT
bh.*
  , [Months_On_Production]
  , [Oil_Cumulative]
  , [Oil_Rem]
  , [Oil_EUR]
  , [Oil_Peak_1_Month]
  , [Oil_Peak_3_Months]
  , [Oil_Peak_6_Months]
  , [Oil_Peak_12_Months]
  , [Oil_Peak_24_Months]
  , [Gas_Cumulative]
  , [Gas_Rem]
  , [Gas_EUR]
  , [Gas_Peak_1_Month]
  , [Gas_Peak_3_Months]
  , [Gas_Peak_6_Months]
  , [Gas_Peak_12_Months]
  , [Gas_Peak_24_Months]
  , [Water_Cumulative]
  , [Water_Peak_1_Month]
  , [Water_Peak_3_Months]
  , [Water_Peak_6_Months]
  , [Water_Peak_12_Months]
  , [Water_Peak_24_Months]
  , [BOE_Cumulative]
  , [BOE_Peak_1_Month]
  , [BOE_Peak_3_Months]
  , [BOE_Peak_6_Months]
  , [BOE_Peak_12_Months]
  , [BOE_Peak_24_Months]
  , [MCFE_Cumulative]
  , [MCFE_Peak_1_Month]
  , [MCFE_Peak_3_Months]
  , [MCFE_Peak_6_Months]
  , [MCFE_Peak_12_Months]
  , [MCFE_Peak_24_Months]
  , [Oil_5_Yr_Cum]
  , [Oil_10_Yr_Cum]
  , [Gas_5_Yr_Cum]
  , [Gas_10_Yr_Cum]
  , [Water_5_Yr_Cum]
  , [Water_10_Yr_Cum]
  , [BOE_5_Yr_Cum]
  , [BOE_10_Yr_Cum]
  , [MCFE_5_Yr_Cum]
  , [MCFE_10_Yr_Cum]
  , [First_Month_Gas_Oil_Ratio]
  , [Gas_Oil_Ratio_at_6_Months]
  , [Gas_Oil_Ratio_at_1_Yr]
  , [Gas_Oil_Ratio_at_2_Yrs]
  , [Last_Month_Gas_Oil_Ratio]
  , [Lateral_Midpoint]
  , [Row_Modified_By]
  , [Row_Modified_Date]
  , [Active_Ind]
FROM [analysis].[Production_Statistics_Monthly] psm
	JOIN dbo.vBase_Header AS bh ON
		psm.Well_Id = bh.Well_Id

GO
/****** Object:  Table [prod].[Production_Monthly]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prod].[Production_Monthly](
	[Well_ID] [int] NOT NULL,
	[Prod_Date] [date] NOT NULL,
	[Months_On_Prod] [int] NULL,
	[Months_On_Oil] [int] NULL,
	[Months_On_Gas] [int] NULL,
	[Months_Since_Peak_Oil] [int] NULL,
	[Months_Since_Peak_Gas] [int] NULL,
	[Oil] [float] NULL,
	[Gas] [float] NULL,
	[Water] [float] NULL,
	[Gas_Sales] [real] NULL,
	[Gas_Flared] [real] NULL,
	[Gas_Vented] [real] NULL,
	[Gas_Lift_Inj_Gas] [real] NULL,
	[Days_On] [real] NULL,
	[Tubing_Pressure] [real] NULL,
	[Casing_Pressure] [real] NULL,
	[Surface_Temp] [real] NULL,
	[Line_Pressure] [real] NULL,
	[Bh_Gauge_Pressure] [real] NULL,
	[Calculated_Bottom_Hole_Pressure] [real] NULL,
	[BHP] [real] NULL,
	[BHP_Method] [nvarchar](30) NULL,
	[Prod_Method] [nvarchar](50) NULL,
	[Flow_Path] [nvarchar](25) NULL,
	[Remarks] [nvarchar](500) NULL,
	[Forecast] [char](1) NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Production_Monthly] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Prod_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vProduction_Monthly]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[vProduction_Monthly]
AS
SELECT
	bh.*
  , [Prod_Date]											 AS Prod_Date
  , [Days_On]
  , [Months_On_Oil]
  , [Months_On_Gas]
  , [pm].[Months_Since_Peak_Oil]
  , [Oil]
  , [Gas]
  , IIF([Oil] > 0, [Gas] / [Oil] * 1000, NULL)			 AS GOR
  , [Water]
  , [Oil] / COALESCE(bh.[Lateral_Length], 9500) * 1000	 AS Nrm_Oil
  , [Gas] / COALESCE(bh.[Lateral_Length], 9500) * 1000	 AS Nrm_Gas
  , [Water] / COALESCE(bh.[Lateral_Length], 9500) * 1000 AS Nrm_Water
  , [Tubing_Pressure]
  , [Casing_Pressure]
  , [Surface_Temp]
  , [Line_Pressure]
  , [Bh_Gauge_Pressure]
  , [Calculated_Bottom_Hole_Pressure]
  , [BHP]
  , [BHP_Method]
  , [Prod_Method]
  , [Flow_Path]
  , [Remarks]
  , [Forecast]
FROM [prod].[Production_Monthly] AS [pm]
	JOIN dbo.[vBase_Header] AS [bh] ON
		[pm].[Well_Id] = [bh].[Well_Id]
GO
/****** Object:  Table [prod].[Production_Daily]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prod].[Production_Daily](
	[Well_ID] [int] NOT NULL,
	[Prod_Date] [date] NOT NULL,
	[Days_On] [int] NULL,
	[Days_On_Oil] [int] NULL,
	[Days_On_Gas] [int] NULL,
	[Days_Since_Peak_Oil] [int] NULL,
	[Days_Since_Peak_Gas] [int] NULL,
	[Oil] [real] NULL,
	[Gas] [real] NULL,
	[Water] [real] NULL,
	[Gas_Sales] [real] NULL,
	[Gas_Flared] [real] NULL,
	[Gas_Vented] [real] NULL,
	[Gas_Lift_Inj_Gas] [real] NULL,
	[Downtime_Hrs] [real] NULL,
	[Choke_Size] [real] NULL,
	[Tubing_Pressure] [real] NULL,
	[Casing_Pressure] [real] NULL,
	[Surface_Temp] [real] NULL,
	[Line_Pressure] [real] NULL,
	[Bh_Gauge_Pressure] [real] NULL,
	[Calculated_Bottom_Hole_Pressure] [real] NULL,
	[BHP] [real] NULL,
	[BHP_Method] [nvarchar](30) NULL,
	[Prod_Method] [nvarchar](50) NULL,
	[Flow_Path] [nvarchar](25) NULL,
	[Remarks] [nvarchar](500) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Production_Daily] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Prod_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vProduction_Daily]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[vProduction_Daily]



AS

SELECT
	bh.*
  , [Prod_Date]
  , [Days_On]
  , [Days_On_Oil]
  , [Days_On_Gas]
  , [Oil]
  , [Gas]
  , IIF([Oil] > 0, [Gas] / [Oil] * 1000, NULL)			 AS GOR
  , [Water]
  , [Oil] / COALESCE(bh.[Lateral_Length], 9500) * 9500	 AS Nrm_Oil
  , [Gas] / COALESCE(bh.[Lateral_Length], 9500) * 9500	 AS Nrm_Gas
  , [Water] / COALESCE(bh.[Lateral_Length], 9500) * 9500 AS Nrm_Water
  , [Gas_Flared]
  , [Gas_Vented]
  , [Gas_Lift_Inj_Gas]
  , [Choke_Size]
  , [Tubing_Pressure]
  , [Casing_Pressure]
  , [Surface_Temp]
  , [Line_Pressure]
  , [Bh_Gauge_Pressure]
  , [Calculated_Bottom_Hole_Pressure]
  , [BHP]
  , [BHP_Method]
  , [Prod_Method]
  , [Flow_Path]
  , [Remarks]
FROM [prod].[Production_Daily] AS [pd]
	JOIN dbo.[vBase_Header] AS [bh] ON
		[pd].[Well_Id] = [bh].[Well_Id]
GO
/****** Object:  View [dbo].[vWell_Spacing]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vWell_Spacing]


AS

WITH q0
AS
(SELECT
		4000 AS MaxDist
	   ,250 AS MaxTVDDist),
q1
AS
(SELECT
		Well_Id
	   ,MIN(wo.Avg_Well_Spacing) AS left_well_spcg
	FROM well.[Offsets] wo
		,q0
	WHERE wo.Avg_TVD_Difference < MaxDist
	AND wo.Left_Right = 'LEFT'
	AND wo.Avg_Well_Spacing > 100
	AND wo.Avg_Well_Spacing < 3500
	AND wo.Avg_TVD_Difference < MaxTVDDist
	AND wo.Percent_Overlap > 40
	GROUP BY wo.Well_Id),
q2
AS
(SELECT
		Well_Id
	   ,MIN(wo.Avg_Well_Spacing) AS right_well_spcg
	FROM well.[Offsets] wo
		,q0
	WHERE wo.Avg_TVD_Difference < MaxTVDDist
	AND wo.Left_Right = 'RIGHT'
	AND wo.Avg_Well_Spacing > 100
	AND wo.Avg_Well_Spacing < 3500
	AND wo.Avg_TVD_Difference < MaxDist
	AND wo.Percent_Overlap > 40
	GROUP BY wo.Well_Id),

q3
AS
(SELECT
		wh.Well_Id
	   ,wh.Well_Status
	   ,left_well_spcg
	   ,right_well_spcg
	FROM well.Header wh
	LEFT JOIN q1
		ON wh.Well_Id = q1.Well_Id
	LEFT JOIN q2
		ON wh.Well_Id = q2.Well_Id)

SELECT
	Well_Id
   ,left_well_spcg
   ,right_well_spcg
   ,CASE
		WHEN left_well_spcg IS NULL AND
			right_well_spcg IS NULL THEN 'Unbounded'
		WHEN left_well_spcg IS NOT NULL AND
			right_well_spcg IS NOT NULL THEN 'Center'
		ELSE 'Edge'
	END AS spcg_type
   ,CASE
		WHEN left_well_spcg IS NULL AND
			right_well_spcg IS NULL THEN NULL
		WHEN left_well_spcg IS NOT NULL AND
			right_well_spcg IS NOT NULL THEN (left_well_spcg + right_well_spcg) / 2
		WHEN left_well_spcg IS NOT NULL THEN left_well_spcg
		WHEN right_well_spcg IS NOT NULL THEN right_well_spcg
		ELSE NULL
	END AS well_spacing
FROM q3
GO
/****** Object:  View [well].[vDeviation_Survey_Geometries]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create View [well].[vDeviation_Survey_Geometries] as
SELECT  [Well_ID]
      ,[Long_Geography] as GEOM
FROM [well].[Header]
Where GEOM is not null
GO
/****** Object:  Table [well].[Locations]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Locations](
	[Well_ID] [int] NOT NULL,
	[Location_Type] [nvarchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[GEOM] [geometry] NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Location_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [well].[Reservoir_Properties]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Reservoir_Properties](
	[Well_ID] [int] NOT NULL,
	[Reservoir_Fluid_Type] [nvarchar](40) NULL,
	[Initial_Pressure] [real] NULL,
	[Initial_Pressure_Depth] [real] NULL,
	[Pressure_Datum_Depth] [real] NULL,
	[Initial_Pressure_Method] [nvarchar](40) NULL,
	[BVH] [real] NULL,
	[TOC] [real] NULL,
	[Pct_Clay] [real] NULL,
	[Reservoir_Temperature] [real] NULL,
	[API_Oil_Gravity] [real] NULL,
	[Gas_Gravity] [real] NULL,
	[Water_Gravity] [real] NULL,
	[Inj_Gas_Gravity] [real] NULL,
	[Bubble_Point_Pressure] [real] NULL,
	[Dew_Point_Pressure] [real] NULL,
	[Initial_Solution_Gas_Oil_Ratio] [real] NULL,
	[Comments] [nvarchar](500) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Reservoir_Properties_2] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vOneline]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE VIEW [dbo].[vOneline]


AS

WITH
	q1 AS
		(SELECT
				[Well_Id]
			  , [X]
			  , [Y]
			  , Longitude
			  , Latitude
			FROM [well].[Locations]
			WHERE Location_Type = 'Lateral Midpoint')
SELECT
	bh.*
  , wh.API_10
  , wh.Aries_Propnum
  , wh.Unit_Name
  , wh.Initial_Operator
  , wh.Well_Type
  , wh.Well_Status_Date
  , wh.Current_Producing_Method
  , wh.Lateral_Length_Method
  , wh.Reserve_Class
  , wh.Reserve_Category
  , COALESCE(ps.Months_On_Production, 0)													  AS Monthly_Prod_Data_Count
  , COALESCE(psd.Days_On_Production, 0)														  AS Daily_Prod_Data_Count
  , wh.Date_Permit_Submitted
  , wh.Date_Permit_Approved
  , ps.Months_On_Production
  , wh.Rig_Release_Date
  , wh.Frac_Start_Date
  , wh.Frac_End_Date
  , wh.KB_Elevation
  , wh.Ground_Elevation
  , wh.Facility_Name
  , wh.Lease_Number
  , COALESCE(wh.geom, wh.Endpoint_Geography)												  AS geom
  , wh.Percent_in_Formation
  , wh.Percent_in_Interval
  , wh.Region
  , wh.Basin
  , wh.Field_Name
  , wh.Section
  , wh.Township
  , wh.[Range]
  , q1.Longitude																			  AS midpoint_longitude
  , q1.Latitude																				  AS midpoint_latitude
  , q1.X																					  AS lateral_midpoint_x
  , q1.Y																					  AS lateral_midpoint_y
  , fw.[Total_Proppant]
  , fw.[Total_Fluid]
  , fw.[Avg_Clusters_Per_Stage]
  , fw.[Avg_Cluster_Spacing]
  , fw.[Avg_Stage_Length]
  , fw.[Frac_Service_Company]
  , fw.[Upper_Perf]
  , fw.[Lower_Perf]
  , fw.[Perforated_Lateral_Length]
  , fw.[Completion_Code]
  , fw.[Delivery_Method]
  , fw.[Fluid_System]
  , fw.[Proppant_Type]
  , fw.[Proppant_Size]
  , fw.[Number_Of_Stages]
  , fw.[Avg_Treatment_Rate]
  , fw.[Avg_Breakdown_Pressure]
  , fw.[Avg_Isip_Pre_Frac]
  , fw.[Avg_Max_Pressure]
  , fw.[Number_Of_Casing_Strings]
  , wd.Depth_Max_Md
  , wd.Depth_Lateral_Start
  , wd.Depth_Max_TVD
  , wd.Elev_Avg_TVDSS
  , wd.Azimuth
  , ps.Oil_Cumulative / 1000																  AS Oil_Cum
  , ps.Oil_Rem / 1000																		  AS Oil_Rem
  , ps.Oil_EUR / 1000																		  AS Oil_EUR
  , ps.Oil_Peak_3_Months
  , ps.Oil_Peak_6_Months
  , ps.Oil_Peak_12_Months
  , psd.Oil_Peak_30_Days
  , psd.Oil_Peak_90_Days
  , psd.Oil_Peak_180_Days
  , IIF(wh.Lateral_Length > 0, ps.Oil_EUR / wh.Lateral_Length * 9.5, NULL)					  AS Nrm_Oil_EUR
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_1_Month / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_1_Month
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_6_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_6_Months
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_12_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_30_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_30_Days
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_60_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_60_Days
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_90_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_90_Days
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_180_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Oil_Peak_180_Days
  , IIF(wh.Lateral_Length > 0, ps.Oil_5_Yr_Cum / wh.Lateral_Length * 9500, NULL)			  AS Nrm_Oil_5_Yr_Cum
  , IIF(wh.Lateral_Length > 0, ps.Oil_10_Yr_Cum / wh.Lateral_Length * 9500, NULL)			  AS Nrm_Oil_10_Yr_Cum
  , ps.Gas_Rem / 1000																		  AS Gas_Rem
  , ps.Gas_EUR / 1000																		  AS Gas_EUR
  , ps.Gas_Peak_3_Months
  , ps.Gas_Peak_6_Months
  , ps.Gas_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_EUR / wh.Lateral_Length * 9.5, NULL)					  AS Nrm_Gas_EUR
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Gas_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_6_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Gas_Peak_6_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_12_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Gas_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_5_Yr_Cum / wh.Lateral_Length * 9500, NULL)			  AS Nrm_Gas_5_Yr_Cum
  , IIF(wh.Lateral_Length > 0, ps.Gas_10_Yr_Cum / wh.Lateral_Length * 9500, NULL)			  AS Nrm_Gas_10_Yr_Cum
  , ps.Water_Cumulative / 1000																  AS Water_Cum
  , ps.Water_Peak_3_Months
  , ps.Water_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.Water_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_Water_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.Water_Peak_12_Months / wh.Lateral_Length * 9500, NULL)	  AS Nrm_Water_Peak_12_Months
  , ps.BOE_Cumulative / 1000																  AS MBOE_Cum
  , (ps.Oil_Rem + ps.Gas_Rem / 6) / 1000													  AS MBOE_Rem
  , (ps.Oil_EUR + ps.Gas_EUR / 6) / 1000													  AS MBOE_EUR
  , ps.BOE_Peak_3_Months
  , ps.BOE_Peak_6_Months
  , ps.BOE_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, (ps.Oil_EUR + ps.Gas_EUR / 6) / wh.Lateral_Length * 9.5, NULL) AS Nrm_BOE_EUR
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_30_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_30_Days
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_60_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_60_Days
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_90_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_90_Days
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_180_Days / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_180_Days
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_1_Month / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_1_Month
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_6_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_6_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_12_Months / wh.Lateral_Length * 9500, NULL)		  AS Nrm_BOE_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_5_Yr_Cum / wh.Lateral_Length * 9500, NULL)			  AS Nrm_BOE_5_Yr_Cum
  , IIF(wh.Lateral_Length > 0, ps.BOE_10_Yr_Cum / wh.Lateral_Length * 9500, NULL)			  AS Nrm_BOE_10_Yr_Cum
  , ps.First_Month_Gas_Oil_Ratio
  , psd.AVG_GOR_First_10_Days
  , psd.AVG_WOR_First_10_Days
  , psd.AVG_GOR_First_180_Days
  , psd.AVG_WOR_First_180_Days
  , ps.Gas_Oil_Ratio_at_6_Months
  , ps.Gas_Oil_Ratio_at_1_Yr
  , ps.Gas_Oil_Ratio_at_2_Yrs
  , ps.Last_Month_Gas_Oil_Ratio
  , wr.Reservoir_Fluid_Type
  , wr.Initial_Pressure
  , wr.Pressure_Datum_Depth
  , wr.Initial_Pressure_Method
  , wr.BVH
  , wr.TOC
  , wr.Pct_Clay
  , wr.Reservoir_Temperature
  , wr.API_Oil_Gravity
  , wr.Gas_Gravity
  , wr.Water_Gravity
  , wr.Bubble_Point_Pressure
  , wr.Initial_Solution_Gas_Oil_Ratio
FROM well.Header AS wh
	LEFT JOIN well.Reservoir_Properties AS wr ON
		wr.Well_Id = wh.Well_Id
	LEFT JOIN well.Deviation_Survey_Summary AS wd ON
		wd.Well_Id = wh.Well_Id
	LEFT JOIN frac.Job_Data_by_Well AS fw ON
		fw.Well_Id = wh.Well_Id
	LEFT JOIN [analysis].[Production_Statistics_Monthly] AS ps ON
		ps.Well_Id = wh.Well_Id
	LEFT JOIN [analysis].[Production_Statistics_Daily] AS psd ON
		psd.Well_Id = wh.Well_Id
	LEFT JOIN dbo.vBase_Header AS bh ON
		[bh].[Well_Id] = [wh].[Well_Id]
	LEFT JOIN q1 ON
		wh.Well_Id = q1.Well_Id
WHERE
	(wd.Active_Survey = 'Y' OR
	wd.Active_Survey IS NULL) AND
	(fw.Refrac_Number IS NULL OR
	fw.Refrac_Number = 1) AND
	wh.[Active_Ind] = 'Y'
GO
/****** Object:  Table [well].[Deviation_Surveys]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[Deviation_Surveys](
	[Well_ID] [int] NOT NULL,
	[Survey_ID] [bigint] NOT NULL,
	[Measured_Depth] [float] NOT NULL,
	[TVD] [float] NULL,
	[TVD_SS] [float] NULL,
	[Inclination] [float] NULL,
	[Azimuth] [float] NULL,
	[N_S] [float] NULL,
	[E_W] [float] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[In_Perforated_Interval] [varchar](1) NULL,
	[In_Lateral] [varchar](1) NULL,
	[Distance_Projection] [float] NULL,
	[Dog_Leg_Severity] [float] NULL,
	[Geography] [geography] NULL,
	[Active_Survey] [varchar](1) NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Deviation_Surveys] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Survey_ID] ASC,
	[Measured_Depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [well].[vDeviation_Surveys]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [well].[vDeviation_Surveys] AS

SELECT wds.[Well_ID]
      ,wh.API_12
      ,[Survey_ID]
      ,[Measured_Depth]
      ,[TVD]
      ,[TVD_SS]
      ,[Inclination]
      ,[Azimuth]
      ,[N_S]
      ,[E_W]
      ,[Latitude]
      ,[Longitude]
      ,[X]
      ,[Y]
      ,[In_Perforated_Interval]
      ,[In_Lateral]
      ,[Distance_Projection]
      ,[Dog_Leg_Severity]
      ,[Geography]
  FROM [well].[Deviation_Surveys] wds
  JOIN well.Header wh ON wh.Well_ID=wds.Well_ID
  WHERE wds.Active_Survey='Y'
GO
/****** Object:  View [dbo].[vFrac_Job_Data_By_Well]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vFrac_Job_Data_By_Well]
AS
  SELECT
      bh.*
    , Total_Proppant
    , Total_Fluid
    , Avg_Clusters_Per_Stage
    , Avg_Cluster_Spacing
    , Avg_Stage_Length
    , Frac_Service_Company
    , Frac_Start_Date
    , Frac_End_Date
    , Upper_Perf
    , Lower_Perf
    , Perforated_Lateral_Length
    , Completion_Code
    , Design_Completion_Code
    , Delivery_Method
    , Fluid_System
    , Proppant_Type
    , Proppant_Size
    , Proppant_Details
    , Number_Of_Proppant_Sizes
    , Size_Range
    , Minimum_Proppant_Mesh_Size
    , Maximum_Proppant_Mesh_Size
    , Minimum_Proppant_Grain_Size
    , Maximum_Proppant_Grain_Size
    , Number_Of_Stages
    , Stage_Length_Method
    , Number_Of_Clusters
    , Avg_Cluster_Length
    , Number_Of_Stages_Lost
    , Number_Of_Stages_Cancelled
    , Total_Lateral_Length_Lost
    , Lateral_Length_Lost_Stage_Gap
    , Lateral_Length_Lost_Screen_Out
    , Lateral_Length_Lost_Cancelled
    , Perforation_Strategy
    , Number_Of_Perforations
    , Avg_Design_Cluster_Spacing
    , Avg_Design_Clusters_Per_Stage
    , Design_Volume_Total_Fluid
    , Design_Mass_Total_Proppant
    , Design_Number_Of_Stages
    , Avg_Design_Stage_Length
    , Design_Number_Of_Clusters
    , Design_Number_Of_Perforations
    , Avg_Treatment_Rate
    , Avg_Breakdown_Pressure
    , Avg_Isip_Pre_Frac
    , Avg_Isip_Post_Frac
    , Avg_Pressure_At_5_Minutes
    , Avg_Pressure_At_10_Minutes
    , Avg_Max_Pressure
    , Avg_Treatment_Pressure
    , Avg_Isip_Pre_Frac_Gradient
    , Avg_Isip_Post_Frac_Gradient
    , Avg_Final_Concentration
    , Avg_Volume_Overflush
    , Pad_Volume
    , Number_Of_Casing_Strings
    , Row_Modified_By
    , Row_Modified_Date
  FROM   frac.Job_Data_By_Well
  JOIN vBase_Header AS bh ON Job_Data_by_Well.Well_ID = bh.Well_Id
  WHERE
    ( Active_Ind = 'Y' AND Refrac_Number=1)
GO
/****** Object:  View [dbo].[vOffsets]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vOffsets]


AS
SELECT
	wo.[Avg_Well_Spacing]
  , wo.[Heel_Toe_Offset]
  , wo.[Avg_Tvd_Difference]
  , wo.[Percent_Overlap]
  , wo.[Parent_Child]
  , wo.[Left_Right]
  , IIF(wo.Left_Right = 'Left', - wo.[Avg_Well_Spacing], wo.[Avg_Well_Spacing]) AS Distance
  , ofst.[Well_Id]															   AS Offset_Well_ID
  , ofst.[API_Number]														   AS Offset_API_Number
  , ofst.[Well_Official_Name]												   AS Offset_Well_Official_Name
  , ofst.[Well_Name]														   AS Offset_Well_Name
  , ofst.[Lease_Name]														   AS Offset_Lease_Name
  , ofst.[Well_Number]														   AS Offset_Well_Number
  , ofst.[Operator]															   AS Offset_Operator
  , ofst.[Formation]														   AS Offset_Formation
  , ofst.[Interval]															   AS Offset_Interval
  , ofst.[Well_Status]														   AS Offset_Well_Status
  , ofst.[Type_Curve_Group]													   AS Offset_Type_Curve_Group
  , ofst.[Study_Area]														   AS Offset_Study_Area
  , ofst.[Primary_Phase]													   AS Offset_Primary_Phase
  , ofst.[Producing_Method]													   AS Offset_Producing_Method
  , ofst.[Trajectory]														   AS Offset_Trajectory
  , ofst.[Lateral_Length]													   AS Offset_Lateral_Length
  , ofst.[Well_Spacing]														   AS Offset_Well_Spacing
  , ofst.[Well_Spacing_Type]												   AS Offset_Well_Spacing_Type
  , ofst.[Rsv_Class_Cat]													   AS Offset_Rsv_Class_Cat
  , ofst.[First_Prod_Date]													   AS Offset_First_Prod_Date
  , ofst.[Last_Prod_Date]													   AS Offset_Last_Prod_Date
  , ofst.[Vintage]															   AS Offset_Vintage
  , ofst.[Spud_Date]														   AS Offset_Spud_Date
  , ofst.[Pad_Name]															   AS Offset_Pad_Name
  , ofst.[Geologic_Area]													   AS Offset_Geologic_Area
  , ofst.[Drilled_Lateral_Length]											   AS Offset_Drilled_Lateral_Length
  , ofst.[Avg_TVD]															   AS Offset_Avg_TVD
  , ofst.[Elephant_Ownership]												   AS Offset_Elephant_Ownership
  , ofst.[Elephant_WI]														   AS Offset_Elephant_WI
  , ofst.[Elephant_NRI]														   AS Offset_Elephant_NRI
  , ofst.[Elephant_Participation_Type]										   AS Offset_Elephant_Participation_Type
  , ofst.[Elephant_Participated]											   AS Offset_Elephant_Participated
  , ofst.[Lb_Per_ft]														   AS Offset_Lb_Per_ft
  , ofst.[Bbl_Per_ft]														   AS Offset_Bbl_Per_ft
  , wl.[Well_Id]
  , wl.[API_Number]
  , wl.[Well_Official_Name]
  , wl.[Well_Name]
  , wl.[Lease_Name]
  , wl.[Well_Number]
  , wl.[Operator]
  , wl.[Formation]
  , wl.[Interval]
  , wl.[Well_Status]
  , wl.[Type_Curve_Group]
  , wl.[Study_Area]
  , wl.[Primary_Phase]
  , wl.[Producing_Method]
  , wl.[Trajectory]
  , wl.[Lateral_Length]
  , wl.[Well_Spacing]
  , wl.[Well_Spacing_Type]
  , wl.[Rsv_Class_Cat]
  , wl.[First_Prod_Date]
  , wl.[Last_Prod_Date]
  , wl.[Vintage]
  , wl.[Spud_Date]
  , wl.[Pad_Name]
  , wl.[State]
  , wl.[County]
  , wl.[Geologic_Area]
  , wl.[Drilled_Lateral_Length]
  , wl.[Avg_TVD]
  , wl.[Elephant_Ownership]
  , wl.[Elephant_WI]
  , wl.[Elephant_NRI]
  , wl.[Elephant_Participation_Type]
  , wl.[Elephant_Participated]
  , wl.[Lb_Per_ft]
  , wl.[Bbl_Per_ft]
FROM well.[Offsets] wo
	JOIN dbo.vBase_Header AS wl ON
		wl.Well_Id = wo.Well_Id
	JOIN dbo.vBase_Header AS ofst ON
		ofst.Well_Id = wo.Offset_Well_ID
GO
/****** Object:  View [dbo].[vWell_Header]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vWell_Header]
 
AS
SELECT
	Well_Id
  , API_Number
  , Well_Report_Name
  , Well_Report_Name_Short
  , Lease_Name
  , Unit_Name
  , Well_Number
  , Operator
  , Initial_Operator
  , Producing_Formation
  , Producing_Interval
  , Field_Name
  , Study_Area
  , Geologic_Area
  , Business_Unit
  , Well_Type
  , Well_Status
  , Well_Status_Date
  , Primary_Phase
  , Current_Producing_Method
  , Trajectory
  , Lateral_Length
  , Lateral_Length_Method
  , Reserve_Class
  , Reserve_Category
  , Spud_Date
  , Rig_Release_Date
  , Frac_Start_Date
  , Frac_End_Date
  , Date_Permit_Submitted
  , Date_Permit_Approved
  , First_Prod_Date
  , YEAR(First_Prod_Date) AS Vintage
  , Last_Prod_Date
  , KB_Elevation
  , Ground_Elevation
  , MD
  , Avg_TVD
  , Max_TVD
  , Percent_in_Formation
  , Percent_in_Interval
  , Pad_Name
  , Pad_Pop_Order
  , Facility_Name
  , Well_Data_Category
  , Lease_Number
  , GEOM
  , State
  , County
  , Region
  , Basin
  , Type_Curve_Group
  , District
  , Survey
  , Abstract
  , Block
  , Section
  , Township
  , Range
  , Quarter_Quarter
  , Aries_Propnum
  , API_12
  , API_10
  , Row_Modified_By
  , Row_Modified_Date
  , Active_Ind
  , Endpoint_Geography
FROM well.Header
GO
/****** Object:  View [dbo].[vProd_Stats_Summary]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[vProd_Stats_Summary]


AS

WITH
	q1 AS
		(SELECT
				Well_Id
			  , Latitude
			  , Longitude
			FROM [well].[Locations]
			WHERE [Location_Type] = 'Lateral Midpoint')
SELECT
	bh.*
  , ps.First_Prod_Date																		   AS First_Prod
  , ps.Last_Prod_Date																		   AS Last_Prod
  , ps.Months_On_Production
  , ps.Oil_Cumulative																		   AS Oil_Cum
  , ps.Oil_Rem																				   AS Oil_Rem
  , ps.Oil_EUR
  , ps.Oil_Peak_3_Months
  , ps.Oil_Peak_6_Months
  , ps.Oil_Peak_12_Months
  , psd.Oil_Peak_30_Days
  , psd.Oil_Peak_90_Days
  , psd.Oil_Peak_180_Days
  , IIF(wh.Lateral_Length > 0, ps.Oil_Cumulative / wh.Lateral_Length * 9500, NULL)			   AS Nrm_Oil_Cum
  , IIF(wh.Lateral_Length > 0, ps.Oil_EUR / wh.Lateral_Length * 9500, NULL)					   AS Nrm_Oil_EUR
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_1_Month / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_1_Month
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_6_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_6_Months
  , IIF(wh.Lateral_Length > 0, ps.Oil_Peak_12_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_30_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_30_Days
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_60_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_60_Days
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_90_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_90_Days
  , IIF(wh.Lateral_Length > 0, psd.Oil_Peak_180_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Oil_Peak_180_Days
  , IIF(wh.Lateral_Length > 0, ps.Oil_5_Yr_Cum / wh.Lateral_Length * 9500, NULL)			   AS Nrm_Oil_5_Yr_Cum
  , IIF(wh.Lateral_Length > 0, ps.Oil_10_Yr_Cum / wh.Lateral_Length * 9500, NULL)			   AS Nrm_Oil_10_Yr_Cum
  , ps.Gas_Rem																				   AS Gas_Rem
  , ps.Gas_EUR
  , ps.Gas_Peak_3_Months
  , ps.Gas_Peak_6_Months
  , ps.Gas_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_Cumulative / wh.Lateral_Length * 9500, NULL)			   AS Nrm_Gas_Cum
  , IIF(wh.Lateral_Length > 0, ps.Gas_EUR / wh.Lateral_Length * 9500, NULL)					   AS Nrm_Gas_EUR
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_1_Month / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Gas_Peak_1_Month
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Gas_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_6_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Gas_Peak_6_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_Peak_12_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Gas_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.Gas_5_Yr_Cum / wh.Lateral_Length * 9500, NULL)			   AS Nrm_Gas_5_Yr_Cum
  , IIF(wh.Lateral_Length > 0, ps.Gas_10_Yr_Cum / wh.Lateral_Length * 9500, NULL)			   AS Nrm_Gas_10_Yr_Cum
  , ps.Water_Cumulative																		   AS Water_Cum
  , ps.Water_Peak_3_Months
  , ps.Water_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.Water_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_Water_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.Water_Peak_12_Months / wh.Lateral_Length * 9500, NULL)	   AS Nrm_Water_Peak_12_Months
  , ps.BOE_Cumulative																		   AS BOE_Cum
  , ps.Oil_Rem + ps.Gas_Rem / 6																   AS BOE_Rem
  , ps.Oil_EUR + ps.Gas_EUR / 6																   AS BOE_EUR
  , ps.BOE_Peak_3_Months
  , ps.BOE_Peak_6_Months
  , ps.BOE_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_Cumulative / wh.Lateral_Length * 9500, NULL)			   AS Nrm_BOE_Cum
  , IIF(wh.Lateral_Length > 0, (ps.Oil_EUR + ps.Gas_EUR / 6) / wh.Lateral_Length * 9500, NULL) AS Nrm_BOE_EUR
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_30_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_30_Days
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_60_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_60_Days
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_90_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_90_Days
  , IIF(wh.Lateral_Length > 0, psd.BOE_Peak_180_Days / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_180_Days
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_1_Month / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_1_Month
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_3_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_3_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_6_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_6_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_Peak_12_Months / wh.Lateral_Length * 9500, NULL)		   AS Nrm_BOE_Peak_12_Months
  , IIF(wh.Lateral_Length > 0, ps.BOE_5_Yr_Cum / wh.Lateral_Length * 9500, NULL)			   AS Nrm_BOE_5_Yr_Cum
  , IIF(wh.Lateral_Length > 0, ps.BOE_10_Yr_Cum / wh.Lateral_Length * 9500, NULL)			   AS Nrm_BOE_10_Yr_Cum
  , ps.First_Month_Gas_Oil_Ratio
  , psd.AVG_GOR_First_10_Days
  , psd.AVG_WOR_First_10_Days
  , psd.AVG_GOR_First_180_Days
  , psd.AVG_WOR_First_180_Days
  , ps.Gas_Oil_Ratio_at_6_Months
  , ps.Gas_Oil_Ratio_at_1_Yr
  , ps.Gas_Oil_Ratio_at_2_Yrs
  , ps.Last_Month_Gas_Oil_Ratio
  , wh.Lateral_Midpoint_Geography															   AS GEOM
  , q1.Longitude
  , q1.Latitude
FROM well.Header AS wh
	JOIN analysis.Production_Statistics_Monthly AS ps ON
		ps.Well_Id = wh.Well_Id
	LEFT JOIN dbo.vBase_Header AS bh ON
		bh.Well_Id = wh.Well_Id
	LEFT JOIN q1 ON
		q1.Well_Id = wh.Well_Id
	LEFT JOIN analysis.Production_Statistics_Daily AS psd ON
		wh.Well_Id = psd.Well_Id
	WHERE wh.Lateral_Midpoint_Geography IS NOT null
GO
/****** Object:  View [prod].[vProduction_Daily]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [prod].[vProduction_Daily]
AS

SELECT
	[Prod_Date]
  , [Days_On]
  , [Days_On_Oil]
  , [Days_On_Gas]
  , [Oil]
  , [Gas]
  , IIF([Oil] > 0, [Gas] / [Oil] * 1000, NULL) AS GOR
  , [Water]
  , [Oil] / COALESCE(bh.[Lateral_Length], 9500) * 9500 AS Nrm_Oil
  , [Gas] / COALESCE(bh.[Lateral_Length], 9500) * 9500 AS Nrm_Gas
  , [Water] / COALESCE(bh.[Lateral_Length], 9500) * 9500 AS Nrm_Water
  , [Gas_Flared]
  , [Gas_Vented]
  , [Gas_Lift_Inj_Gas]
  , [Choke_Size]
  , [Tubing_Pressure]
  , [Casing_Pressure]
  , [Surface_Temp]
  , [Line_Pressure]
  , [Bh_Gauge_Pressure]
  , [Calculated_Bottom_Hole_Pressure]
  , [BHP]
  , [BHP_Method]
  , [Prod_Method]
  , [Flow_Path]
  , [Remarks]
  , [bh].*
FROM [prod].[Production_Daily] AS [pd]
JOIN dbo.[vBase_Header] AS [bh]
	ON [pd].[Well_ID] = [bh].[Well_ID]
GO
/****** Object:  View [prod].[vProduction_Monthly]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE VIEW [prod].[vProduction_Monthly]
AS
SELECT
	[Prod_Date]
  , [Days_On]
  , [Months_On_Oil]
  , [Months_On_Gas]
  , [pm].[Months_Since_Peak_Oil]
  , [Oil]
  , [Gas]
  , IIF([Oil] > 0, [Gas] / [Oil] * 1000, NULL) AS GOR
  , [Water]
  , [Oil] / COALESCE(bh.[Lateral_Length], 9500) * 1000 AS Nrm_Oil
  , [Gas] / COALESCE(bh.[Lateral_Length], 9500) * 1000 AS Nrm_Gas
  , [Water] / COALESCE(bh.[Lateral_Length], 9500) * 1000 AS Nrm_Water
  , [Tubing_Pressure]
  , [Casing_Pressure]
  , [Surface_Temp]
  , [Line_Pressure]
  , [Bh_Gauge_Pressure]
  , [Calculated_Bottom_Hole_Pressure]
  , [BHP]
  , [BHP_Method]
  , [Prod_Method]
  , [Flow_Path]
  , [Remarks]
  , [Forecast]
  , [bh].*
FROM [prod].[Production_Monthly] AS [pm]
JOIN dbo.[vBase_Header] AS [bh]
	ON [pm].[Well_ID] = [bh].[Well_ID]
GO
/****** Object:  Table [frac].[Job_Data_By_Stage]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [frac].[Job_Data_By_Stage](
	[Well_ID] [int] NOT NULL,
	[Refrac_Number] [smallint] NOT NULL,
	[Stage_Number] [smallint] NOT NULL,
	[Step_Number] [smallint] NOT NULL,
	[Date_Stage_Start] [datetime] NULL,
	[Date_Stage_End] [datetime] NULL,
	[Frac_Service_Company] [nvarchar](50) NULL,
	[Delivery_Method] [nvarchar](50) NULL,
	[Depth_Upper_Perf] [real] NULL,
	[Depth_Lower_Perf] [real] NULL,
	[Completion_Code] [nvarchar](60) NULL,
	[Stage_Length] [real] NULL,
	[Stage_Length_Method] [nvarchar](100) NULL,
	[Depth_TVD] [real] NULL,
	[Breakdown_Pressure] [real] NULL,
	[ISIP_Pre_Frac] [real] NULL,
	[ISIP_Post_Frac] [real] NULL,
	[Gradient_Pre_Frac_ISIP] [real] NULL,
	[Gradient_Post_Frac_ISIP] [real] NULL,
	[Max_Pressure] [real] NULL,
	[Avg_Treatment_Pressure] [real] NULL,
	[Avg_Treatment_Rate] [real] NULL,
	[Pad_Volume] [real] NULL,
	[Volume_Total_Fluid] [real] NULL,
	[Mass_Total_Proppant] [real] NULL,
	[Final_Concentration] [real] NULL,
	[Volume_Overflush] [real] NULL,
	[Cluster_Length] [real] NULL,
	[Number_of_Clusters] [smallint] NULL,
	[Cluster_Spacing] [real] NULL,
	[Stage_Lost] [varchar](1) NULL,
	[Stage_Lost_Reason] [nvarchar](30) NULL,
	[Number_of_Perforations] [smallint] NULL,
	[Perforation_Phasing_Deg] [real] NULL,
	[Perforation_Density_spf] [real] NULL,
	[Sim_Hole_Perf_Dia] [real] NULL,
	[Design_Completion_Code] [nvarchar](60) NULL,
	[Design_Stage_Length] [real] NULL,
	[Design_Number_of_Clusters] [smallint] NULL,
	[Design_Cluster_Spacing] [real] NULL,
	[Design_Number_Of_Perforations] [smallint] NULL,
	[Design_Volume_Total_Fluid] [real] NULL,
	[Design_Mass_Total_Proppant] [real] NULL,
	[Operational_Remarks] [nvarchar](3000) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Job_Data_By_Stage] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Refrac_Number] ASC,
	[Stage_Number] ASC,
	[Step_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [frac].[Job_Fluids_by_Stage]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [frac].[Job_Fluids_by_Stage](
	[Well_ID] [int] NOT NULL,
	[Refrac_Number] [smallint] NOT NULL,
	[Stage_Number] [smallint] NOT NULL,
	[Step_Number] [smallint] NOT NULL,
	[Fluid_Type] [nvarchar](60) NOT NULL,
	[Fluid_Volume] [real] NULL,
	[Design_Fluid_Volume] [real] NULL,
	[Unit] [varchar](20) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Job_Fluids_by_Stage] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Refrac_Number] ASC,
	[Stage_Number] ASC,
	[Step_Number] ASC,
	[Fluid_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [frac].[Job_Fluids_by_Well]    Script Date: 6/30/2022 9:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [frac].[Job_Fluids_by_Well](
	[Well_ID] [int] NOT NULL,
	[Refrac_Number] [smallint] NOT NULL,
	[Fluid_Type] [nvarchar](60) NOT NULL,
	[Fluid_Volume] [real] NULL,
	[Design_Fluid_Volume] [real] NULL,
	[Unit] [varchar](20) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Job_Fluids_by_Well] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Refrac_Number] ASC,
	[Fluid_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [frac].[Job_Proppant_by_Stage]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [frac].[Job_Proppant_by_Stage](
	[Well_ID] [int] NOT NULL,
	[Refrac_Number] [smallint] NOT NULL,
	[Stage_Number] [int] NOT NULL,
	[Step_Number] [smallint] NOT NULL,
	[Proppant_Type] [nvarchar](50) NOT NULL,
	[Proppant_Size] [nvarchar](30) NOT NULL,
	[Proppant_Mass] [real] NULL,
	[Design_Proppant_Mass] [real] NULL,
	[Unit] [varchar](20) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Job_Proppant_by_Stage] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Refrac_Number] ASC,
	[Stage_Number] ASC,
	[Step_Number] ASC,
	[Proppant_Type] ASC,
	[Proppant_Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [frac].[Job_Proppant_by_Well]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [frac].[Job_Proppant_by_Well](
	[Well_ID] [int] NOT NULL,
	[Refrac_Number] [smallint] NOT NULL,
	[Proppant_Type] [nvarchar](50) NOT NULL,
	[Proppant_Size] [nvarchar](30) NOT NULL,
	[Data_Source] [nvarchar](40) NOT NULL,
	[Proppant_Mass] [real] NULL,
	[Design_Proppant_Mass] [real] NULL,
	[Unit] [varchar](20) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Job_Proppant_by_Well] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Refrac_Number] ASC,
	[Proppant_Type] ASC,
	[Proppant_Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [geo].[Formation_Tops]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [geo].[Formation_Tops](
	[API_12] [varchar](12) NOT NULL,
	[Top_Name] [nvarchar](60) NOT NULL,
	[Top_MD] [float] NULL,
	[Top_SS] [float] NULL,
	[GEOM] [geography] NULL,
	[Interpolated] [char](1) NULL,
 CONSTRAINT [PK_Formation_Tops] PRIMARY KEY CLUSTERED 
(
	[API_12] ASC,
	[Top_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [geo].[Surface_Elevation]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [geo].[Surface_Elevation](
	[API_10] [nvarchar](10) NOT NULL,
	[Elev_KB] [float] NULL,
	[Elev_GL] [float] NULL,
	[GEOM] [geography] NULL,
	[Vertical] [char](1) NULL,
 CONSTRAINT [PK_Surface_Elevation] PRIMARY KEY CLUSTERED 
(
	[API_10] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [prod].[Pressures]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prod].[Pressures](
	[Well_ID] [int] NOT NULL,
	[Prod_Date] [datetime] NOT NULL,
	[Tubing_Pressure] [real] NULL,
	[Casing_Pressure] [real] NULL,
	[Injection_Pressure] [real] NULL,
	[Wellhead_Pressure] [real] NULL,
	[Surface_Temp] [real] NULL,
	[Line_Pressure] [real] NULL,
	[Bh_Gauge_Pressure] [real] NULL,
	[Calculated_Bottom_Hole_Pressure] [real] NULL,
	[BHP] [real] NULL,
	[BHP_Method] [nvarchar](30) NULL,
	[Prod_Method] [nvarchar](30) NULL,
	[Flow_Path] [nvarchar](25) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Pressures_1] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Prod_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [prod].[Production_Hourly]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prod].[Production_Hourly](
	[Well_ID] [int] NOT NULL,
	[Prod_Date] [datetime] NOT NULL,
	[Oil] [real] NULL,
	[Gas] [real] NULL,
	[Water] [real] NULL,
	[Gas_Lift_Inj_Gas] [real] NULL,
	[Choke_Size] [real] NULL,
	[Tubing_Pressure] [real] NULL,
	[Casing_Pressure] [real] NULL,
	[Injection_Pressure] [real] NULL,
	[Wellhead_Pressure] [real] NULL,
	[Surface_Temp] [real] NULL,
	[Line_Pressure] [real] NULL,
	[Bh_Gauge_Pressure] [real] NULL,
	[Calculated_Bottom_Hole_Pressure] [real] NULL,
	[BHP] [real] NULL,
	[BHP_Method] [nvarchar](30) NULL,
	[Prod_Method] [nvarchar](50) NULL,
	[Flow_Path] [nvarchar](25) NULL,
	[Remarks] [nvarchar](500) NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Production_Hourly] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Prod_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [prod].[Production_Tests]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prod].[Production_Tests](
	[Well_ID] [int] NOT NULL,
	[Test_Date] [date] NOT NULL,
	[Test_Type] [varchar](25) NOT NULL,
	[Duration] [real] NULL,
	[Oil_Rate] [real] NULL,
	[Gas_Rate] [real] NULL,
	[Water_Rate] [real] NULL,
	[Gas_Lift_Inj_Gas] [real] NULL,
	[Choke_Size] [varchar](20) NULL,
	[Tubing_Pressure] [real] NULL,
	[Casing_Pressure] [real] NULL,
	[Injection_Pressure] [real] NULL,
	[Shut_In_Pressure] [real] NULL,
	[Wellhead_Pressure] [real] NULL,
	[Surface_Temp] [real] NULL,
	[Line_Pressure] [real] NULL,
	[API_Oil_Gravity] [real] NULL,
	[Gas_Gravity] [real] NULL,
	[Producing_Method] [varchar](30) NULL,
	[Remarks] [nvarchar](500) NULL,
	[Locks] [varchar](max) NULL,
	[All_Columns_Locked] [char](1) NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Production_Tests] PRIMARY KEY CLUSTERED 
(
	[Well_ID] ASC,
	[Test_Date] ASC,
	[Test_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ref].[Stratigraphic_Units]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[Stratigraphic_Units](
	[Formation] [nvarchar](60) NOT NULL,
	[Interval] [nvarchar](60) NOT NULL,
	[Sort_Order] [int] NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_ref_Well_Landing_Zones] PRIMARY KEY CLUSTERED 
(
	[Formation] ASC,
	[Interval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[Well_Location_Types]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[Well_Location_Types](
	[Location_Type] [nvarchar](50) NOT NULL,
	[Sort_Order] [smallint] NULL,
	[Row_Modified_By] [nvarchar](80) NULL,
	[Row_Modified_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_ref_Well_Location_Types] PRIMARY KEY CLUSTERED 
(
	[Location_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[Well_Status]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[Well_Status](
	[Well_Status] [varchar](50) NULL,
	[Well_Type] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[Well_Types]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[Well_Types](
	[Well_Type] [varchar](30) NOT NULL,
	[Sort_Order] [smallint] NULL,
	[Row_Created_By] [nvarchar](80) NULL,
	[Row_Created_Date] [smalldatetime] NULL,
	[Row_Changed_By] [nvarchar](80) NULL,
	[Row_Changed_Date] [smalldatetime] NULL,
	[Row_Archived_By] [nvarchar](80) NULL,
	[Row_Archived_Date] [smalldatetime] NULL,
	[Active_Ind] [varchar](1) NULL,
 CONSTRAINT [PK_Well_Types] PRIMARY KEY CLUSTERED 
(
	[Well_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [well].[identifiers]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [well].[identifiers](
	[Well_ID] [int] NOT NULL,
	[API_Number] [nvarchar](20) NULL,
	[API_10] [varchar](12) NULL
) ON [PRIMARY]
GO
ALTER TABLE [analysis].[Production_Statistics_Daily] ADD  CONSTRAINT [DF_Production_Statistics_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [analysis].[Production_Statistics_Daily] ADD  CONSTRAINT [DF_Production_Statistics_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [analysis].[Production_Statistics_Daily] ADD  CONSTRAINT [DF_Production_Statistics_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [analysis].[Production_Statistics_Monthly] ADD  CONSTRAINT [DF_Production_Statistics_Monthly_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [analysis].[Production_Statistics_Monthly] ADD  CONSTRAINT [DF_Production_Statistics_Monthly_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [analysis].[Production_Statistics_Monthly] ADD  CONSTRAINT [DF_Production_Statistics_Monthly_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_By_Stage_Refrac_Number]  DEFAULT ((0)) FOR [Refrac_Number]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_by_Stage_Step_Number]  DEFAULT ((1)) FOR [Step_Number]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_by_Stage_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_by_Stage_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_By_Stage_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_By_Stage_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [frac].[Job_Data_By_Stage] ADD  CONSTRAINT [DF_Job_Data_By_Stage_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [frac].[Job_Data_by_Well] ADD  CONSTRAINT [DF_Job_Data_By_Well_Refrac_Number]  DEFAULT ((0)) FOR [Refrac_Number]
GO
ALTER TABLE [frac].[Job_Data_by_Well] ADD  CONSTRAINT [DF_Job_Data_by_Well_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [frac].[Job_Data_by_Well] ADD  CONSTRAINT [DF_Job_Data_By_Well_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [frac].[Job_Data_by_Well] ADD  CONSTRAINT [DF_Job_Data_By_Well_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [frac].[Job_Data_by_Well] ADD  CONSTRAINT [DF_Job_Data_By_Well_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Refrac_Number]  DEFAULT ((0)) FOR [Refrac_Number]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Step_Number]  DEFAULT ((1)) FOR [Step_Number]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [frac].[Job_Fluids_by_Stage] ADD  CONSTRAINT [DF_Job_Fluids_by_Stage_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [frac].[Job_Fluids_by_Well] ADD  CONSTRAINT [DF_Job_Fluids_by_Well_Refrac_Number]  DEFAULT ((0)) FOR [Refrac_Number]
GO
ALTER TABLE [frac].[Job_Fluids_by_Well] ADD  CONSTRAINT [DF_Job_Fluids_by_Well_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [frac].[Job_Fluids_by_Well] ADD  CONSTRAINT [DF_Job_Fluids_by_Well_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [frac].[Job_Fluids_by_Well] ADD  CONSTRAINT [DF_Job_Fluids_by_Well_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [frac].[Job_Fluids_by_Well] ADD  CONSTRAINT [DF_Job_Fluids_by_Well_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [frac].[Job_Fluids_by_Well] ADD  CONSTRAINT [DF_Job_Fluids_by_Well_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Refrac_Number]  DEFAULT ((0)) FOR [Refrac_Number]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Step_Number]  DEFAULT ((1)) FOR [Step_Number]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [frac].[Job_Proppant_by_Stage] ADD  CONSTRAINT [DF_Job_Proppant_by_Stage_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [frac].[Job_Proppant_by_Well] ADD  CONSTRAINT [DF_Job_Proppant_by_Well_Refrac_Number]  DEFAULT ((0)) FOR [Refrac_Number]
GO
ALTER TABLE [frac].[Job_Proppant_by_Well] ADD  CONSTRAINT [DF_Job_Proppant_by_Well_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [frac].[Job_Proppant_by_Well] ADD  CONSTRAINT [DF_Job_Proppant_by_Well_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [frac].[Job_Proppant_by_Well] ADD  CONSTRAINT [DF_Job_Proppant_by_Well_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [frac].[Job_Proppant_by_Well] ADD  CONSTRAINT [DF_Job_Proppant_by_Well_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [frac].[Job_Proppant_by_Well] ADD  CONSTRAINT [DF_Job_Proppant_by_Well_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [prod].[Pressures] ADD  CONSTRAINT [DF_Pressures_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [prod].[Pressures] ADD  CONSTRAINT [DF_Pressures_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [prod].[Pressures] ADD  CONSTRAINT [DF_Pressures_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [prod].[Pressures] ADD  CONSTRAINT [DF_Pressures_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [prod].[Pressures] ADD  CONSTRAINT [DF_Pressures_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [prod].[Production_Daily] ADD  CONSTRAINT [DF_Production_Daily_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [prod].[Production_Daily] ADD  CONSTRAINT [DF_Production_Daily_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [prod].[Production_Daily] ADD  CONSTRAINT [DF_Production_Daily_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [prod].[Production_Hourly] ADD  CONSTRAINT [DF_Production_Hourly_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [prod].[Production_Hourly] ADD  CONSTRAINT [DF_Production_Hourly_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [prod].[Production_Hourly] ADD  CONSTRAINT [DF_Production_Hourly_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [prod].[Production_Hourly] ADD  CONSTRAINT [DF_Production_Hourly_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [prod].[Production_Hourly] ADD  CONSTRAINT [DF_Production_Hourly_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [prod].[Production_Monthly] ADD  CONSTRAINT [DF_Production_Monthly_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [prod].[Production_Monthly] ADD  CONSTRAINT [DF_Production_Monthly_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [prod].[Production_Monthly] ADD  CONSTRAINT [DF_Production_Monthly_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [prod].[Production_Monthly] ADD  CONSTRAINT [DF_Production_Monthly_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [prod].[Production_Tests] ADD  CONSTRAINT [DF_Production_Tests_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [prod].[Production_Tests] ADD  CONSTRAINT [DF_Production_Tests_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [prod].[Production_Tests] ADD  CONSTRAINT [DF_Production_Tests_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [prod].[Production_Tests] ADD  CONSTRAINT [DF_Production_Tests_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [ref].[Stratigraphic_Units] ADD  CONSTRAINT [DF_ref_Landing_Zones_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [ref].[Stratigraphic_Units] ADD  CONSTRAINT [DF_ref_Landing_Zones_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [ref].[Stratigraphic_Units] ADD  CONSTRAINT [DF_ref_Landing_Zones_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [ref].[Stratigraphic_Units] ADD  CONSTRAINT [DF_ref_Landing_Zones_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [ref].[Stratigraphic_Units] ADD  CONSTRAINT [DF_ref_Landing_Zones_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [well].[Deviation_Survey_Summary] ADD  CONSTRAINT [DF_Deviation_Survey_Summary_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [well].[Deviation_Survey_Summary] ADD  CONSTRAINT [DF_Deviation_Survey_Summary_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [well].[Deviation_Survey_Summary] ADD  CONSTRAINT [DF_Deviation_Survey_Summary_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [well].[Deviation_Surveys] ADD  CONSTRAINT [DF_Deviation_Surveys_In_Perforated_Interval]  DEFAULT ('U') FOR [In_Perforated_Interval]
GO
ALTER TABLE [well].[Deviation_Surveys] ADD  CONSTRAINT [DF_Deviation_Surveys_Active_Survey]  DEFAULT ('N') FOR [Active_Survey]
GO
ALTER TABLE [well].[Deviation_Surveys] ADD  CONSTRAINT [DF_Deviation_Surveys_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [well].[Deviation_Surveys] ADD  CONSTRAINT [DF_Deviation_Surveys_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [well].[Deviation_Surveys] ADD  CONSTRAINT [DF_Deviation_Surveys_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [well].[Deviation_Surveys] ADD  CONSTRAINT [DF_Deviation_Surveys_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [well].[Header] ADD  CONSTRAINT [DF_Header_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [well].[Header] ADD  CONSTRAINT [DF_Header_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [well].[Header] ADD  CONSTRAINT [DF_Header_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [well].[Header] ADD  CONSTRAINT [DF_Header_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [well].[Locations] ADD  CONSTRAINT [DF_Locations_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Modified_By]
GO
ALTER TABLE [well].[Locations] ADD  CONSTRAINT [DF_Locations_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Modified_Date]
GO
ALTER TABLE [well].[Locations] ADD  CONSTRAINT [DF_Locations_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [well].[Locations] ADD  CONSTRAINT [DF_Locations_All_Columns_Locked]  DEFAULT ('N') FOR [All_Columns_Locked]
GO
ALTER TABLE [well].[Reservoir_Properties] ADD  CONSTRAINT [DF_Reservoir_Properties_Row_Created_By]  DEFAULT (suser_sname()) FOR [Row_Created_By]
GO
ALTER TABLE [well].[Reservoir_Properties] ADD  CONSTRAINT [DF_Reservoir_Properties_Row_Created_Date]  DEFAULT (getdate()) FOR [Row_Created_Date]
GO
ALTER TABLE [well].[Reservoir_Properties] ADD  CONSTRAINT [DF_Reservoir_Properties_Row_Changed_By]  DEFAULT (suser_sname()) FOR [Row_Changed_By]
GO
ALTER TABLE [well].[Reservoir_Properties] ADD  CONSTRAINT [DF_Reservoir_Properties_Row_Changed_Date]  DEFAULT (getdate()) FOR [Row_Changed_Date]
GO
ALTER TABLE [well].[Reservoir_Properties] ADD  CONSTRAINT [DF_Reservoir_Properties_Active_Ind]  DEFAULT ('Y') FOR [Active_Ind]
GO
ALTER TABLE [prod].[Production_Monthly]  WITH NOCHECK ADD  CONSTRAINT [FK_Production_Monthly_Header] FOREIGN KEY([Well_ID])
REFERENCES [well].[Header] ([Well_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [prod].[Production_Monthly] CHECK CONSTRAINT [FK_Production_Monthly_Header]
GO
ALTER TABLE [well].[Locations]  WITH NOCHECK ADD  CONSTRAINT [FK_Locations_Well_Location_Types] FOREIGN KEY([Location_Type])
REFERENCES [ref].[Well_Location_Types] ([Location_Type])
ON UPDATE CASCADE
GO
ALTER TABLE [well].[Locations] CHECK CONSTRAINT [FK_Locations_Well_Location_Types]
GO
/****** Object:  StoredProcedure [admin].[Delete_All_Wells]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [admin].[Delete_All_Wells] as

delete from frac.Job_Data_By_Well

delete from well.Header

DBCC CHECKIDENT ('well.Header', RESEED, 1);
GO
/****** Object:  StoredProcedure [admin].[Process_Daily_prod]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [admin].[Process_Daily_prod]
AS
	-- =================================================================================================================
	-- Authors:		Ray Flumerfelt, Mary Lynn Clark
	-- Create date:  9/14/2019
	-- Last updated: 11/17/2020
	-- Description:	This stored procedure:
	--
	--          1.  updates days_on, days_on_oil, and days_on_gas in the daily production table
	--			2.  populates the analysis.Production_Statistics_Daily table with updated daily volumes
	--          3.  rolls-up daily production volumes to Daily production volumes
	--
	--           Inputs: 
	--				1. prod.production_daily_table
	--				2. @Update_Daily:
	--
	--									='Append':			  Appends rolled-up daily records to the 
	--														  prod.Production_Daily table
	--
	--									='Update and Append': Appends rolled-up daily records to the 
	--														  prod.Production_Daily table and also 
	--														  updates existing records in the 
	--														  prod.Production_Daily table
	--
	--									='None'				  No records are added to the 
	--														  prod.Production_Daily table
	--      Output:
	--                      1.  Updated prod.Production_Daily table 
	--                      2.  Updated analysis.Production_Statistics_Daily
	--                      3.  Updated prod.Production_Daily table
	-- =================================================================================================================


	--==================================================================================================================
	-- Update Days_On columns
	--==================================================================================================================
	DECLARE @Update_Daily VARCHAR(25);
	DECLARE @Last_Date DATE;
	SET @Update_Daily = 'Update and Append';
	SET @Last_Date = EOMONTH(DATEADD(MONTH, -1, GETDATE()));

	IF @Update_Daily <> 'None'
	BEGIN
		SELECT
			Well_ID
		  , MIN(pd.Prod_Date)		AS Prod_Date
		  , MIN(DAY(pd.Prod_Date))  AS First_Day
		  , YEAR(pd.Prod_Date)		AS Yr
		  , MONTH(pd.Prod_Date)		AS Mo
		  , SUM(Oil)				AS Oil
		  , SUM(Gas)				AS Gas
		  , SUM(Water)				AS Water
		  , AVG(pd.Tubing_Pressure) AS Tubing_Pressure
		  , AVG(pd.Casing_Pressure) AS Casing_Pressure
		  , SUM(pd.Downtime_Hrs)	AS Downtime
		INTO #tmpDailyRollup
		FROM prod.Production_Daily AS pd
		WHERE
			pd.Prod_Date <= @Last_Date
		GROUP BY Well_ID
			   , YEAR(pd.Prod_Date)
			   , MONTH(pd.Prod_Date);

		IF @Update_Daily = 'Update and Append'
		BEGIN
			UPDATE prod.Production_Monthly SET
				Oil = src.Oil
			  , Gas = src.Gas
			  , Water = src.Water
			  , Tubing_Pressure = src.Tubing_Pressure
			  , Casing_Pressure = src.Casing_Pressure
			  , Days_On = DAY(EOMONTH(src.Prod_Date)) - src.First_Day + 1 - src.Downtime / 24
			FROM prod.Production_Monthly AS dest
			JOIN #tmpDailyRollup src ON
				src.Well_ID = dest.Well_ID AND
				src.Mo = MONTH(dest.Prod_Date) AND
				src.Yr = YEAR(dest.Prod_Date);
		END
		IF @Update_Daily LIKE '%Append'
		BEGIN
			INSERT INTO prod.Production_Monthly (
				Well_ID
			  , Prod_Date
			  , Oil
			  , Gas
			  , Water
			  , Tubing_Pressure
			  , Casing_Pressure
			  , Days_On)
				SELECT
					src.Well_ID
				  , DATEFROMPARTS(src.Yr, src.Mo, 1) AS Dte
				  , src.Oil
				  , src.Gas
				  , src.Water
				  , src.Tubing_Pressure
				  , src.Casing_Pressure
				  , DAY(EOMONTH(src.Prod_Date)) - src.First_Day + 1 - src.Downtime / 24
				FROM #tmpDailyRollup src
					LEFT JOIN prod.Production_Monthly dest ON
						dest.Well_ID = src.Well_ID AND
						YEAR(dest.Prod_Date) = src.Yr AND
						MONTH(dest.Prod_Date) = src.Mo
				WHERE
					dest.Well_ID IS NULL
		END;
	END;

	WITH
		q1 AS
			(SELECT
					Well_ID
				  , Prod_Date
				  , SUM(IIF(Oil > 0 OR Gas > 0 OR Water > 0, 1, 0))
					OVER (PARTITION BY Well_ID ORDER BY Prod_Date) AS Days_On
				  , SUM(IIF(Oil > 0, 1, 0)) OVER (PARTITION BY Well_ID ORDER BY Prod_Date) AS Days_On_Oil
				  , SUM(IIF(Gas > 0, 1, 0)) OVER (PARTITION BY Well_ID ORDER BY Prod_Date) AS Days_On_Gas
				  , Oil AS Oil
				  , Gas AS Gas
				FROM prod.Production_Daily)
	UPDATE prod.Production_Daily SET
		Days_On = q1.[Days_On]
	  , Days_On_Oil = q1.[Days_On_Oil]
	  , Days_On_Gas = q1.[Days_On_Gas]
	FROM prod.Production_Daily pd
	INNER JOIN q1 ON
		q1.Well_ID = pd.Well_ID AND
		q1.Prod_Date = pd.Prod_Date;

	--==================================================================================================================
	-- Use Create tmp tables
	--==================================================================================================================
	DROP TABLE IF EXISTS #tmpCumsDaily;
	DROP TABLE IF EXISTS #tmpPS1;
	DROP TABLE IF EXISTS #tmpProdDaily;

	--prodJoin filters out days without production
	WITH
		prodJoin AS
			(SELECT
					prd.Well_ID
				  , prd.Prod_Date
				  , prd.Days_On_Oil
				  , prd.Days_On
				  , prd.Oil
				  , prd.Gas
				  , prd.Water
				  , prd.BHP
				  , SUM(prd.Oil) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_Oil
				  , SUM(prd.Gas) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_Gas
				  , SUM(prd.Water) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_Water
				  , SUM(prd.Oil + prd.Gas / 6) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_BOE
				  , SUM(prd.Oil * 6 + prd.Gas) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_MCFE
				  , prd.Oil + prd.Gas / 6 AS BOE
				  , prd.Oil * 6 + prd.Gas AS MCFE
				FROM prod.Production_Daily AS prd
				WHERE prd.Oil > 0
				OR prd.Gas > 0
				OR prd.Water > 0)
	--Calculates 30, 60, 90, and 120-day moving averages of oil, gas, and water for peak_X_days and other calculations
	,
		prod AS
			(SELECT
					prd.Well_ID
				  , prd.Prod_Date
				  , prd.Days_On
				  , prd.Days_On_Oil
				  , prd.Oil
				  , prd.Gas
				  , prd.Water
				  , prd.BOE
				  , prd.MCFE
				  , Cum_Oil
				  , Cum_Gas
				  , Cum_Water
				  , Cum_BOE
				  , Cum_MCFE
					-- Oil Moving Averages
				  , prd.Oil AS Oil_MA_1
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 30,
					NULL, AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)) AS Oil_MA_30
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 60,
					NULL, AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 59 PRECEDING AND CURRENT ROW)) AS Oil_MA_60
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 90,
					NULL, AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 89 PRECEDING AND CURRENT ROW)) AS Oil_MA_90
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 180,
					NULL, AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 179 PRECEDING AND CURRENT ROW)) AS Oil_MA_180
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 365,
					NULL, AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 364 PRECEDING AND CURRENT ROW)) AS Oil_MA_365
					-- Gas Moving Averages
				  , prd.Gas AS Gas_MA_1
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 30,
					NULL, AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)) AS Gas_MA_30
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 60,
					NULL, AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 59 PRECEDING AND CURRENT ROW)) AS Gas_MA_60
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 90,
					NULL, AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 89 PRECEDING AND CURRENT ROW)) AS Gas_MA_90
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 180,
					NULL, AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 179 PRECEDING AND CURRENT ROW)) AS Gas_MA_180
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 365,
					NULL, AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 364 PRECEDING AND CURRENT ROW)) AS Gas_MA_365
					-- Water Moving Averages
				  , prd.Water AS Water_MA_1
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 30,
					NULL, AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)) AS Water_MA_30
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 60,
					NULL, AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 59 PRECEDING AND CURRENT ROW)) AS Water_MA_60
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 90,
					NULL, AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 89 PRECEDING AND CURRENT ROW)) AS Water_MA_90
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 180,
					NULL, AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 179 PRECEDING AND CURRENT ROW)) AS Water_MA_180
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 365,
					NULL, AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 364 PRECEDING AND CURRENT ROW)) AS Water_MA_365
					-- BOE Moving Averages
				  , prd.BOE AS BOE_MA_1
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 30,
					NULL, AVG(prd.BOE) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)) AS BOE_MA_30
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 60,
					NULL, AVG(prd.BOE) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 59 PRECEDING AND CURRENT ROW)) AS BOE_MA_60
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 90,
					NULL, AVG(prd.BOE) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 89 PRECEDING AND CURRENT ROW)) AS BOE_MA_90
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 180,
					NULL, AVG(prd.BOE) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 179 PRECEDING AND CURRENT ROW)) AS BOE_MA_180
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 365,
					NULL, AVG(prd.BOE) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 364 PRECEDING AND CURRENT ROW)) AS BOE_MA_365
					-- Mcfe Moving Averages
				  , prd.Mcfe AS Mcfe_MA_1
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 30,
					NULL, AVG(prd.Mcfe) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)) AS Mcfe_MA_30
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 60,
					NULL, AVG(prd.Mcfe) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 59 PRECEDING AND CURRENT ROW)) AS Mcfe_MA_60
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 90,
					NULL, AVG(prd.Mcfe) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 89 PRECEDING AND CURRENT ROW)) AS Mcfe_MA_90
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 180,
					NULL, AVG(prd.Mcfe) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 179 PRECEDING AND CURRENT ROW)) AS Mcfe_MA_180
				  , IIF(ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 365,
					NULL, AVG(prd.Mcfe) OVER (PARTITION BY prd.Well_ID
					ORDER BY prd.Prod_Date ROWS BETWEEN 364 PRECEDING AND CURRENT ROW)) AS Mcfe_MA_365
				FROM prodJoin prd)

	SELECT * INTO #tmpProdDaily FROM prod;

	WITH
		ps1 AS
			(SELECT
					Well_ID
				  , MIN(Prod_Date) AS First_Prod_Date
				  , MAX(Prod_Date) AS Last_Prod_Date
				  , MAX([Days_On]) AS Days_On
				  , SUM(Oil) AS Cum_Oil
				  , SUM(Gas) AS Cum_Gas
				  , SUM(Water) AS Cum_Water
				  , SUM(BOE) AS Cum_BOE
				  , SUM(MCFE) AS Cum_MCFE
				  , MAX(Oil_MA_1) AS Oil_Peak_1
				  , MAX(Oil_MA_30) AS Oil_Peak_30
				  , MAX(Oil_MA_60) AS Oil_Peak_60
				  , MAX(Oil_MA_90) AS Oil_Peak_90
				  , MAX(Oil_MA_180) AS Oil_Peak_180
				  , MAX(Oil_MA_365) AS Oil_Peak_365
				  , MAX(Gas_MA_1) AS Gas_Peak_1
				  , MAX(Gas_MA_30) AS Gas_Peak_30
				  , MAX(Gas_MA_60) AS Gas_Peak_60
				  , MAX(Gas_MA_90) AS Gas_Peak_90
				  , MAX(Gas_MA_180) AS Gas_Peak_180
				  , MAX(Gas_MA_365) AS Gas_Peak_365
				  , MAX(Water_MA_1) AS Water_Peak_1
				  , MAX(Water_MA_30) AS Water_Peak_30
				  , MAX(Water_MA_60) AS Water_Peak_60
				  , MAX(Water_MA_90) AS Water_Peak_90
				  , MAX(Water_MA_180) AS Water_Peak_180
				  , MAX(Water_MA_365) AS Water_Peak_365
				  , MAX(BOE_MA_1) AS BOE_Peak_1
				  , MAX(BOE_MA_30) AS BOE_Peak_30
				  , MAX(BOE_MA_60) AS BOE_Peak_60
				  , MAX(BOE_MA_90) AS BOE_Peak_90
				  , MAX(BOE_MA_180) AS BOE_Peak_180
				  , MAX(BOE_MA_365) AS BOE_Peak_365
				  , MAX(Mcfe_MA_1) AS Mcfe_Peak_1
				  , MAX(Mcfe_MA_30) AS Mcfe_Peak_30
				  , MAX(Mcfe_MA_60) AS Mcfe_Peak_60
				  , MAX(Mcfe_MA_90) AS Mcfe_Peak_90
				  , MAX(Mcfe_MA_180) AS Mcfe_Peak_180
				  , MAX(Mcfe_MA_365) AS Mcfe_Peak_365
				FROM #tmpProdDaily
				GROUP BY Well_ID)

	SELECT * INTO #tmpPS1 FROM ps1;

	--prodCums gets cumulative values at 365, 730 and days on prod
	--prodCums gets cumulative values at 365 and 730 days on prod
	WITH
		prodCums AS
			(SELECT
					Well_ID
				  , CONVERT(VARCHAR, Days_On) AS Days_On
				  , Cum_Oil
				  , Cum_Gas
				  , Cum_Water
				  , Cum_BOE
				  , Cum_MCFE
				FROM #tmpProdDaily
				WHERE Days_On IN (365, 730)),
		prodCumsUnpivot AS
			(SELECT
					Well_ID
				  , Stream + '_' + Days_On AS Column_Name
				  , Volume
				FROM prodCums
				UNPIVOT (
				Volume
				FOR Stream IN (Cum_Oil, Cum_Gas, Cum_Water, Cum_BOE, Cum_MCFE)

				) u),
		prodCumsPivot AS
			(SELECT
					Well_ID
				  , [Cum_Oil_365]
				  , [Cum_Oil_730]
				  , [Cum_Gas_365]
				  , [Cum_Gas_730]
				  , [Cum_Water_365]
				  , [Cum_Water_730]
				  , [Cum_BOE_365]
				  , [Cum_BOE_730]
				  , [Cum_MCFE_365]
				  , [Cum_MCFE_730]
				FROM (SELECT
						Well_ID
					  , column_name
					  , Volume
					FROM prodCumsUnpivot) s
				PIVOT
				(
				SUM(Volume)
				FOR column_name IN (
				[Cum_Oil_365]
				, [Cum_Oil_730]
				, [Cum_Gas_365]
				, [Cum_Gas_730]
				, [Cum_Water_365]
				, [Cum_Water_730]
				, [Cum_BOE_365]
				, [Cum_BOE_730]
				, [Cum_MCFE_365]
				, [Cum_MCFE_730])) p)

	SELECT * INTO #tmpCumsDaily FROM prodCumsPivot;
	--==================================================================================================================
	-- UPDATE analysis.Production_Statistics_Daily
	--==================================================================================================================

	UPDATE analysis.Production_Statistics_Daily SET
		First_Prod_Date = #tmpPS1.First_Prod_Date
	  , Last_Prod_Date = #tmpPS1.Last_Prod_Date
	  , Days_On_Production = Days_On
	  , Oil_Cumulative = ROUND(#tmpPS1.Cum_Oil, 0)
	  , Oil_Peak_Day = ROUND(#tmpPS1.Oil_Peak_1, 0)
	  , Oil_Peak_30_Days = ROUND(#tmpPS1.Oil_Peak_30, 0)
	  , Oil_Peak_60_Days = ROUND(#tmpPS1.Oil_Peak_60, 0)
	  , Oil_Peak_90_Days = ROUND(#tmpPS1.Oil_Peak_90, 0)
	  , Oil_Peak_180_Days = ROUND(#tmpPS1.Oil_Peak_180, 0)
	  , Oil_Peak_365_Days = ROUND(#tmpPS1.Oil_Peak_365, 0)
	  , Cum_Oil_365_Days = ROUND(#tmpCumsDaily.Cum_Oil_365, 0)
	  , Cum_Oil_730_Days = ROUND(#tmpCumsDaily.Cum_Oil_730, 0)
	  , Gas_Cumulative = ROUND(#tmpPS1.Cum_Gas, 0)
	  , Gas_Peak_Day = ROUND(#tmpPS1.Gas_Peak_1, 0)
	  , Gas_Peak_30_Days = ROUND(#tmpPS1.Gas_Peak_30, 0)
	  , Gas_Peak_60_Days = ROUND(#tmpPS1.Gas_Peak_60, 0)
	  , Gas_Peak_90_Days = ROUND(#tmpPS1.Gas_Peak_90, 0)
	  , Gas_Peak_180_Days = ROUND(#tmpPS1.Gas_Peak_180, 0)
	  , Gas_Peak_365_Days = ROUND(#tmpPS1.Gas_Peak_365, 0)
	  , Cum_Gas_365_Days = ROUND(#tmpCumsDaily.Cum_Gas_365, 0)
	  , Water_Cumulative = ROUND(#tmpPS1.Cum_Water, 0)
	  , Water_Peak_Day = ROUND(#tmpPS1.Water_Peak_1, 0)
	  , Water_Peak_30_Days = ROUND(#tmpPS1.Water_Peak_30, 0)
	  , Water_Peak_60_Days = ROUND(#tmpPS1.Water_Peak_60, 0)
	  , Water_Peak_90_Days = ROUND(#tmpPS1.Water_Peak_90, 0)
	  , Water_Peak_180_Days = ROUND(#tmpPS1.Water_Peak_180, 0)
	  , Water_Peak_365_Days = ROUND(#tmpPS1.Water_Peak_365, 0)
	  , Cum_Water_365_Days = ROUND(#tmpCumsDaily.Cum_Water_365, 0)
	  , Cum_Water_730_Days = ROUND(#tmpCumsDaily.Cum_Water_730, 0)
	  , BOE_Cumulative = ROUND(#tmpPS1.Cum_BOE, 0)
	  , BOE_Peak_Day = ROUND(#tmpPS1.BOE_Peak_1, 0)
	  , BOE_Peak_30_Days = ROUND(#tmpPS1.BOE_Peak_30, 0)
	  , BOE_Peak_60_Days = ROUND(#tmpPS1.BOE_Peak_60, 0)
	  , BOE_Peak_90_Days = ROUND(#tmpPS1.BOE_Peak_90, 0)
	  , BOE_Peak_180_Days = ROUND(#tmpPS1.BOE_Peak_180, 0)
	  , BOE_Peak_365_Days = ROUND(#tmpPS1.BOE_Peak_365, 0)
	  , Cum_BOE_365_Days = ROUND(#tmpCumsDaily.Cum_BOE_365, 0)
	  , Cum_BOE_730_Days = ROUND(#tmpCumsDaily.Cum_BOE_730, 0)
	FROM analysis.Production_Statistics_Daily ps
	INNER JOIN #tmpPS1 ON
		ps.Well_ID = #tmpPS1.Well_ID
	LEFT JOIN #tmpCumsDaily ON
		ps.Well_ID = #tmpCumsDaily.Well_ID;

	--==================================================================================================================
	-- INSERT INTO analysis.Production_Statistics
	--==================================================================================================================

	INSERT INTO analysis.Production_Statistics_Daily (
		Well_ID
	  , First_Prod_Date
	  , Last_Prod_Date
	  , Days_On_Production
	  , Oil_Cumulative
	  , Oil_Peak_Day
	  , Oil_Peak_30_Days
	  , Oil_Peak_60_Days
	  , Oil_Peak_90_Days
	  , Oil_Peak_180_Days
	  , Oil_Peak_365_Days
	  , Cum_Oil_365_Days
	  , Cum_Oil_730_Days
	  , Gas_Cumulative
	  , Gas_Peak_Day
	  , Gas_Peak_30_Days
	  , Gas_Peak_60_Days
	  , Gas_Peak_90_Days
	  , Gas_Peak_180_Days
	  , Gas_Peak_365_Days
	  , Cum_Gas_365_Days
	  , Water_Cumulative
	  , Water_Peak_Day
	  , Water_Peak_30_Days
	  , Water_Peak_60_Days
	  , Water_Peak_90_Days
	  , Water_Peak_180_Days
	  , Water_Peak_365_Days
	  , Cum_Water_365_Days
	  , Cum_Water_730_Days
	  , BOE_Cumulative
	  , BOE_Peak_Day
	  , BOE_Peak_30_Days
	  , BOE_Peak_60_Days
	  , BOE_Peak_90_Days
	  , BOE_Peak_180_Days
	  , BOE_Peak_365_Days
	  , Cum_BOE_365_Days
	  , Cum_BOE_730_Days)
		SELECT
			#tmpPS1.Well_ID
		  , #tmpPS1.First_Prod_Date
		  , #tmpPS1.Last_Prod_Date
		  , Days_On
		  , ROUND(#tmpPS1.Cum_Oil, 0)
		  , ROUND(#tmpPS1.Oil_Peak_1, 0)
		  , ROUND(#tmpPS1.Oil_Peak_30, 0)
		  , ROUND(#tmpPS1.Oil_Peak_60, 0)
		  , ROUND(#tmpPS1.Oil_Peak_90, 0)
		  , ROUND(#tmpPS1.Oil_Peak_180, 0)
		  , ROUND(#tmpPS1.Oil_Peak_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_Oil_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_Oil_730, 0)
		  , ROUND(#tmpPS1.Cum_Gas, 0)
		  , ROUND(#tmpPS1.Gas_Peak_1, 0)
		  , ROUND(#tmpPS1.Gas_Peak_30, 0)
		  , ROUND(#tmpPS1.Gas_Peak_60, 0)
		  , ROUND(#tmpPS1.Gas_Peak_90, 0)
		  , ROUND(#tmpPS1.Gas_Peak_180, 0)
		  , ROUND(#tmpPS1.Gas_Peak_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_Gas_365, 0)
		  , ROUND(#tmpPS1.Cum_Water, 0)
		  , ROUND(#tmpPS1.Water_Peak_1, 0)
		  , ROUND(#tmpPS1.Water_Peak_30, 0)
		  , ROUND(#tmpPS1.Water_Peak_60, 0)
		  , ROUND(#tmpPS1.Water_Peak_90, 0)
		  , ROUND(#tmpPS1.Water_Peak_180, 0)
		  , ROUND(#tmpPS1.Water_Peak_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_Water_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_Water_730, 0)
		  , ROUND(#tmpPS1.Cum_BOE, 0)
		  , ROUND(#tmpPS1.BOE_Peak_1, 0)
		  , ROUND(#tmpPS1.BOE_Peak_30, 0)
		  , ROUND(#tmpPS1.BOE_Peak_60, 0)
		  , ROUND(#tmpPS1.BOE_Peak_90, 0)
		  , ROUND(#tmpPS1.BOE_Peak_180, 0)
		  , ROUND(#tmpPS1.BOE_Peak_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_BOE_365, 0)
		  , ROUND(#tmpCumsDaily.Cum_BOE_730, 0)
		FROM #tmpPS1
			LEFT JOIN analysis.Production_Statistics_Daily Ps ON
				#tmpPS1.Well_ID = Ps.Well_ID
			LEFT JOIN #tmpCumsDaily ON
				Ps.Well_ID = #tmpCumsDaily.Well_ID
		WHERE
			Ps.Well_ID IS NULL;

	--==================================================================================================================
	-- UPDATE GORs
	--==================================================================================================================

	WITH
		Ratio_10 AS
			(SELECT
					Well_ID
				  , SUM(Gas) / SUM(Oil) AS GOR
				  , SUM(Water) / SUM(Oil) AS WOR
				FROM #tmpProdDaily
				WHERE Days_On_Oil < 11
				GROUP BY Well_ID
				HAVING SUM(Oil) > 0)
	UPDATE analysis.Production_Statistics_Daily SET
		AVG_GOR_First_10_Days = Ratio_10.GOR * 1000
	  , AVG_WOR_First_10_Days = Ratio_10.WOR
	FROM analysis.Production_Statistics_Daily ps
	INNER JOIN Ratio_10 ON
		ps.Well_ID = Ratio_10.Well_ID;

	PRINT 'Updating GOR180';
	WITH
		Ratio_180 AS
			(SELECT
					Well_ID
				  , SUM(Gas) / SUM(Oil) AS GOR
				  , SUM(Water) / SUM(Oil) AS WOR
				FROM #tmpProdDaily
				WHERE Days_On_Oil < 181
				GROUP BY Well_ID
				HAVING SUM(Cum_Oil) > 0)
	UPDATE analysis.Production_Statistics_Daily SET
		AVG_GOR_First_180_Days = Ratio_180.GOR * 1000
	  , AVG_WOR_First_180_Days = Ratio_180.WOR
	FROM analysis.Production_Statistics_Daily ps
	INNER JOIN Ratio_180 ON
		ps.Well_ID = Ratio_180.Well_ID;
	PRINT 'Updating GOR365';
	WITH
		Ratio_365 AS
			(SELECT
					Well_ID
				  , Gas_MA_30 / Oil_MA_30 AS GOR
				  , Water_MA_30 / Oil_MA_30 AS WOR
				FROM #tmpProdDaily
				WHERE Days_On_Oil = 379
				AND Oil_MA_30 > 0)
	UPDATE analysis.Production_Statistics_Daily SET
		GOR_at_365_Days = Ratio_365.GOR * 1000
	  , WOR_at_365_Days = Ratio_365.WOR
	FROM analysis.Production_Statistics_Daily ps
	INNER JOIN Ratio_365 ON
		ps.Well_ID = Ratio_365.Well_ID;

	PRINT 'Updating GOR730';
	WITH
		Ratio_730 AS
			(SELECT
					Well_ID
				  , Gas_MA_30 / Oil_MA_30 AS GOR
				  , Water_MA_30 / Oil_MA_30 AS WOR
				FROM #tmpProdDaily
				WHERE Days_On_Oil = 744
				AND Oil_MA_30 > 0)
	UPDATE analysis.Production_Statistics_Daily SET
		GOR_at_730_Days = Ratio_730.GOR * 1000
	  , WOR_at_730_Days = Ratio_730.WOR
	FROM analysis.Production_Statistics_Daily ps
	INNER JOIN Ratio_730 ON
		ps.Well_ID = Ratio_730.Well_ID;

	--Last Prod
	WITH
		LastProd AS
			(SELECT
					Well_ID
				  , Oil
				  , Gas
				  , Water
				  , ROW_NUMBER() OVER (PARTITION BY Well_ID ORDER BY Prod_Date DESC) AS RowNum
				FROM #tmpProdDaily),
		GOR_Last AS
			(SELECT
					LastProd.Well_ID
				  , SUM(LastProd.Gas) / SUM(LastProd.Oil) AS GOR
				  , SUM(LastProd.Water) / SUM(LastProd.Oil) AS WOR
				FROM LastProd
				WHERE RowNum < 31
				GROUP BY LastProd.Well_ID
				HAVING SUM(LastProd.Oil) > 0)
	UPDATE analysis.Production_Statistics_Daily SET
		GOR_Last_30_Days = GOR_Last.GOR * 1000
	  , WOR_Last_30_Days = GOR_Last.WOR
	FROM analysis.Production_Statistics_Daily ps
	INNER JOIN GOR_Last ON
		ps.Well_ID = GOR_Last.Well_ID;
GO
/****** Object:  StoredProcedure [admin].[Process_Monthly_prod]    Script Date: 6/30/2022 9:50:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [admin].[Process_Monthly_prod]
AS
	-- ============================================================================================
	-- Authors:		Ray Flumerfelt, Mary Lynn Clark
	-- Create date:  9/14/2019
	-- Last updated: 11/17/2020
	-- Description:	This stored procedure populates the analysis.Production_Statistics_Monthly records
	--               Inputs: 
	--					    rept.Production_Monthly (merge view)
	--               Output:
	--                       analysis.Production_Statistics_Monthly
	-- ============================================================================================

	WITH
		p AS
			(SELECT
					Well_ID
				  , Prod_Date
				  , SUM(CASE
						WHEN Oil > 0 OR
							Gas > 0 OR
							Water > 0 THEN 1
						ELSE 0
					END) OVER (PARTITION BY Well_ID ORDER BY Prod_Date) AS Months_On_Prod
				  , SUM(CASE
						WHEN Oil > 0 THEN 1
						ELSE 0
					END) OVER (PARTITION BY Well_ID ORDER BY Prod_Date) AS Months_On_Oil
				  , SUM(CASE
						WHEN Gas > 0 THEN 1
						ELSE 0
					END) OVER (PARTITION BY Well_ID ORDER BY Prod_Date) AS Months_On_Gas
				  , Oil
				  , Gas
				FROM prod.Production_Monthly),
		q1 AS
			(SELECT
					Well_ID
				  , Months_On_Prod AS Oil_Peak_Month
				FROM (SELECT
						Well_ID
					  , Months_On_Prod
					  , ROW_NUMBER() OVER (PARTITION BY Well_ID ORDER BY Oil DESC) AS rn
					FROM p) pm
				WHERE pm.rn = 1),
		q2 AS
			(SELECT
					Well_ID
				  , Months_On_Prod AS Gas_Peak_Month
				FROM (SELECT
						Well_ID
					  , Months_On_Prod
					  , ROW_NUMBER() OVER (PARTITION BY Well_ID ORDER BY Gas DESC) AS rn
					FROM p) pm
				WHERE pm.rn = 1)
	UPDATE prod.Production_Monthly
	SET Months_On_Prod = p.Months_On_Prod
	  , Months_On_Oil = p.Months_On_Oil
	  , Months_On_Gas = p.Months_On_Gas
	  ,
		--Months_Since_Peak_Oil = p.Months_On_Oil - q1.Oil_Peak_Month + 1,
		--Months_Since_Peak_Gas = p.Months_On_Gas - q2.Gas_Peak_Month + 1
		Months_Since_Peak_Oil = p.Months_On_Prod - q1.Oil_Peak_Month + 1
	  , Months_Since_Peak_Gas = p.Months_On_Prod - q2.Gas_Peak_Month + 1
	FROM prod.Production_Monthly pm
	INNER JOIN p
		ON p.Well_ID = pm.Well_ID
		AND p.Prod_Date = pm.Prod_Date
	LEFT JOIN q1
		ON q1.Well_ID = pm.Well_ID
	LEFT JOIN q2
		ON q2.Well_ID = pm.Well_ID;


	--==================================================================================================================
	-- Drop tmp tables
	--==================================================================================================================
	DROP TABLE IF EXISTS #tmpCumsMonthly;
	DROP TABLE IF EXISTS #tmpPeaksMonthly;
	DROP TABLE IF EXISTS #tmpProdMonthly;


	--==================================================================================================================
	-- Use CTEs to create tmp tables
	--==================================================================================================================
	--prodJoin filters out days without production
	WITH
		prodJoin AS
			(SELECT
					prd.Well_ID
				  , prd.Prod_Date
				  , prd.Months_On_Prod
				  , prd.Oil
				  , prd.Gas
				  , prd.Water
				  , prd.BHP
				  , SUM(prd.Oil) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_Oil
				  , SUM(prd.Gas) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_Gas
				  , SUM(prd.Water) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_Water
				  , SUM(prd.Oil + prd.Gas / 6) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_BOE
				  , SUM(prd.Oil * 6 + prd.Gas) OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) AS Cum_MCFE
				  , prd.Oil + prd.Gas / 6 AS BOE
				  , prd.Oil * 6 + prd.Gas AS MCFE
				FROM prod.Production_Monthly prd
				WHERE prd.Oil > 0
				OR prd.Gas > 0
				OR prd.Water > 0)
	--prod performs preliminary aggregations required for the final peaks and BHP values
	,
		prod AS
			(SELECT
					prd.Well_ID
				  , prd.Prod_Date
				  , prd.Months_On_Prod
				  , prd.Oil
				  , prd.Gas
				  , prd.Water
				  , prd.BOE
				  , prd.MCFE
				  , Cum_Oil
				  , Cum_Gas
				  , Cum_Water
				  , Cum_BOE
				  , Cum_MCFE
				  ,
					--Oil 1 month
					prd.Oil AS Oil_1_Month
				  ,
					--Oil 3 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 3 THEN NULL
						ELSE AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
					END AS Oil_Avg_3_Months
				  ,
					--Oil 6 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 6 THEN NULL
						ELSE AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 5 PRECEDING AND CURRENT ROW)
					END AS Oil_Avg_6_Months
				  ,
					--Oil 12 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 12 THEN NULL
						ELSE AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)
					END AS Oil_Avg_12_Months
				  ,
					--Oil 24 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 24 THEN NULL
						ELSE AVG(prd.Oil) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 23 PRECEDING AND CURRENT ROW)
					END AS Oil_Avg_24_Months
				  ,
					--Gas 1 month
					prd.Gas AS Gas_1_Month
				  ,
					--Gas 3 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 3 THEN NULL
						ELSE AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
					END AS Gas_Avg_3_Months
				  ,
					--Gas 6 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 6 THEN NULL
						ELSE AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 5 PRECEDING AND CURRENT ROW)
					END AS Gas_Avg_6_Months
				  ,
					--Gas 12 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 12 THEN NULL
						ELSE AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)
					END AS Gas_Avg_12_Months
				  ,
					--Gas 24 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 24 THEN NULL
						ELSE AVG(prd.Gas) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 23 PRECEDING AND CURRENT ROW)
					END AS Gas_Avg_24_Months
				  ,
					--Water 1 month
					prd.Water AS Water_1_Month
				  ,
					--Water 3 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 3 THEN NULL
						ELSE AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
					END AS Water_Avg_3_Months
				  ,
					--Water 6 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 6 THEN NULL
						ELSE AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 5 PRECEDING AND CURRENT ROW)
					END AS Water_Avg_6_Months
				  ,
					--Water 12 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 12 THEN NULL
						ELSE AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)
					END AS Water_Avg_12_Months
				  ,
					--Water 24 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 24 THEN NULL
						ELSE AVG(prd.Water) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 23 PRECEDING AND CURRENT ROW)
					END AS Water_Avg_24_Months
				  ,
					--BOE 1 month
					prd.Boe AS Boe_1_Month
				  ,
					--Boe 3 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 3 THEN NULL
						ELSE AVG(prd.Boe) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
					END AS Boe_Avg_3_Months
				  ,
					--Boe 6 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 6 THEN NULL
						ELSE AVG(prd.Boe) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 5 PRECEDING AND CURRENT ROW)
					END AS Boe_Avg_6_Months
				  ,
					--Boe 12 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 12 THEN NULL
						ELSE AVG(prd.Boe) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)
					END AS Boe_Avg_12_Months
				  ,
					--Boe 24 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 24 THEN NULL
						ELSE AVG(prd.Boe) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 23 PRECEDING AND CURRENT ROW)
					END AS Boe_Avg_24_Months
				  ,
					--MCFE 1 month
					prd.MCFE AS MCFE_1_Month
				  ,
					--MCFE 3 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 3 THEN NULL
						ELSE AVG(prd.MCFE) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
					END AS MCFE_Avg_3_Months
				  ,
					--MCFE 6 month avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 6 THEN NULL
						ELSE AVG(prd.MCFE) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 5 PRECEDING AND CURRENT ROW)
					END AS MCFE_Avg_6_Months
				  ,
					--MCFE 12 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 12 THEN NULL
						ELSE AVG(prd.MCFE) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)
					END AS MCFE_Avg_12_Months
				  ,
					--MCFE 24 months avg
					CASE
						WHEN ROW_NUMBER() OVER (PARTITION BY prd.Well_ID ORDER BY prd.Prod_Date) < 24 THEN NULL
						ELSE AVG(prd.MCFE) OVER (PARTITION BY prd.Well_ID
							ORDER BY prd.Prod_Date
							ROWS BETWEEN 23 PRECEDING AND CURRENT ROW)
					END AS MCFE_Avg_24_Months
				FROM prodJoin prd)

	SELECT
		*
	INTO #tmpProdMonthly
	FROM prod;


	WITH
		Peaks AS
			(SELECT
					Well_ID
				  , MIN(Prod_Date) AS First_Prod_Date
				  , MAX(Prod_Date) AS Last_Prod_Date
				  , MAX([Months_On_Prod]) AS Months_On_Prod
				  , SUM(Oil) AS Cum_Oil
				  , SUM(Gas) AS Cum_Gas
				  , SUM(Water) AS Cum_Water
				  , SUM(BOE) AS Cum_BOE
				  , SUM(MCFE) AS Cum_MCFE
				  , MAX(Oil_1_Month) / 30.417 AS Oil_Peak_1_Month
				  , MAX(Oil_Avg_3_Months) / 30.417 AS Oil_Peak_3_Months
				  , MAX(Oil_Avg_6_Months) / 30.417 AS Oil_Peak_6_Months
				  , MAX(Oil_Avg_12_Months) / 30.417 AS Oil_Peak_12_Months
				  , MAX(Oil_Avg_24_Months) / 30.417 AS Oil_Peak_24_Months
				  , MAX(Gas_1_Month) / 30.417 AS Gas_Peak_1_Month
				  , MAX(Gas_Avg_3_Months) / 30.417 AS Gas_Peak_3_Months
				  , MAX(Gas_Avg_6_Months) / 30.417 AS Gas_Peak_6_Months
				  , MAX(Gas_Avg_12_Months) / 30.417 AS Gas_Peak_12_Months
				  , MAX(Gas_Avg_24_Months) / 30.417 AS Gas_Peak_24_Months
				  , MAX(Water_1_Month) / 30.417 AS Water_Peak_1_Month
				  , MAX(Water_Avg_3_Months) / 30.417 AS Water_Peak_3_Months
				  , MAX(Water_Avg_6_Months) / 30.417 AS Water_Peak_6_Months
				  , MAX(Water_Avg_12_Months) / 30.417 AS Water_Peak_12_Months
				  , MAX(Water_Avg_24_Months) / 30.417 AS Water_Peak_24_Months
				  , MAX(Boe_1_Month) / 30.417 Boe_Peak_1_Month
				  , MAX(Boe_Avg_3_Months) / 30.417 AS Boe_Peak_3_Months
				  , MAX(Boe_Avg_6_Months) / 30.417 AS Boe_Peak_6_Months
				  , MAX(Boe_Avg_12_Months) / 30.417 AS Boe_Peak_12_Months
				  , MAX(Boe_Avg_24_Months) / 30.417 AS Boe_Peak_24_Months
				  , MAX(MCFE_1_Month) / 30.417 MCFE_Peak_1_Month
				  , MAX(MCFE_Avg_3_Months) / 30.417 AS MCFE_Peak_3_Months
				  , MAX(MCFE_Avg_6_Months) / 30.417 AS MCFE_Peak_6_Months
				  , MAX(MCFE_Avg_12_Months) / 30.417 AS MCFE_Peak_12_Months
				  , MAX(MCFE_Avg_24_Months) / 30.417 AS MCFE_Peak_24_Months
				FROM #tmpProdMonthly
				GROUP BY Well_ID)
	SELECT
		*
	INTO #tmpPeaksMonthly
	FROM Peaks;

	--prodCums gets cumulative values at 30, 60, 90, 180, 365, 730 days on prod
	WITH
		prodCums AS
			(SELECT
					Well_ID
				  , Months_On_Prod
				  , Cum_Oil
				  , Cum_Gas
				  , Cum_Water
				  , Cum_BOE
				  , Cum_MCFE
				FROM #tmpProdMonthly
				WHERE Months_On_Prod IN (60, 120)),
		prodCumsUnpivotCte AS
			(SELECT
					Well_ID
				  , Stream + '_' + CONVERT(VARCHAR, Months_On_Prod) AS Column_Name
				  , Stream
				  , Volume
				FROM prodCums
				UNPIVOT
				(
				Volume
				FOR Stream IN (Cum_Oil, Cum_Gas, Cum_Water, Cum_BOE, Cum_MCFE)

				) u),
		prodCumsPivotCte AS
			(SELECT
					Well_ID
				  , [Cum_Oil_60]
				  , [Cum_Oil_120]
				  , [Cum_Gas_60]
				  , [Cum_Gas_120]
				  , [Cum_Water_60]
				  , [Cum_Water_120]
				  , [Cum_BOE_60]
				  , [Cum_BOE_120]
				  , [Cum_MCFE_60]
				  , [Cum_MCFE_120]
				FROM (SELECT
						Well_ID
					  , column_name
						--, Stream
					  , Volume
					FROM prodCumsUnpivotCte) s
				PIVOT
				(
				SUM(Volume)
				FOR column_name IN (
				[Cum_Oil_60], [Cum_Oil_120],
				[Cum_Gas_60], [Cum_Gas_120],
				[Cum_Water_60], [Cum_Water_120],
				[Cum_BOE_60], [Cum_BOE_120],
				[Cum_MCFE_60], [Cum_MCFE_120])

				) p)
	SELECT
		*
	INTO #tmpCumsMonthly
	FROM prodCumsPivotCte;
	--==================================================================================================================
	-- UPDATE analysis.Production_Statistics
	--==================================================================================================================

	UPDATE analysis.Production_Statistics_Monthly
	SET First_Prod_Date = #tmpPeaksMonthly.First_Prod_Date
	  , Last_Prod_Date = #tmpPeaksMonthly.Last_Prod_Date
	  , Months_On_Production = Months_On_Prod
	  , Oil_Cumulative = CONVERT(INT, ROUND(#tmpPeaksMonthly.Cum_Oil, 0))
	  , Oil_Peak_1_Month = CONVERT(INT, ROUND(#tmpPeaksMonthly.Oil_Peak_1_Month, 0))
	  , Oil_Peak_3_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Oil_Peak_3_Months, 0))
	  , Oil_Peak_6_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Oil_Peak_6_Months, 0))
	  , Oil_Peak_12_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Oil_Peak_12_Months, 0))
	  , Oil_Peak_24_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Oil_Peak_24_Months, 0))
	  , Gas_Cumulative = CONVERT(INT, ROUND(#tmpPeaksMonthly.Cum_Gas, 0))
	  , Gas_Peak_1_Month = CONVERT(INT, ROUND(#tmpPeaksMonthly.Gas_Peak_1_Month, 0))
	  , Gas_Peak_3_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Gas_Peak_3_Months, 0))
	  , Gas_Peak_6_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Gas_Peak_6_Months, 0))
	  , Gas_Peak_12_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Gas_Peak_12_Months, 0))
	  , Gas_Peak_24_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Gas_Peak_24_Months, 0))
	  , Water_Cumulative = CONVERT(INT, ROUND(#tmpPeaksMonthly.Cum_Water, 0))
	  , Water_Peak_1_Month = CONVERT(INT, ROUND(#tmpPeaksMonthly.Water_Peak_1_Month, 0))
	  , Water_Peak_3_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Water_Peak_3_Months, 0))
	  , Water_Peak_6_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Water_Peak_6_Months, 0))
	  , Water_Peak_12_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Water_Peak_12_Months, 0))
	  , Water_Peak_24_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.Water_Peak_24_Months, 0))
	  , BOE_Peak_1_Month = CONVERT(INT, ROUND(#tmpPeaksMonthly.BOE_Peak_1_Month, 0))
	  , BOE_Peak_3_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.BOE_Peak_3_Months, 0))
	  , BOE_Peak_6_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.BOE_Peak_6_Months, 0))
	  , BOE_Peak_12_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.BOE_Peak_12_Months, 0))
	  , BOE_Peak_24_Months = CONVERT(INT, ROUND(#tmpPeaksMonthly.BOE_Peak_24_Months, 0))
	  , Oil_5_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_Oil_60, 0))
	  , Oil_10_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_Oil_120, 0))
	  , Gas_5_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_Gas_60, 0))
	  , Gas_10_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_Gas_120, 0))
	  , Water_5_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_Water_60, 0))
	  , Water_10_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_Water_120, 0))
	  , BOE_5_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_BOE_60, 0))
	  , BOE_10_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_BOE_120, 0))
	  , MCFE_5_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_MCFE_60, 0))
	  , MCFE_10_Yr_Cum = CONVERT(INT, ROUND(#tmpCumsMonthly.Cum_MCFE_120, 0))
	FROM analysis.Production_Statistics_Monthly ps
	INNER JOIN #tmpPeaksMonthly
		ON ps.Well_ID = #tmpPeaksMonthly.Well_ID
	LEFT JOIN #tmpCumsMonthly
		ON ps.Well_ID = #tmpCumsMonthly.Well_ID;

	--==================================================================================================================
	-- INSERT INTO analysis.Production_Statistics
	--==================================================================================================================

	INSERT INTO analysis.Production_Statistics_Monthly (Well_ID
	, First_Prod_Date
	, Last_Prod_Date
	, Months_On_Production
	, Oil_Cumulative
	, Oil_Peak_1_Month
	, Oil_Peak_3_Months
	, Oil_Peak_6_Months
	, Oil_Peak_12_Months
	, Oil_Peak_24_Months
	, Gas_Cumulative
	, Gas_Peak_1_Month
	, Gas_Peak_3_Months
	, Gas_Peak_6_Months
	, Gas_Peak_12_Months
	, Gas_Peak_24_Months
	, Water_Cumulative
	, Water_Peak_1_Month
	, Water_Peak_3_Months
	, Water_Peak_6_Months
	, Water_Peak_12_Months
	, Water_Peak_24_Months
	, BOE_Cumulative
	, BOE_Peak_1_Month
	, BOE_Peak_3_Months
	, BOE_Peak_6_Months
	, BOE_Peak_12_Months
	, BOE_Peak_24_Months
	, MCFE_Cumulative
	, MCFE_Peak_1_Month
	, MCFE_Peak_3_Months
	, MCFE_Peak_6_Months
	, MCFE_Peak_12_Months
	, MCFE_Peak_24_Months
	, Oil_5_Yr_Cum
	, Oil_10_Yr_Cum
	, Gas_5_Yr_Cum
	, Gas_10_Yr_Cum
	, Water_5_Yr_Cum
	, Water_10_Yr_Cum
	, BOE_5_Yr_Cum
	, BOE_10_Yr_Cum
	, MCFE_5_Yr_Cum
	, MCFE_10_Yr_Cum)
		SELECT
			#tmpPeaksMonthly.Well_ID
		  , #tmpPeaksMonthly.First_Prod_Date
		  , #tmpPeaksMonthly.Last_Prod_Date
		  , Months_On_Production
		  , #tmpPeaksMonthly.Cum_Oil
		  , #tmpPeaksMonthly.Oil_Peak_1_Month
		  , #tmpPeaksMonthly.Oil_Peak_3_Months
		  , #tmpPeaksMonthly.Oil_Peak_6_Months
		  , #tmpPeaksMonthly.Oil_Peak_12_Months
		  , #tmpPeaksMonthly.Oil_Peak_24_Months
		  , #tmpPeaksMonthly.Cum_Gas
		  , #tmpPeaksMonthly.Gas_Peak_1_Month
		  , #tmpPeaksMonthly.Gas_Peak_3_Months
		  , #tmpPeaksMonthly.Gas_Peak_6_Months
		  , #tmpPeaksMonthly.Gas_Peak_12_Months
		  , #tmpPeaksMonthly.Gas_Peak_24_Months
		  , #tmpPeaksMonthly.Cum_Water
		  , #tmpPeaksMonthly.Water_Peak_1_Month
		  , #tmpPeaksMonthly.Water_Peak_3_Months
		  , #tmpPeaksMonthly.Water_Peak_6_Months
		  , #tmpPeaksMonthly.Water_Peak_12_Months
		  , #tmpPeaksMonthly.Water_Peak_24_Months
		  , #tmpPeaksMonthly.Cum_BOE
		  , #tmpPeaksMonthly.BOE_Peak_1_Month
		  , #tmpPeaksMonthly.BOE_Peak_3_Months
		  , #tmpPeaksMonthly.BOE_Peak_6_Months
		  , #tmpPeaksMonthly.BOE_Peak_12_Months
		  , #tmpPeaksMonthly.BOE_Peak_24_Months
		  , #tmpPeaksMonthly.Cum_MCFE
		  , #tmpPeaksMonthly.MCFE_Peak_1_Month
		  , #tmpPeaksMonthly.MCFE_Peak_3_Months
		  , #tmpPeaksMonthly.MCFE_Peak_6_Months
		  , #tmpPeaksMonthly.MCFE_Peak_12_Months
		  , #tmpPeaksMonthly.MCFE_Peak_24_Months
		  , #tmpCumsMonthly.Cum_Oil_60
		  , #tmpCumsMonthly.Cum_Oil_120
		  , #tmpCumsMonthly.Cum_Gas_60
		  , #tmpCumsMonthly.Cum_Gas_120
		  , #tmpCumsMonthly.Cum_Water_60
		  , #tmpCumsMonthly.Cum_Water_120
		  , #tmpCumsMonthly.Cum_BOE_60
		  , #tmpCumsMonthly.Cum_BOE_120
		  , #tmpCumsMonthly.Cum_MCFE_60
		  , #tmpCumsMonthly.Cum_MCFE_120
		FROM #tmpPeaksMonthly
		LEFT JOIN analysis.Production_Statistics_Monthly Ps
			ON #tmpPeaksMonthly.Well_ID = Ps.Well_ID
		LEFT JOIN #tmpCumsMonthly
			ON Ps.Well_ID = #tmpCumsMonthly.Well_ID
		WHERE Ps.Well_ID IS NULL;

	--==================================================================================================================
	-- UPDATE GORs
	--==================================================================================================================

	WITH
		GORF1 AS
			(SELECT
					Well_ID
				  , SUM(Gas) / SUM(Oil) AS GOR
				FROM #tmpProdMonthly
				WHERE Months_On_Prod = 1
				GROUP BY Well_ID
				HAVING SUM(Oil) > 0)
	UPDATE analysis.Production_Statistics_Monthly
	SET First_Month_Gas_Oil_Ratio = GORF1.GOR * 1000
	FROM analysis.Production_Statistics_Monthly ps
	INNER JOIN GORF1
		ON ps.Well_ID = GORF1.Well_ID;

	WITH
		GORF6 AS
			(SELECT
					Well_ID
				  , SUM(Gas) / SUM(Oil) AS GOR
				FROM #tmpProdMonthly
				WHERE Months_On_Prod < 7
				GROUP BY Well_ID
				HAVING SUM(Oil) > 0)
	UPDATE analysis.Production_Statistics_Monthly
	SET Gas_Oil_Ratio_at_6_Months = GORF6.GOR * 1000
	FROM analysis.Production_Statistics_Monthly ps
	INNER JOIN GORF6
		ON ps.Well_ID = GORF6.Well_ID;

	WITH
		GORF12 AS
			(SELECT
					Well_ID
				  , SUM(Gas) / SUM(Oil) AS GOR
				FROM #tmpProdMonthly
				WHERE Months_On_Prod < 13
				GROUP BY Well_ID
				HAVING SUM(Oil) > 0)
	UPDATE analysis.Production_Statistics_Monthly
	SET Gas_Oil_Ratio_at_1_Yr = GORF12.GOR * 1000
	FROM analysis.Production_Statistics_Monthly ps
	INNER JOIN GORF12
		ON ps.Well_ID = GORF12.Well_ID;

	WITH
		GORF24 AS
			(SELECT
					Well_ID
				  , SUM(Gas) / SUM(Oil) AS GOR
				FROM #tmpProdMonthly
				WHERE Months_On_Prod < 25
				GROUP BY Well_ID
				HAVING SUM(Oil) > 0)
	UPDATE analysis.Production_Statistics_Monthly
	SET Gas_Oil_Ratio_at_2_Yrs = GORF24.GOR * 1000
	FROM analysis.Production_Statistics_Monthly ps
	INNER JOIN GORF24
		ON ps.Well_ID = GORF24.Well_ID;

	--Last Prod
	WITH
		LastProd AS
			(SELECT
					Well_ID
				  , Oil
				  , Gas
				  , ROW_NUMBER() OVER (PARTITION BY Well_ID ORDER BY Prod_Date DESC) AS RowNum
				FROM #tmpProdMonthly),
		GOR_Last AS
			(SELECT
					LastProd.Well_ID
				  , SUM(LastProd.Gas) / SUM(LastProd.Oil) AS GOR
				FROM LastProd
				WHERE RowNum <= 1
				GROUP BY LastProd.Well_ID
				HAVING SUM(LastProd.Oil) > 0)
	UPDATE analysis.Production_Statistics_Monthly
	SET Last_Month_Gas_Oil_Ratio = GOR_Last.GOR * 1000
	FROM analysis.Production_Statistics_Monthly ps
	INNER JOIN GOR_Last
		ON ps.Well_ID = GOR_Last.Well_ID;


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Job_Data_by_Well (frac)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 289
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 51
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFrac_Job_Data_By_Well'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFrac_Job_Data_By_Well'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "wh"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 64
         End
         Begin Table = "wr"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "wd"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 291
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "fw"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ps"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vOneline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vOneline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vOneline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Header (well)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 63
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWell_Header'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWell_Header'
GO
