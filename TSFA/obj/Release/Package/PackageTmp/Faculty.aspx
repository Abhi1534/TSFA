<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="TSFA.Faculty" Title="Guest Faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="blog-style1 text-justify">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="item item1 text-center">
<div class="content pd_0px">
<h5 class="margin-15px-bottom mn"><a>RESOURCE PERSONS</a></h5>
</div>
</div>
</div>
<div class="table table-hover">
<table class="table">
<th scope="col" style="width: 6%;">Sl.No.</th>
<th scope="col" style="width: 35%;">Name of the Resource Person</th>
<th scope="col" style="width: 15%;">Nation Wide/ State Wide</th>
<th scope="col" style="width: 25%;">Subject</th>
<th scope="col" style="width: 12%;">Contact Number</th>
<th scope="col" style="width: 10%;">Bilingual Language (English / Telugu)</th>

<tr>	<td>	1	</td>	<td>	Dr. Farida Tampal, State Director- WWF India	</td>	<td>	State Wide	</td>	<td>	Wildlife Management Techniques	</td>	<td>	9440751037	</td>	<td>	No	</td>	</tr>
<tr>	<td>	2	</td>	<td>	Dr. G. Narsaiah, IFS (R)	</td>	<td>	State Wide	</td>	<td>	General Silviculture 	</td>	<td>	9849468031	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	3	</td>	<td>	Dr. Hakeem,  Dy. Director Veterinary	</td>	<td>	State Wide	</td>	<td>	Wildlife Management Techniques	</td>	<td>	9949082253	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	4	</td>	<td>	Dr. N. Kondal Rao, DF (Rtd) 	</td>	<td>	State Wide	</td>	<td>	SMC & WHS	</td>	<td>	9441831324	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	5	</td>	<td>	Dr. Sridhar, Naturopathy and Yoga Specialist	</td>	<td>	State Wide	</td>	<td>	Personality Development 	</td>	<td>	9440052182	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	6	</td>	<td>	Dr. Sudhakar Goud, Asst Professor,Telangana University	</td>	<td>	State Wide	</td>	<td>	Geo information  	</td>	<td>	9490174237	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	7	</td>	<td>	Dr.V.Srinivas, Asst Professor	</td>	<td>	State Wide	</td>	<td>	Personality Development 	</td>	<td>	9491384735	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	8	</td>	<td>	Ms. Niharika, Eco- Tourism Specialist	</td>	<td>	State Wide	</td>	<td>	Eco – Tourism 	</td>	<td>	9407528604	</td>	<td>	No	</td>	</tr>
<tr>	<td>	9	</td>	<td>	Ms.Yamini Meduri, Asst. Professor, Vignana Jyothi Institute of Management	</td>	<td>	State Wide	</td>	<td>	Emotional Intelligence for Increased workplace 	</td>	<td>	9704451662	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	10	</td>	<td>	Smt. Subbalakshmi, Asst. Professor Mallareddy College	</td>	<td>	State Wide	</td>	<td>	Estimates Preparation with Special Focus on Civil Works	</td>	<td>	9177389973	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	11	</td>	<td>	Sri. A.Shankaran, Dy CF (Rtd)	</td>	<td>	State Wide	</td>	<td>	Wildlife Management Techniques	</td>	<td>	9494019595	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	12	</td>	<td>	Sri. B. V. Rao, DFO, Jagityal	</td>	<td>	State Wide	</td>	<td>	Best practices & Innovations in forestry 	</td>	<td>	9440816287	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	13	</td>	<td>	Sri. Bakya Babu, FDO	</td>	<td>	State Wide	</td>	<td>	AR	</td>	<td>	9440810081	</td>	<td>	No	</td>	</tr>
<tr>	<td>	14	</td>	<td>	Sri. Basava Shankar Rao	</td>	<td>	State Wide	</td>	<td>	NTFP	</td>	<td>	9490410173	</td>	<td>	No	</td>	</tr>
<tr>	<td>	15	</td>	<td>	Sri. Bh. Nagendra Rao, Professor , Mallareddy College	</td>	<td>	State Wide	</td>	<td>	Estimates Preparation with Special Focus on Civil Works	</td>	<td>	8790292134	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	16	</td>	<td>	Sri. Chandra Sekhar	</td>	<td>	State Wide	</td>	<td>	Water harvesting 	</td>	<td>	9000220638	</td>	<td>		</td>	</tr>
<tr>	<td>	17	</td>	<td>	Sri. D. Hussain Babu, ADA (Tech) B.Tech (Agri), ME (Agri) 	</td>	<td>	State Wide	</td>	<td>	SMC & WHS	</td>	<td>	7893344299	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	18	</td>	<td>	Sri. Damodar, Reddy, ACF	</td>	<td>	State Wide	</td>	<td>	Field Record 	</td>	<td>		</td>	<td>	No	</td>	</tr>
<tr>	<td>	19	</td>	<td>	Sri. Dr. Rama Murthy, ACF (HRD)	</td>	<td>	State Wide	</td>	<td>	SMC & WHS, GIS & MIS modules	</td>	<td>	9440810146	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	20	</td>	<td>	Sri. G. Maduletty, ACF (Rtd) 	</td>	<td>	State Wide	</td>	<td>	Forest Law 	</td>	<td>	7382607524	</td>	<td>	No	</td>	</tr>
<tr>	<td>	21	</td>	<td>	Sri. G. Ramakrishna Rao, Dy, CF (Rtd)	</td>	<td>	State Wide	</td>	<td>	Wildlife Management Techniques	</td>	<td>	9390308666	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	22	</td>	<td>	Sri. G. Raman Goud  DFO (Rtd)	</td>	<td>	State Wide	</td>	<td>	Law 	</td>	<td>	9391499119	</td>	<td>	No	</td>	</tr>
<tr>	<td>	23	</td>	<td>	Sri. G. Ravinder, ACF (Rtd)	</td>	<td>	State Wide	</td>	<td>	Forest Law 	</td>	<td>	9866411645	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	24	</td>	<td>	Sri. G. Ravinder, DFO, (Rtd) 	</td>	<td>	State wide	</td>	<td>	Forest law 	</td>	<td>	9866411655	</td>	<td>	No	</td>	</tr>
<tr>	<td>	25	</td>	<td>	Sri. K. Pradeep, Dy CF (Rtd)	</td>	<td>	State Wide	</td>	<td>	Accounts & Office Procedure 	</td>	<td>	9848178693	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	26	</td>	<td>	Sri. K. Ravinder  DFO (Rtd) 	</td>	<td>	State Wide	</td>	<td>	Law	</td>	<td>	9494437570	</td>	<td>	No	</td>	</tr>
<tr>	<td>	27	</td>	<td>	Sri. K. Srinivas Rao, Audit Officer	</td>	<td>	State Wide	</td>	<td>	Noting and Drafting skills 	</td>	<td>	8897973867	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	28	</td>	<td>	Sri. K. Srinivas, Asst Professor, OU	</td>	<td>	State Wide	</td>	<td>	Forest Economics 	</td>	<td>	9490096812	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	29	</td>	<td>	Sri. Karthik Reddy, PS MIS	</td>	<td>	State Wide	</td>	<td>	Data posting TGFMIS 	</td>	<td>	9959637550	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	30	</td>	<td>	Sri. KBR Prasad Reddy, Professor, Mallareddy College	</td>	<td>	State Wide	</td>	<td>	Estimates Preparation with Special Focus on Civil Works	</td>	<td>	9160022002	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	31	</td>	<td>	Sri. M. Uday Bhaskar, Asst. Professor, Mallareddy College	</td>	<td>	State Wide	</td>	<td>	Estimates Preparation with Special Focus on Civil Works	</td>	<td>	9989844233	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	32	</td>	<td>	Sri. P. Sreenivasa Rao, Dy. CF MIS	</td>	<td>	State Wide	</td>	<td>	SMC & WHS, GIS & MIS modules	</td>	<td>	9440810176	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	33	</td>	<td>	Sri. Prasad, PS MIS	</td>	<td>	State Wide	</td>	<td>	Data posting TGFMIS	</td>	<td>	9246789042	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	34	</td>	<td>	Sri. Ram Kumar, TO, Adilabad Division	</td>	<td>	State Wide	</td>	<td>	Estimates Preparation with Special Focus on Civil Works 	</td>	<td>	7337552461 & 9550451424	</td>	<td>	No	</td>	</tr>
<tr>	<td>	35	</td>	<td>	Sri. Ravindra	</td>	<td>	State Wide	</td>	<td>	Water Resource management 	</td>	<td>	9440621861	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	36	</td>	<td>	Sri. S. Madhava Rao, FDO Jannaram	</td>	<td>	State Wide	</td>	<td>	SMC & WHS, GIS & MIS modules 	</td>	<td>	9440810183	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	37	</td>	<td>	Sri. S. Raghavendra Chary, Dy. Director, (Rtd) GWS, Environment Expert Watershed Consultant 	</td>	<td>	State Wide	</td>	<td>	Hydrology, SMC & WHS	</td>	<td>	8464955068 & 7989994931	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	38	</td>	<td>	Sri. Sadashivaiah, Asst Professor	</td>	<td>	State Wide	</td>	<td>	Grass land management & Plant taxonomy 	</td>	<td>	9963536233	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	39	</td>	<td>	Sri. Sureka	</td>	<td>	State Wide	</td>	<td>	Personality Development 	</td>	<td>	8978066006	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	40	</td>	<td>	Sri. T. Anith, Asst. Professor, Mallareddy College	</td>	<td>	State Wide	</td>	<td>	Estimates Preparation with Special Focus on Civil Works	</td>	<td>	9989627177	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	41	</td>	<td>	Sri. TP Thimma Reddy IFS, CF (Rtd) 	</td>	<td>	State Wide	</td>	<td>	Forest Protection 	</td>	<td>	8096678888	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	42	</td>	<td>	Sri. V. Avinash, Project Assistant,	</td>	<td>	State Wide	</td>	<td>	Friends of Snakes society 	</td>	<td>	9866059903	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	43	</td>	<td>	Sri. V. Ram Mohan ACF	</td>	<td>	State Wide	</td>	<td>	ANR 	</td>	<td>	8331026853	</td>	<td>	No	</td>	</tr>
<tr>	<td>	44	</td>	<td>	Sri. Y. Narasimha Rao, Dy.CF (Rtd)	</td>	<td>	State Wide	</td>	<td>	Forest Resource Assessment, Mensuration	</td>	<td>	9441420111	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	45	</td>	<td>	Dr. B.Uday Kumar Reddy, President (ISMA) India Chapter	</td>	<td>	Nation Wide	</td>	<td>	Stress Management 	</td>	<td>	9490785566	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	46	</td>	<td>	Dr. K. Tirupataiah, IFS  (Rtd)	</td>	<td>	Nation Wide	</td>	<td>	Effective leadership & Conflict resolutions	</td>	<td>	8885532021	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	47	</td>	<td>	Dr. Muralidhar, Director, CAMEL	</td>	<td>	Nation Wide	</td>	<td>	Personality Development	</td>	<td>	9390103375	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	48	</td>	<td>	Dr. Naveen Kumar, Dy. Director Veterinary (Rtd)	</td>	<td>	Nation Wide	</td>	<td>	Wildlife Management Techniques	</td>	<td>	9949971545	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	49	</td>	<td>	"Dr. Priya R M, Assistant Professor 
(Forest Ecology) Department of Forest Ecology and Climate Science, FCRI, Mulugu."	</td>	<td>	Nation Wide	</td>	<td>	Forestry with specialization in Silviculture	</td>	<td>	7620536784	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	50	</td>	<td>	"Dr. Reeja Sundaram, Assistant Professor.
(Tree Improvement) Department of Tree breeding and Improvement Forest College and Research Institute, FCRI, Mulugu"	</td>	<td>	Nation Wide	</td>	<td>	Tree Genetics, Tree Breeding and Improvement with special focus on clonal forestry and Conservation Biology. She has also worked extensively on the improvement of Bio-diesel crop Jatropha.	</td>	<td>	9704930790	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	51	</td>	<td>	Dr. Sailu, SPC, TSBDB	</td>	<td>	Nation Wide	</td>	<td>	Biodiversity & Its Application in Forestry 	</td>	<td>	9908179665	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	52	</td>	<td>	Dr. Shashikala, Asst Professor, OU	</td>	<td>	Nation Wide	</td>	<td>	Ecology & Environmental science 	</td>	<td>	9030318072	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	53	</td>	<td>	Smt. Sailaja. V , Assistant Professor (Entomology) FCRI, Mulugu.	</td>	<td>	Nation Wide	</td>	<td>	Natural Resource Management and Conservation	</td>	<td>	9951422992	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	54	</td>	<td>	Sri Munindra, IFS, PCCF (Rtd)	</td>	<td>	Nation Wide	</td>	<td>	Forest Resource assessment & Wildlife management 	</td>	<td>	9666400099	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	55	</td>	<td>	"Sri. Gampa Nageshwar Rao, MA, MS, MBA, M. Phil Certified trainer from JCI Training Chesterfield USA,
Soft skill trainer Psychologist Master Motivator Impact Foundation Hyderabad "	</td>	<td>	Nation Wide	</td>	<td>	Personality Development Soft skills 	</td>	<td>	9849000026	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	56	</td>	<td>	Sri. Hussain	</td>	<td>	Nation Wide	</td>	<td>	Biodiversity & its application in Forestry	</td>	<td>	9949602074	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	57	</td>	<td>	Sri. I.Prakash, M. Tech, Dy. CF HMDA Hyderabad	</td>	<td>	Nation Wide	</td>	<td>	Forest Resource Assessment/ Mensuration 	</td>	<td>	9553978679	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	58	</td>	<td>	Sri. Imran Sidiqqui, WCS- India ( Assistant Director, Conservation science)	</td>	<td>	Nation Wide	</td>	<td>	Combating Wildlife Trafficking 	</td>	<td>	9704876609	</td>	<td>	No	</td>	</tr>
<tr>	<td>	59	</td>	<td>	Sri. J.S.N.Murthy, IFS (Rtd), Director, APFA,  Rajahmundry	</td>	<td>	Nation Wide	</td>	<td>	Silviculture Botany	</td>	<td>	9494993939	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	60	</td>	<td>	Sri. Jaya Prasad, IFS, Director, IFB	</td>	<td>	Nation Wide	</td>	<td>	Biodiversity & Its Application in Forestry	</td>	<td>	9440797070	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	61	</td>	<td>	Sri. K. Nageshwar Rao, Director (Rtd), Planning Department	</td>	<td>	Nation Wide	</td>	<td>	Noting and Drafting skills	</td>	<td>	8790900606	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	62	</td>	<td>	Sri. M. Rama Prasad IFS (Rtd)	</td>	<td>	Nation Wide	</td>	<td>	Goal setting & Employee Involvement	</td>	<td>	9010904455	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	63	</td>	<td>	Sri. Maria Cristu Raju, IFS	</td>	<td>	Nation Wide	</td>	<td>	Wildlife Management (Man Animal Conflict)	</td>	<td>	9456548611	</td>	<td>	No	</td>	</tr>
<tr>	<td>	64	</td>	<td>	Sri. P. Raghuveer, IFS	</td>	<td>	Nation Wide	</td>	<td>	Forest fires – Major challenges & mitigation measures 	</td>	<td>	9440816297	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	65	</td>	<td>	Sri. Shaik Hussain, Freelancer TS BDB	</td>	<td>	Nation Wide	</td>	<td>	Biodiversity & Its Application in Forestry	</td>	<td>	9949602074	</td>	<td>	Yes	</td>	</tr>
<tr>	<td>	66	</td>	<td>	Sri. Shivaram Babu	</td>	<td>	Nation Wide	</td>	<td>	Wildlife Management (Man Animal Conflict)	</td>	<td>	8754830288	</td>	<td>	No	</td>	</tr>
<tr>	<td>	67	</td>	<td>	Sri. Yashpal, IFS	</td>	<td>	Nation Wide	</td>	<td>	Tree Translocation	</td>	<td>	9742542817	</td>	<td>	No	</td>	</tr>
<tr>	<td>	68	</td>	<td>	Sri. Yedukondalu Kar,IFS	</td>	<td>	Nation Wide	</td>	<td>	Wildlife management  (Tiger Reserve)	</td>	<td>	9410956294	</td>	<td>	Yes	</td>	</tr>
 
</table>
</div>
</div>
</div>
</section>

</asp:Content>
