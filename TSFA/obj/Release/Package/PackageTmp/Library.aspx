<%@ Page Title=":Library:" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="TSFA.Library" %>
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
<h5 class="margin-15px-bottom mn"><a>List of Library Books</a></h5>
</div>
</div>
</div>
<div class="table table-hover">
<table class="table">
<th scope="col" style="width: 6%;">Sl.No.</th>
<th scope="col" style="width: 50%;">Name of the Book</th>
<th scope="col" style="width: 38%;">Author</th>
<th scope="col" style="width: 6%;">No.of Books</th>
 
 <tr> 	<td>	1	</td>	<td>	100 Red - Listed Medicinal Plants	</td>	<td>	K. Ravi Kumar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	2	</td>	<td>	100 Years of Scientific Forestry in Andhra Pradesh	</td>	<td>	Casuarina Palntation- Sriharikota	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	3	</td>	<td>	1000 Indian Wildlife Quiz	</td>	<td>	Deep Narayan Pandey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	4	</td>	<td>	1001 Questions answred about Earthquakes, Avalanches Floods and others, Natural Distasters 	</td>	<td>	Barbara Tufty	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	5	</td>	<td>	101 More Games for Trainers 	</td>	<td>	Bob pike	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	6	</td>	<td>	101 Stupid Thinks 	</td>	<td>	Peter K. Garber	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	7	</td>	<td>	101 ways to improve your communication skills	</td>	<td>	JO. Condrill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	8	</td>	<td>	109 ways Getting to the Top	</td>	<td>	M.K. Rustomji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	9	</td>	<td>	134 Tips for The go a head Manager	</td>	<td>	C.N. Parkinson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	10	</td>	<td>	2000 Tips for Trainers & Staff	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	11	</td>	<td>	2005 Without cages	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	12	</td>	<td>	3rd International conference on "Global Interdependence and Decision Sciences	</td>	<td>	M. Chandrashekhar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	13	</td>	<td>	5000 Days to save the Planet	</td>	<td>	Edward Goldsmith	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	14	</td>	<td>	52 ways to motivative your staff 	</td>	<td>	Trish Nicholson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	15	</td>	<td>	7 Habits of Highly Effective People	</td>	<td>	Stephen R. Covey	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	16	</td>	<td>	A Better Investment Climate for Everyone	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	17	</td>	<td>	A Class Book of Botany(7E)	</td>	<td>	A.C. Dutta 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	18	</td>	<td>	A Compilation of Judgements Decided under Wildlife Protection Act 1972	</td>	<td>	Anjana Gosain	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	19	</td>	<td>	A Complete quide to Ayurvedic Remedies	</td>	<td>	Dr. Ashwani Bhardwaj	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	20	</td>	<td>	A Dictionary of Plants used by man 	</td>	<td>	George Usher	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	21	</td>	<td>	A Field Guid to Indian Mammals	</td>	<td>	Vivek Menon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	22	</td>	<td>	A Glossary of Forest Terms	</td>	<td>	N.K. Gulati	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	23	</td>	<td>	A Glossary of Technical Terms for use in Forest Colleges 	</td>	<td>	S.V. Venkataramanan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	24	</td>	<td>	A Guide for Planning Wildlife management in protected areas and managed landscopes	</td>	<td>	Vishwas B. Sswarkar	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	25	</td>	<td>	A Hand Book for Development Practitioners; Ten steps to a "Result-Based Monitoring and Evaluation Systems 	</td>	<td>	Jody Zall Kusek	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	26	</td>	<td>	A Hand Book for Field Identification 	</td>	<td>	K. Ramesh Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	27	</td>	<td>	A Hand book of Social Forestry 	</td>	<td>	Sharad Singh Negi	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	28	</td>	<td>	A Hand Book of Statistical Analysis in Forestry Reaearch 	</td>	<td>	K. Jayaraman	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	29	</td>	<td>	A Hand book on the Identification and Description of Trees, Shurbs and some Important Southern States for the use of the Southern Forest Rangers College, Coimbatore 	</td>	<td>	T.R. Somasundaram	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	30	</td>	<td>	A Handbook on Geogapical Information Systems	</td>	<td>	H.C. Mishra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	31	</td>	<td>	A History of Nature Conservation in India	</td>	<td>	Erach Bharucha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	32	</td>	<td>	A mannual of Forestry Extension Eduction	</td>	<td>	L.K. Jha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	33	</td>	<td>	A Manual of  Forest Law  	</td>	<td>	B.H. Baden Powell	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	34	</td>	<td>	A Manual of Forest Mensuration	</td>	<td>	C.E. Simmons	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	35	</td>	<td>	A Manual of Indian Forest Botany	</td>	<td>	N.L. Bor	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	36	</td>	<td>	A Manual of Indian Timbers 	</td>	<td>	J.S. Gamble 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	37	</td>	<td>	A Manual of the Rattans of Andaman and Nicobar Islands	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	38	</td>	<td>	A Manual of the Timbers of the World	</td>	<td>	Alexander	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	39	</td>	<td>	A Manual of Wildlife conservation 	</td>	<td>	Richard D. Teague	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	40	</td>	<td>	A Manual on Conservartion of Soil and Water	</td>	<td>	United State Department to Agricultue	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	41	</td>	<td>	A paradise for Animals	</td>	<td>	NZP Hyderabad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	42	</td>	<td>	A Paradise for animals. 50 Years of Nehru Zoological Park	</td>	<td>	Nehru Zoological Park, Hyderabad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	43	</td>	<td>	A Potential Indicator to Augment- Production of Non-Timber Forest Products (NTFP) for Export & Import Substitution	</td>	<td>	M.P. Shiva 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	44	</td>	<td>	A Practical Hand Book on Training	</td>	<td>	ED Setty	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	45	</td>	<td>	A Primer for Environmental Literacy 	</td>	<td>	Frank, B. Golley	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	46	</td>	<td>	A Revised Surveying of The Forest Types of India	</td>	<td>	Harry G. Champion	</td>	<td>	23	</td>	</tr> 
<tr> 	<td>	47	</td>	<td>	A Season of Birds A Norfolk diary 1911	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	48	</td>	<td>	A Secular Agenda	</td>	<td>	Arun Shouric	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	49	</td>	<td>	A Study on Job Satisfaction A.P 	</td>	<td>	S. Vidya Rani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	50	</td>	<td>	A Tale of Two cities 	</td>	<td>	Charles Dickens	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	51	</td>	<td>	A Text Book of Ecology	</td>	<td>	Santhosh Kumar Garg	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	52	</td>	<td>	A Text book of Environmental Science	</td>	<td>	R.N. Trivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	53	</td>	<td>	A Text Book of Forestry & Wildlife Managmeent Vol-I	</td>	<td>	Dr. S.S. Negi, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	54	</td>	<td>	A Text Book of Forestry & Wildlife Managmeent Vol-II	</td>	<td>	Dr. S.S. Negi, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	55	</td>	<td>	A Text book of Geology	</td>	<td>	P.K. Mukerjee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	56	</td>	<td>	A Text Book of Physical Gelogy for Degree Classes	</td>	<td>	D.L. Satyanarayana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	57	</td>	<td>	A Text Book of Silviculture	</td>	<td>	A.P. Dwivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	58	</td>	<td>	A Text Book of Silviculture	</td>	<td>	S.S. Sagwal	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	59	</td>	<td>	A. Text book of Forestry & Wildlife Management Vol-II	</td>	<td>	Dr. S.S. Negi, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	60	</td>	<td>	A. Treatise on Home Remedies 	</td>	<td>	"Dr. S. Suresh Babu, 
MD. Ayur"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	61	</td>	<td>	A.P. Forest Department "Facts and Figures 2004"	</td>	<td>	Chief Conservator of Forests/ Forest Utilization Officer	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	62	</td>	<td>	A.P. Forest Department Workig Plan for the Forests of Bellampally Division Adilabad Circle 	</td>	<td>	C.K. Mishra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	63	</td>	<td>	A.P. Forest Department Working Plan for Warangal North Division, From 2003-04 to 2012-13	</td>	<td>	Iylaiah 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	64	</td>	<td>	"A.P. Forest Department Working Plan Warangal North Division 
2003-04 to 2012-13"	</td>	<td>	C.H. Iylaiah 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	65	</td>	<td>	A.P. Forest Dept- Working Plan Bellampally Division Adilabad 	</td>	<td>	C.K. Mishra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	66	</td>	<td>	A.P. Forest Inventory Report 2010	</td>	<td>	-	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	67	</td>	<td>	A.P. Societies egistration Act 2001	</td>	<td>	P.S. Narayana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	68	</td>	<td>	"A.P. State CAMPA Annual Report 
2009-2010"	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	69	</td>	<td>	"A.P. State CAMPA Annual Report 
2010-11"	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	70	</td>	<td>	A.P. State CAMPA Annual Report 2009-10	</td>	<td>	-	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	71	</td>	<td>	A.P. State CAMPA Annual Report 2010-11	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	72	</td>	<td>	A.P. State of Forest Report 2010	</td>	<td>	-	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	73	</td>	<td>	A.P. State of Forest Report 2011	</td>	<td>	-	</td>	<td>	12	</td>	</tr> 
<tr> 	<td>	74	</td>	<td>	ABSTRACTS. Forest Research Institute	</td>	<td>	DONATED by FRI	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	75	</td>	<td>	Account Test for Executive Officers	</td>	<td>	Achakradhara Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	76	</td>	<td>	Accounting for Management 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	77	</td>	<td>	Accounting for Management. Vol_ I	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	78	</td>	<td>	Accounts and Audit 	</td>	<td>	Gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	79	</td>	<td>	Acepressure cure for common Diseases	</td>	<td>	Dr. Keith Kenyor	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	80	</td>	<td>	Achiving Rural Development using nearo Linguistic Programming 	</td>	<td>	M.R. Arulraja	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	81	</td>	<td>	Adaptive Genetic Variation in the Wild	</td>	<td>	T.A. Moussean	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	82	</td>	<td>	Advances in Biotechnology	</td>	<td>	S.N. Jogdand	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	83	</td>	<td>	Advances in Forestry Research in India	</td>	<td>	Ram Prakash	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	84	</td>	<td>	Advances in Plant Tissue Culture in India	</td>	<td>	Promod Tandon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	85	</td>	<td>	Adventure in Tiger Country	</td>	<td>	Shailaja Mohan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	86	</td>	<td>	Afforestation in Arid Zone	</td>	<td>	R.N. Kaul	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	87	</td>	<td>	Afforestation in India Dimensions of Evalauation	</td>	<td>	H.S. Gupta & VK. Sinha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	88	</td>	<td>	Agricultural and Forest pests & their managent 	</td>	<td>	Prem Chand	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	89	</td>	<td>	Agricultural Technologics and Tropical Deforestation	</td>	<td>	A. Angelsen	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	90	</td>	<td>	Agro Forestry Principles and Practices	</td>	<td>	A.P. Dwivedi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	91	</td>	<td>	Agro Forestry Selected Readings	</td>	<td>	N.G. Hedge	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	92	</td>	<td>	Agroforestry 	</td>	<td>	Dr. D.N. Tewari	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	93	</td>	<td>	Agroforestry for Sustained Productivity in Arid Regions	</td>	<td>	J.P. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	94	</td>	<td>	Agroforestry Hand Book	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	95	</td>	<td>	Agroforestry in Asia and the Pacific	</td>	<td>	W.Mellink	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	96	</td>	<td>	Agroforestry in India	</td>	<td>	K.G. Tejaswani	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	97	</td>	<td>	Agroforestry Principles and Practices	</td>	<td>	A.P. Dwivedi	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	98	</td>	<td>	Agroforestry Systems from India Subcontinent 	</td>	<td>	G.B. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	99	</td>	<td>	Agroforstry 	</td>	<td>	J.N. Daniel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	100	</td>	<td>	All India "Services Manual"  Vol. -2 	</td>	<td>	Ejaz's	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	101	</td>	<td>	All India Service Laws Digest -Vol-II	</td>	<td>	V.K. Kharbanda	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	102	</td>	<td>	All India Services Manual	</td>	<td>	P. Muthu Swamy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	103	</td>	<td>	Among Tigers and Tuskers	</td>	<td>	Ramesh Bedi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	104	</td>	<td>	Amphibians and Reptiles 	</td>	<td>	Sushil K.Datta Manoj 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	105	</td>	<td>	An Annotated Bibliography on Bamboos of the World	</td>	<td>	Sarojam.N	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	106	</td>	<td>	An Auto Biography	</td>	<td>	M.K. Gandhi	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	107	</td>	<td>	An Introduction to Plant Ecology phytogeography Economic Botany and Palacobotany	</td>	<td>	A.K. Ganguly, N.C. Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	108	</td>	<td>	An Introduction to Plant Nomenelature	</td>	<td>	S.S.R. Bennet	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	109	</td>	<td>	An Introduction to Wildlife Management	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	110	</td>	<td>	An outline of Forest Pathology	</td>	<td>	Ernest Callenbach	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	111	</td>	<td>	An Overview of Fresh Water Wet Lands in A.P.	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	112	</td>	<td>	Ancient Wisdom & Modern Management 	</td>	<td>	Jagdish Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	113	</td>	<td>	Andhra Pradesh Forest Department Code, Vol-II	</td>	<td>	T.V. Rangarajan & D. Mukherjee	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	114	</td>	<td>	Andhra Pradesh Graceously yours	</td>	<td>	Product Catalougue	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	115	</td>	<td>	Andhra Pradesh Tourist Guide & Map	</td>	<td>	R.P. Arya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	116	</td>	<td>	Animal Adaptation	</td>	<td>	Burentt	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	117	</td>	<td>	Animal Behaviour	</td>	<td>	John Paul Scott	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	118	</td>	<td>	Animal Fact File	</td>	<td>	Dr. Tony Hare	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	119	</td>	<td>	Animal Habitats	</td>	<td>	Dr. Tony Hare	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	120	</td>	<td>	Animal Kingdom	</td>	<td>	Kit Coppard	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	121	</td>	<td>	Animal tracks and signs	</td>	<td>	Preben Bang (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	122	</td>	<td>	Animal Watching  Desmond Morris 	</td>	<td>	Desmond Morries	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	123	</td>	<td>	Animals 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	124	</td>	<td>	Animals of the Forest 	</td>	<td>	Mina Ripani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	125	</td>	<td>	Annotated Bibiography on "Rattans of the World"	</td>	<td>	K.F. George	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	126	</td>	<td>	AP Local Acts Vol-I	</td>	<td>	M.L. Jindal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	127	</td>	<td>	Applied Public Relations and Communications 	</td>	<td>	KR. Balan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	128	</td>	<td>	Appropriate Foresst Industries 	</td>	<td>	Food and Agriculture organization of the united Nations	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	129	</td>	<td>	Aranyak	</td>	<td>	-	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	130	</td>	<td>	Archaic Criminal Laws Enforcement Interpretation 	</td>	<td>	G. Rama Chandra Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	131	</td>	<td>	Aromatic and Medicinal Plants 	</td>	<td>	"Dr MP Shiva, Dr. Alok Lehri  & Ms. Alka Shiva 
"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	132	</td>	<td>	Art and Crafts of Andhra Pradesh	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	133	</td>	<td>	Art of Teaching 	</td>	<td>	K. Vijaya Kumari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	134	</td>	<td>	Art of Wise Parenting 	</td>	<td>	Swami Sukha Bodha Nanda	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	135	</td>	<td>	Artificial Intelligemnce (2E)	</td>	<td>	Elaine Rich	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	136	</td>	<td>	Artificial Intelligence 	</td>	<td>	Sasi Kumar.M	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	137	</td>	<td>	Arts and Crafts of Andhra Pradesh	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	138	</td>	<td>	Arunachal Pradesh	</td>	<td>	R.C. Sundriyal (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	139	</td>	<td>	Asian Elephants	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	140	</td>	<td>	Assessment of Climate Change in India and Mitigation Policies	</td>	<td>	S.K. Das (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	141	</td>	<td>	At Midnight comes the Killer	</td>	<td>	Augustus Somerville	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	142	</td>	<td>	Atlas of Mangrove Wetlands of India Part- 2 A.P.	</td>	<td>	T. Ravi Shankar (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	143	</td>	<td>	Atlas of the Environment	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	144	</td>	<td>	Atlas of the World	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	145	</td>	<td>	Awaken Giant with in 	</td>	<td>	Anthony Robbins 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	146	</td>	<td>	Backgroung Meterial for A.P. Forest Officer's Conference: November 30& December1,2013.	</td>	<td>	Forest Department of Andhra Pradesh 	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	147	</td>	<td>	Bad Money Bad Politics 	</td>	<td>	Sanjay Kapoor 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	148	</td>	<td>	Bamboo & Cane Crafts	</td>	<td>	M.P. Raajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	149	</td>	<td>	Bamboo and cane crafts of northeast India	</td>	<td>	M.P. Ranjan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	150	</td>	<td>	Bamboo and its Potential in Uttaranchal	</td>	<td>	Rajeev Oberoi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	151	</td>	<td>	Bamboo in VSSs of Andhra Pradesh (Harvest, Marketing & Benefit sharing)	</td>	<td>	Centre for People's Forestry	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	152	</td>	<td>	Bamboo; A Gardener's Guide to Their Cultivation in Temperate climates	</td>	<td>	A.H. Lawson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	153	</td>	<td>	BambooResource Development & Utilisation in Kerala	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	154	</td>	<td>	Banking and Biomas (Centre for Environment Education)	</td>	<td>	K.R. Datye	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	155	</td>	<td>	"Bare Act 
 Law Relating to Contract Labour in Andhra Pradesh "	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	156	</td>	<td>	Bare Act The Wildlife Protection Act 1972	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	157	</td>	<td>	Basic Environmental Technology (4E)	</td>	<td>	Jerry A. Nathanson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	158	</td>	<td>	Basic Principles of Ayurveda 	</td>	<td>	Vaidya Bhagwan Dash	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	159	</td>	<td>	Basic Reading in Forest Economics 	</td>	<td>	P.K. Muralidharan	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	160	</td>	<td>	Becoming a person of Influence 	</td>	<td>	John C. Maxwell	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	161	</td>	<td>	Best Plants for your Garden	</td>	<td>	Jane Hattatt	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	162	</td>	<td>	Best Practices Environment 	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	163	</td>	<td>	Beyond the fire live	</td>	<td>	Celine Aranha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	164	</td>	<td>	Beyond Training	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	165	</td>	<td>	Beyond Vanishing Woods	</td>	<td>	Deep Narayan Pandey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	166	</td>	<td>	Bhagavad - Gita	</td>	<td>	Ac. Bhakthi Vedantha, Swami Prabhupada 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	167	</td>	<td>	Bibliography on Joint Forest Management	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	168	</td>	<td>	Big Cats	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	169	</td>	<td>	Biodiversirty 	</td>	<td>	Dr. Supriyo Chakraborty	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	170	</td>	<td>	Biodiversity and Conservation	</td>	<td>	P.C. Joshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	171	</td>	<td>	Biodiversity and Conservation	</td>	<td>	Prof. Arvind Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	172	</td>	<td>	Biodiversity and Environment 	</td>	<td>	B.N. Pandey, G.K. Kulkarni	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	173	</td>	<td>	Biodiversity and Environment 	</td>	<td>	S.K. Agrwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	174	</td>	<td>	Biodiversity and its conservation in India 	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	175	</td>	<td>	Biodiversity Communities & Climate Change	</td>	<td>	Chandra Prakash Kala 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	176	</td>	<td>	Biodiversity Complex	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	177	</td>	<td>	Biodiversity Conservation 	</td>	<td>	"Kotwal,
Banerjee"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	178	</td>	<td>	Biodiversity Conservation and Management	</td>	<td>	Dr. Renu Kathuria	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	179	</td>	<td>	Biodiversity Conservation Environmental Pollution and Ecology Vol-I	</td>	<td>	B.N. Pandey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	180	</td>	<td>	Biodiversity Conservation Environmental Pollution and Ecology Vol-II	</td>	<td>	B.N. Pandey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	181	</td>	<td>	Biodiversity Conservation Environmental Pollution part-8, Fresh water fishes 	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	182	</td>	<td>	Biodiversity Conservation Environmental Pollution part-II, Birds	</td>	<td>	P.S. Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	183	</td>	<td>	Biodiversity Conservation for Enhanced Livelihoods 	</td>	<td>	Case Studies from Andhra Pradesh	</td>	<td>	17	</td>	</tr> 
<tr> 	<td>	184	</td>	<td>	Biodiversity Documentatio for kerala part 6 Flowering Plants 	</td>	<td>	N. Sasidharn	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	185	</td>	<td>	Biodiversity Documentation for Kerala Part 10 Reptles 	</td>	<td>	P.S. Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	186	</td>	<td>	Biodiversity Documentation for Kerala Part -A, Amphibians	</td>	<td>	P.S. Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	187	</td>	<td>	Biodiversity Documentation for Kerala Part-2 Micro organisms (Fungi)	</td>	<td>	E.J. Maria Florenue	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	188	</td>	<td>	Biodiversity Endangered 	</td>	<td>	A.B. Chaudhri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	189	</td>	<td>	Biodiversity Extenstion and Conservation 	</td>	<td>	Kumar Kartikeya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	190	</td>	<td>	Biodiversity in India Vol-3	</td>	<td>	T. Pullaiah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	191	</td>	<td>	Biodiversity Management Plan for Gundlabrahmeswaram Wildlife Sanctuary	</td>	<td>	K. Thulasi Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	192	</td>	<td>	Biodiversity; Kerala State Biodiversity Board	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	193	</td>	<td>	Biofertilizers	</td>	<td>	Laxmi Lal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	194	</td>	<td>	Biofertilizers in Agriculture and Forestry	</td>	<td>	N.S. Subba Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	195	</td>	<td>	Biofuels: towards a greeneer and Secure energy future	</td>	<td>	P.P. Bhajvaid	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	196	</td>	<td>	Biological Control of Social Forest and Plantation Crops Insects	</td>	<td>	T.N. Anontha Kerishman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	197	</td>	<td>	Biological Diversity Act 2002 with Rules	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	198	</td>	<td>	Biology (2E)	</td>	<td>	Mary Jones Geoff jones	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	199	</td>	<td>	Biology (University press Dictionery)	</td>	<td>	Robert Hine	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	200	</td>	<td>	Biomass Energy Systems	</td>	<td>	Venkata Ramana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	201	</td>	<td>	Biomass for Energy   	</td>	<td>	E P I	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	202	</td>	<td>	Bio-Pesticide & Integrated pest management 	</td>	<td>	G.K. Gttosh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	203	</td>	<td>	Biosphere Reserves in india	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	204	</td>	<td>	Biotechnology and Biodiversity in Agriculture/ Forestry	</td>	<td>	B.N. Prasad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	205	</td>	<td>	Bird Behaviour 	</td>	<td>	John Sparks 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	206	</td>	<td>	Bird Encyclo paedia	</td>	<td>	Vladmir Bajcek	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	207	</td>	<td>	Birdfeeder Hand Book	</td>	<td>	Robert Buston	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	208	</td>	<td>	Birds and Plant Regeneration 	</td>	<td>	Tara Gandhi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	209	</td>	<td>	Birds Beyond Watching	</td>	<td>	Abdul Jamil urfi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	210	</td>	<td>	Birds of Pray	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	211	</td>	<td>	Birds of The Indian Subcontinent	</td>	<td>	Bikram Grewal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	212	</td>	<td>	Birds of The Indian Subcontinent	</td>	<td>	Rechard Grimmett	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	213	</td>	<td>	Birds of The Indian Subcontinent	</td>	<td>	Richard Grimmett and others	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	214	</td>	<td>	Bitechnology and Plant Protection in Forestry Sicence 	</td>	<td>	S.P. Rayachaudhuri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	215	</td>	<td>	Body Language 	</td>	<td>	Vijaya Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	216	</td>	<td>	Bonsai	</td>	<td>	B.B. Sharma, Bonsai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	217	</td>	<td>	Book of Statistics 1987-88	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	218	</td>	<td>	Book on state animals, Birds, Trees & Fowers of India	</td>	<td>	Bitap C. Sinha	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	219	</td>	<td>	Botany for Degree Student Pteridophyta	</td>	<td>	P.C. Vasishta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	220	</td>	<td>	Botany for Degree Student(6E) 	</td>	<td>	 Dutta	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	221	</td>	<td>	Botany for Degree Students, Gymnosperms 	</td>	<td>	P.C. Vasishta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	222	</td>	<td>	Botany, Paper-III, B.Sc Third Year	</td>	<td>	Ramakrishna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	223	</td>	<td>	Buddhism and Ecology	</td>	<td>	Martine	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	224	</td>	<td>	Building Bridges for Conservation	</td>	<td>	Ashish Kothari	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	225	</td>	<td>	Building Partnerships for India's Ecological Security	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	226	</td>	<td>	Business and the Environment 	</td>	<td>	Richard Welford and Rechard Starkey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	227	</td>	<td>	Business Policy and Strategic Management 	</td>	<td>	P. Subba Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	228	</td>	<td>	Butterflies of Penisular India	</td>	<td>	Krushna Mega Kante	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	229	</td>	<td>	Butterflies of Penisular India	</td>	<td>	Krushna Mega Kante	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	230	</td>	<td>	Butterfly Biology and Conservation	</td>	<td>	"A.K. Chakravarthy & 
R. Raju"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	231	</td>	<td>	C & Data Structures 	</td>	<td>	P. Padmanabham	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	232	</td>	<td>	Call of the Wild Servival in the sun	</td>	<td>	B. Seshadri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	233	</td>	<td>	Cane and Bamboo Technology- Centre's Technical Papers-II	</td>	<td>	Kamesh Salam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	234	</td>	<td>	Capacity Building in Identification 	</td>	<td>	V.K. Melkani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	235	</td>	<td>	Carpenter & Woods our Environment its relationtous	</td>	<td>	Paul E. Smith	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	236	</td>	<td>	Case Studies on Social Enterpreneurship Vol-I	</td>	<td>	Girija P	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	237	</td>	<td>	Caste, Class and Power Changining Patterns of Stratification in a Tanjore Village (2E)	</td>	<td>	Andre Beteille	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	238	</td>	<td>	CCA & Conduct Rules	</td>	<td>	Padala Rami Reddy	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	239	</td>	<td>	Celbrating Success & Failure 	</td>	<td>	Swami Sukka Bodha Nanda	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	240	</td>	<td>	Central Civil Services Pension Manual	</td>	<td>	S.R. Ahir, S. Malhotra 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	241	</td>	<td>	Centre of Excellence "Bhimal" Grewia Optiva, Drummond ex Burrett	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	242	</td>	<td>	Centre of Excellence "Raga (Silver Fir)Abies pindrow, Spach	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	243	</td>	<td>	Centre of Excellence, "Narbans" (Dendrocalamus Strictus Nees) 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	244	</td>	<td>	Centre of Excellence,"Chura" (Diploknema Butyaracea Roxb) 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	245	</td>	<td>	Challenging the Indian Medical Heritage	</td>	<td>	Darshan Shankar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	246	</td>	<td>	Chanakya Neefi	</td>	<td>	Viswa Mitra Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	247	</td>	<td>	Changing Management for Competitive Success 	</td>	<td>	A. Pettigrew	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	248	</td>	<td>	Charitable and Religious Trusts and Institutions 	</td>	<td>	S. Raja Ratnam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	249	</td>	<td>	Checklist of Mammals of India 	</td>	<td>	J.R.B. Alfred	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	250	</td>	<td>	Cheetal Walk	</td>	<td>	E.R.C. Davidar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	251	</td>	<td>	Childrens Knowledge Bank 	</td>	<td>	Dr. Sunitha Gupta	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	252	</td>	<td>	City Map "Chennai"	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	253	</td>	<td>	Classification, Control and Appeal Rules 1991	</td>	<td>	D.M. Raju	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	254	</td>	<td>	Climate Change - Mitigation	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	255	</td>	<td>	Climate Change and Biodiveristy	</td>	<td>	Hannah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	256	</td>	<td>	Climate Change and Biodiveristy	</td>	<td>	R.K. Pachauri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	257	</td>	<td>	Climate Change and Biodiversity	</td>	<td>	Thomas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	258	</td>	<td>	Climate Change and Environment 	</td>	<td>	 J.Sundaresan & S. Sreekesh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	259	</td>	<td>	Climate Change and Environmental Issues 	</td>	<td>	Narayan Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	260	</td>	<td>	Climate Change and India Valnerability Assessement and Adaptation	</td>	<td>	P.R. Shukla	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	261	</td>	<td>	Climate Change Forests and Forest Managements 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	262	</td>	<td>	Climate change Impact on Ecosystem 	</td>	<td>	J. Sundaresan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	263	</td>	<td>	Climate Change myths & Realities 	</td>	<td>	Dr. S. Jeevananda Reddy (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	264	</td>	<td>	Climate Resilient Urban Ecosystems -Initiatives in Telangana Forests 	</td>	<td>	Dr. G. Chandrashekhar Reddy, IFS	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	265	</td>	<td>	Coastal and Marine Biodiversity of Gulf of Mannar, Southeastern India " A Comprehensive updated Speecies list"	</td>	<td>	S. Balaji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	266	</td>	<td>	Code of Civil Procedure	</td>	<td>	Professionals 	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	267	</td>	<td>	Collection and Marketing of Non-Timber Forest Products by the kerala Girijans 	</td>	<td>	M.P. Shiva 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	268	</td>	<td>	Collins Gude of Bird Watching 	</td>	<td>	R.S.R. Fitter	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	269	</td>	<td>	Coming Back	</td>	<td>	A.C.B.S. Prabhupada	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	270	</td>	<td>	Commerical Bamboos of Kerala	</td>	<td>	Mukesh Kumar	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	271	</td>	<td>	Commerical Rattans of Kerala	</td>	<td>	C. Ronuka	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	272	</td>	<td>	Commodity Interpretation and Rates of A.P. Sales Tax	</td>	<td>	P. Chandra Sekar,Ali H.	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	273	</td>	<td>	Common Birds	</td>	<td>	Salim Ali	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	274	</td>	<td>	Common Guidelines for Watershed Development Projects	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	275	</td>	<td>	Common Indian Trees	</td>	<td>	R.N. Parker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	276	</td>	<td>	Common Indian Trees and How to know them	</td>	<td>	R.N. Parker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	277	</td>	<td>	Common Indian Wild Flowers 	</td>	<td>	Isaac Kehimkar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	278	</td>	<td>	Common Insects of Wetlands of Gujart	</td>	<td>	R.D. Kamboj	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	279	</td>	<td>	Common Trees	</td>	<td>	H. Santapan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	280	</td>	<td>	Common wealth Forests 2010	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	281	</td>	<td>	Common Wildlife & Their products in Illegal Trade	</td>	<td>		</td>	<td>	22	</td>	</tr> 
<tr> 	<td>	282	</td>	<td>	Communicating 	</td>	<td>	Kate Keenan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	283	</td>	<td>	Community & Forestry	</td>	<td>	Robert G.Lee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	284	</td>	<td>	Community Forest Management in Protected Areas	</td>	<td>	Justice P.N. Bhagwati	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	285	</td>	<td>	Community Forest Management in Protected Areas	</td>	<td>	P.N. Bhagwati	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	286	</td>	<td>	Community Forestry	</td>	<td>	G.P.D. Vyas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	287	</td>	<td>	Community Forestry	</td>	<td>	Y.S. Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	288	</td>	<td>	Community Participation and Sustainable Forest Development "Global Perspective" 	</td>	<td>	Ajoy Kumar Bhattacharya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	289	</td>	<td>	Community Participation and Sustainable Forest Development Global Perspective	</td>	<td>	Ajay Kumar Bhattacharya	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	290	</td>	<td>	Compact oxlard Reference Dictionery 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	291	</td>	<td>	Compendium of e-Governance Initiaves in India	</td>	<td>	Piyush Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	292	</td>	<td>	Compendium of Forest conservation Act. 1980 & Forest Conservation Rules -2003	</td>	<td>	DONATED	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	293	</td>	<td>	Compendium of Indian Medicinal Plants- Vol-1	</td>	<td>	"Ramp Rastogi
B.N. Metrotra"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	294	</td>	<td>	Compendium of Indian Medicinal Plants- Vol-3	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	295	</td>	<td>	Compendium of Indian Medicinal Plants- Vol-4	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	296	</td>	<td>	Compendium of Indian Medicinal Plants- Vol-5	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	297	</td>	<td>	Compendium of National Research	</td>	<td>	Celso B. Lantican	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	298	</td>	<td>	Compendium of Research Findings on Biodiversity Conservation and Sustainable use in gulf of manner Biosphare Reserve Vol-I	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	299	</td>	<td>	Comprehensive Tourist Guide	</td>	<td>	Tourism Department	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	300	</td>	<td>	Computer and Information Technology	</td>	<td>	Dr. E.G. Rajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	301	</td>	<td>	Computer Basics for Forestry	</td>	<td>	Hardif Singhi-Kingra, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	302	</td>	<td>	Computers Ahead, Class-V	</td>	<td>		</td>	<td>	16	</td>	</tr> 
<tr> 	<td>	303	</td>	<td>	Concepts of Ecology (4 Edition)	</td>	<td>	Edward J. Kormondy	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	304	</td>	<td>	Concepts of Modern Ecology	</td>	<td>	S.C. Tiwari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	305	</td>	<td>	Conducting Environmental Impact Assessment in Developing contires 	</td>	<td>	Prasad Modak	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	306	</td>	<td>	Conservation for Development in Nepal	</td>	<td>	Sasinath Jha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	307	</td>	<td>	Conservation in a Changing world 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	308	</td>	<td>	Conservation of the Soil	</td>	<td>	A.E. Gustafson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	309	</td>	<td>	Conservation on Biological Diversity 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	310	</td>	<td>	Conservation through Cultural Survival 	</td>	<td>	Stan Stevins 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	311	</td>	<td>	Conservation Through Forest Conservation Act	</td>	<td>	M. Lokeswara Rao, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	312	</td>	<td>	Conserving Our Water Resources	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	313	</td>	<td>	Conserving Protected areas and Wildlife	</td>	<td>	WWF	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	314	</td>	<td>	Constitution of India	</td>	<td>	Gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	315	</td>	<td>	Contemporary Issues in Indian Forestry	</td>	<td>	C.S. Rangachari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	316	</td>	<td>	Coping with Natural Hazards Indian Context	</td>	<td>	K.S. Valdiya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	317	</td>	<td>	Costal Soils and their management 	</td>	<td>	A.K. Bandyopodhyay	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	318	</td>	<td>	Counselling Skills Training 	</td>	<td>	Philip Burnard	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	319	</td>	<td>	Creating Affluence 	</td>	<td>	Deepak Chopra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	320	</td>	<td>	Criminal Court Manual Vol-2	</td>	<td>	Yudhishthire	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	321	</td>	<td>	Criminal Major  Acts Law & Practice 1990	</td>	<td>	Taxstanns	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	322	</td>	<td>	Criminal Major Acts	</td>	<td>	V.J. Rao'S	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	323	</td>	<td>	Criminal Manual	</td>	<td>	Sarkar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	324	</td>	<td>	Criminal Manual	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	325	</td>	<td>	Criteria & Indicators for Sustainable Forest Management	</td>	<td>	P.C. Kotwad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	326	</td>	<td>	Crocodiles & Alligators	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	327	</td>	<td>	Cropping Systems in the Tropics; Principles and Management 	</td>	<td>	S.P. Palaniappan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	328	</td>	<td>	Crystal Clear Communication	</td>	<td>	Kris Cole	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	329	</td>	<td>	Crystal Clear Communication	</td>	<td>	Kris Cole	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	330	</td>	<td>	Cultivation Diversity Biodiversity Conservation & Seed Polities	</td>	<td>	Vandana Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	331	</td>	<td>	Cultivation of Aromatic Plants in India	</td>	<td>	P.N. Misra, S.A. Hussain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	332	</td>	<td>	Cupressure cure for commom Diseases	</td>	<td>	K. Kenyow	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	333	</td>	<td>	d Base III Plus made simple with d Base IV and Fox basct	</td>	<td>	R.K. Taxali	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	334	</td>	<td>	Daily Reflections for Highly Effective People	</td>	<td>	Stephen. R. Covey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	335	</td>	<td>	Data book on Endagered tree and tree and shurb species and provenances	</td>	<td>	FAO	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	336	</td>	<td>	Database on Tradable Bio resources & Bioresources basefd industries in Telangana State Compendium	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	337	</td>	<td>	Dealing with Climate Change	</td>	<td>	R.K. Pachauri	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	338	</td>	<td>	Dean's Report	</td>	<td>	FCRI	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	339	</td>	<td>	Develop your NLP Skills 	</td>	<td>	Andrew -Bradbury 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	340	</td>	<td>	Developing Your seld and Your staff 	</td>	<td>	David Erwin 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	341	</td>	<td>	Development of Education Theory 	</td>	<td>	R.N. Safaya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	342	</td>	<td>	Dictionary of Botany	</td>	<td>	S.S. Sagwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	343	</td>	<td>	Dictionary of Ecology	</td>	<td>	Michacl Allaby	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	344	</td>	<td>	Dictionary of Forest Fire	</td>	<td>	S.S. Sagwal	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	345	</td>	<td>	Dictionary of Forest Management	</td>	<td>	S.S. Sagwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	346	</td>	<td>	Dictionary of Forestry Wildlife	</td>	<td>	Kailash Chandra Bebarta	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	347	</td>	<td>	Dictionary of Gardning 	</td>	<td>	L.L. Someni	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	348	</td>	<td>	Dictionary of Indian Medicinal Plants 	</td>	<td>	Akhtar Hussain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	349	</td>	<td>	Dictionary of Plant Breeding and Seed Technology 	</td>	<td>	L.L. Somani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	350	</td>	<td>	Dietrich Brandis Indian Trees	</td>	<td>	R.D. Jakti	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	351	</td>	<td>	Directors Report 2015	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	352	</td>	<td>	Director's Report 2015	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	353	</td>	<td>	Directors Report 2016	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	354	</td>	<td>	Director's Report 2016	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	355	</td>	<td>	Disaster Management 	</td>	<td>	Harish K. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	356	</td>	<td>	Discover Biology Second Edition	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	357	</td>	<td>	Discover Hyderabad	</td>	<td>	MKM	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	358	</td>	<td>	Down to Earth	</td>	<td>	DONATED	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	359	</td>	<td>	Dr. H.F.C deghorn founder of forest conservancy in India 	</td>	<td>	S. Subba Rayulu, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	360	</td>	<td>	Dr.MCR Human Resource Development Institute of A.P. Hyderabad.	</td>	<td>		</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	361	</td>	<td>	Dramatic Effects with Architectural Plants	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	362	</td>	<td>	Dreaming in Calcutla and Channel Islands 	</td>	<td>	Shubhobroto Ghosh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	363	</td>	<td>	Dying Wisdom	</td>	<td>	Anil Agarwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	364	</td>	<td>	Dying Wisdom	</td>	<td>	Anil Agarwal 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	365	</td>	<td>	Dynamics 9 of Enterpreneurial Development & Management 	</td>	<td>	Vasant Desai (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	366	</td>	<td>	Dynamics of Tiger Management 	</td>	<td>	Rajesh Gopal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	367	</td>	<td>	e- Government 	</td>	<td>	J. Satyanarayana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	368	</td>	<td>	Earth Sicence (9E)	</td>	<td>	Edward Goldsmith	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	369	</td>	<td>	Eco Economy	</td>	<td>	Lester R. Brown	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	370	</td>	<td>	Eco Tourism	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	371	</td>	<td>	Eco Tourism; A Guide for Trekkers	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	372	</td>	<td>	Ecodevelopment planning for Biodiversity A Guideline	</td>	<td>	Ruchi Badola	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	373	</td>	<td>	Ecodevelopment Planning for Biodiversity Conservation	</td>	<td>	Ruchi Badola	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	374	</td>	<td>	Eco-Friendly Trees for Urban Beautification	</td>	<td>	P.K. Chosla	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	375	</td>	<td>	Ecologhy- (2E)	</td>	<td>	Eugene Poduom	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	376	</td>	<td>	Ecologhy Today	</td>	<td>	Elizabeth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	377	</td>	<td>	Ecological Audit of Eucalyptuas Cultivation	</td>	<td>	Vandana Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	378	</td>	<td>	Ecological Audit of Eucalyptuas Cultivation	</td>	<td>	Vandana Shiva 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	379	</td>	<td>	Ecological Audit of Eucalyptus Cultivation	</td>	<td>	Vandana Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	380	</td>	<td>	Ecological Climatology (2E) Concepts and Applications	</td>	<td>	Gordon B. Bonan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	381	</td>	<td>	Ecological Journeys	</td>	<td>	Madhav Gadgil	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	382	</td>	<td>	Ecological Journeys the Science and polities of conservartion in India	</td>	<td>	Madhav Gadgil	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	383	</td>	<td>	Ecologicla Economics; for Sustainable Development 	</td>	<td>	Kanchan Chopra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	384	</td>	<td>	Ecology and Environment	</td>	<td>	P.D. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	385	</td>	<td>	Ecology and Environment	</td>	<td>	P.R. Trivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	386	</td>	<td>	Ecology and Environment	</td>	<td>	R.N. Bhargava	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	387	</td>	<td>	Ecology and Management of Gamebirds	</td>	<td>	Peter. J. Hudson 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	388	</td>	<td>	Ecology and Plant Diversities	</td>	<td>	J.M.F. Drummod	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	389	</td>	<td>	Ecology and Sustainable Development	</td>	<td>	P.S.Ramakrisnan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	390	</td>	<td>	Ecology of a Channing Planet (2E)	</td>	<td>	Mark B. Bush	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	391	</td>	<td>	Ecology of Rural India (Vol-I)	</td>	<td>	Pramod Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	392	</td>	<td>	Ecology, Environmenrt and Pollution	</td>	<td>	S.S. Purohit	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	393	</td>	<td>	Ecology, Evolution and Population Biology	</td>	<td>	Edward O. Wilson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	394	</td>	<td>	Ecology; A Pocket Guide	</td>	<td>	Ernest Callenbach	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	395	</td>	<td>	Ecology; Sicence and Practice	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	396	</td>	<td>	Ecology; Theories and Applications (4E)	</td>	<td>	Peter Stiling	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	397	</td>	<td>	Economic Development & Planning in India	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	398	</td>	<td>	Economics & Management of Nontimber foorest Products	</td>	<td>	D.D. Tewari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	399	</td>	<td>	Economics of Fuelwood Production in Wastelands	</td>	<td>	R.D. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	400	</td>	<td>	Economics of Protected Areas and its effect on Biodiversity	</td>	<td>	Ram Bir Singh Kushwah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	401	</td>	<td>	Economy Liberalization & Trade	</td>	<td>	Donated	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	402	</td>	<td>	e-content; Voices from the Ground	</td>	<td>	(Blackwell) Colinprice	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	403	</td>	<td>	Ecosociety A Histrical Study of Ecological Man	</td>	<td>	Robert A. De. J. Hart	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	404	</td>	<td>	Ecosystem Management	</td>	<td>	B. Narayan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	405	</td>	<td>	Ecosystem Principles and Sustainble Agriculture	</td>	<td>	J. Sithamparandham	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	406	</td>	<td>	Ecotourism and Livelihoods	</td>	<td>	A.K. Bhattacharya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	407	</td>	<td>	Ecotourism in India. Policy & Guidelines	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	408	</td>	<td>	Ecotourism; A Guide for Planner's and Managers. Vol.-2	</td>	<td>	Kreg Lindbery	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	409	</td>	<td>	Ecotourism; A Guide for Planner's and Managers. Vol.-I	</td>	<td>	Kreg Lindbery	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	410	</td>	<td>	Effective Hardware and software management 	</td>	<td>	Y.P. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	411	</td>	<td>	Effective Leadership 	</td>	<td>	V.V. Ramani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	412	</td>	<td>	Effective Modern Management 	</td>	<td>	Y.P. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	413	</td>	<td>	Effective Motivation 	</td>	<td>	John Adair 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	414	</td>	<td>	Effective PR Management 	</td>	<td>	Paul Winner	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	415	</td>	<td>	Effective Public Relations in Public and Pravete sector 	</td>	<td>	G.C. Barnic	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	416	</td>	<td>	Effective Training	</td>	<td>	P. Nick. Blanchand	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	417	</td>	<td>	Efficient use of Fertilizers	</td>	<td>	Vladimir- Ignatieff	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	418	</td>	<td>	e-Governance; Case Studies	</td>	<td>	Ashok Agarwal 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	419	</td>	<td>	E-Government" From vision to Implementation A Practical Guide with Case Studies 	</td>	<td>	Subbash Bhatnagar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	420	</td>	<td>	Elementary Principles of "Plant Breeding"	</td>	<td>	H.K. Chandhari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	421	</td>	<td>	Elementry Forest Mensuration	</td>	<td>	M.R.K. Jerram	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	422	</td>	<td>	Elements of Forest Economics	</td>	<td>	Petrini	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	423	</td>	<td>	Elements of Soil Conservation (2E)	</td>	<td>	Bennett	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	424	</td>	<td>	Elephant care	</td>	<td>	Dr. K.K. Sarma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	425	</td>	<td>	Elephant Gold	</td>	<td>	P.D. Stracey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	426	</td>	<td>	Elephant Managers Resource Guide	</td>	<td>	D.r.K.K Sarma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	427	</td>	<td>	Elephant -The lady Boss	</td>	<td>	Ch. Basappa Navata	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	428	</td>	<td>	Elixir Divine 	</td>	<td>	H.H.S. Sivanand 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	429	</td>	<td>	Emergency First Aid	</td>	<td>	St. Johan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	430	</td>	<td>	Employees Provident Funds and Miscellaneous Provisions Act, 1952	</td>	<td>	Asia Law House	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	431	</td>	<td>	Empowering the Indian Women 	</td>	<td>	Promilla Kapur	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	432	</td>	<td>	Empowering women workers 	</td>	<td>	Nandini Azad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	433	</td>	<td>	Enabling Environment for Joint Forest Management 	</td>	<td>	S.B. Roy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	434	</td>	<td>	Encyclopaedia of Ecotourism	</td>	<td>	P.C. Sinha	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	435	</td>	<td>	Encyclopedia of Animals	</td>	<td>	Dr. David Kirshner	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	436	</td>	<td>	Encyclopedia of Indian Natural History	</td>	<td>	R.E. Hawkins 	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	437	</td>	<td>	Encyclopedia of the Animal World	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	438	</td>	<td>	Endangered	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	439	</td>	<td>	Endangered Animals of India and Their Conservation	</td>	<td>	S.M. NAIR	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	440	</td>	<td>	Endemic & Threatened medicinal plants in India -A. Geoinformatic Approach	</td>	<td>	Dr. Manoj Kumar Sarkar, IFS	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	441	</td>	<td>	Energy Perspectives in Plantation Industry	</td>	<td>	C. Palaniappan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	442	</td>	<td>	Energy, Environment and Sustainable Development 	</td>	<td>	Pradeep-Chaturvedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	443	</td>	<td>	Engineering for Forest Officers	</td>	<td>	-	</td>	<td>	298	</td>	</tr> 
<tr> 	<td>	444	</td>	<td>	Ensuring Sustainability in Forestry	</td>	<td>	H.S. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	445	</td>	<td>	Ensuring Sustainability in Forestry, Certification of Forests	</td>	<td>	H.S. Gupta & M. Yadav	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	446	</td>	<td>	Enviromental Science; A comaprehensive Treatise on Ecology & Environment 	</td>	<td>	Sovan Roy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	447	</td>	<td>	Environment & Energy. The Future We want	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	448	</td>	<td>	Environment and Ecology of Herb-Shurb Flora	</td>	<td>	A.B. Chaudhuri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	449	</td>	<td>	Environment Auditing 	</td>	<td>	A.K. Shrivastava	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	450	</td>	<td>	Environment for Everyone	</td>	<td>	Chiranjit Chakarverty	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	451	</td>	<td>	Environment Impact Assessment 	</td>	<td>	R.K. Singh 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	452	</td>	<td>	Environment Management 	</td>	<td>	B. Narayan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	453	</td>	<td>	Environment Management with Indian Experience	</td>	<td>	Dilip Roy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	454	</td>	<td>	Environment, Pollution and Management	</td>	<td>	A. Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	455	</td>	<td>	Environmental Accounting 	</td>	<td>	N.P. Agrawal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	456	</td>	<td>	Environmental Biology	</td>	<td>	P.D. Sharam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	457	</td>	<td>	Environmental Challenges of the 21st Century	</td>	<td>	Arvind Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	458	</td>	<td>	Environmental Challenges Towards Tourism	</td>	<td>	V. Dhulasi Birundha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	459	</td>	<td>	Environmental Conservation	</td>	<td>	J.B. Lal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	460	</td>	<td>	Environmental Conservation	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	461	</td>	<td>	Environmental Conservation & Sustainable Development	</td>	<td>	Arun Nigavekar 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	462	</td>	<td>	Environmental Education	</td>	<td>	Narrin 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	463	</td>	<td>	Environmental Engineering 	</td>	<td>	Arcadio	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	464	</td>	<td>	Environmental Geography	</td>	<td>	H.M. Saxena	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	465	</td>	<td>	Environmental Guidelines for Development of Beaches	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	466	</td>	<td>	Environmental Guidelines for Development projects 	</td>	<td>	Ministry of Environment & Forests Dept.	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	467	</td>	<td>	Environmental Impact Assessment Methodologies 	</td>	<td>	Y. Anjaneyulu	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	468	</td>	<td>	Environmental Issues for the 21st Century 	</td>	<td>	S.P. Das Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	469	</td>	<td>	Environmental Law and Policy in India (2E)	</td>	<td>	Shyam Divan	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	470	</td>	<td>	Environmental Laws; Indian Perspective 	</td>	<td>	K.G. Agrawal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	471	</td>	<td>	Environmental Management 	</td>	<td>	Swapan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	472	</td>	<td>	Environmental Management 	</td>	<td>	Vijay Kulkarni	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	473	</td>	<td>	Environmental Management (2E)	</td>	<td>	N.K. Uberoi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	474	</td>	<td>	Environmental Pollution	</td>	<td>	V.K. Prabhakar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	475	</td>	<td>	"Environmental Pollution 
Developed Countries
 v/s 
Less Development Countries "	</td>	<td>	Anjila Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	476	</td>	<td>	Environmental Pollution and Effects of Lead and Flworide on Animal Health	</td>	<td>	D. Swarup, SK. Dwivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	477	</td>	<td>	Environmental Protection and Law 	</td>	<td>	Chetan Singh Mehtra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	478	</td>	<td>	Environmental Science-(5E)	</td>	<td>	Willam P. Cunningham	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	479	</td>	<td>	Environmental Studies 	</td>	<td>	H.M. Saxena	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	480	</td>	<td>	Envisioning an Empowered nation 	</td>	<td>	APJ Abdul Kalam	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	481	</td>	<td>	Essential Herbs	</td>	<td>	Lalitha Thomas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	482	</td>	<td>	Essential Learnings in Environmental Education	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	483	</td>	<td>	Essential of Ecology (2E)	</td>	<td>	Colin R. Townsend	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	484	</td>	<td>	Estinating wildlfie Habitat vegitables 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	485	</td>	<td>	Ethics in Organizations	</td>	<td>	David Murry	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	486	</td>	<td>	Ethics in Public Relations	</td>	<td>	Patricea J Persons	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	487	</td>	<td>	Eucalyptus for Planting 	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	488	</td>	<td>	Eucalyptus Leaf Oils - Use, Chemistry, Distillation & Marketing	</td>	<td>	D.J. Boland	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	489	</td>	<td>	Everday Human Values 	</td>	<td>	Jagadesan 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	490	</td>	<td>	Every Trainers Hand book 	</td>	<td>	Devendra Agochiya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	491	</td>	<td>	Everything you should know about Public Relations	</td>	<td>	Anthony Davis	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	492	</td>	<td>	Excellence in Management 	</td>	<td>	C.N. Parkinson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	493	</td>	<td>	Experiences from Participatory Forest Management	</td>	<td>	S.B. Roy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	494	</td>	<td>	Explaining A Tree	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	495	</td>	<td>	Exploring Earth; An Introduction to physical Geology	</td>	<td>	Jon P. Davidson	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	496	</td>	<td>	Exploring Soil and Rocks	</td>	<td>	Ed. Catherall	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	497	</td>	<td>	Extent, Composition, Density Growing Stock and Annual - Increment of India's Forests	</td>	<td>	Forest Survey of India	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	498	</td>	<td>	F. R. S.R. Part I. General Rules	</td>	<td>	P. Muthu Swamy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	499	</td>	<td>	F. R. S.R. Part III. Leave Rules	</td>	<td>	P. M. Swamys	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	500	</td>	<td>	Facilitation Skills 	</td>	<td>	Frances and Roland Bee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	501	</td>	<td>	Facts Figures - 2015	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	502	</td>	<td>	Fantastic Animals	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	503	</td>	<td>	Farm and Community Forestry	</td>	<td>	Gerald. Foley	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	504	</td>	<td>	Farm Forestry 	</td>	<td>	John Arden Ferguson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	505	</td>	<td>	Farmer First	</td>	<td>	Robert Chambers 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	506	</td>	<td>	Fascinating world of Animals	</td>	<td>	Padma Raja Gopal	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	507	</td>	<td>	Fearless Feminist 	</td>	<td>	Malladhi Subbamma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	508	</td>	<td>	"Feathered of Friends - Forest Academy Campus 
"	</td>	<td>	Bipin . S. Phal Desai ,Forest Academy,dulapally,Hyd.	</td>	<td>	41	</td>	</tr> 
<tr> 	<td>	509	</td>	<td>	Fencing the Forest	</td>	<td>	Mahesh - Rangarajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	510	</td>	<td>	Fertilizers and Manual 	</td>	<td>	A. Daniel Hall	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	511	</td>	<td>	Field Companian A.P. Forest Depatment - Vol. II	</td>	<td>		</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	512	</td>	<td>	Field Companion (V-III), A Compendium of Circulars issued by Prl. Chief Conservator of Forest, A.P.	</td>	<td>	Forest Department	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	513	</td>	<td>	Field Companion, A Compendium of Circulars issued by Prl. Chief Conservator of Forest.	</td>	<td>	Forest Department	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	514	</td>	<td>	Field Forester	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	515	</td>	<td>	Field Forester, voices from the Field 	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	516	</td>	<td>	Field Identification Key for Rattans of Kerala	</td>	<td>	C. Renuka	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	517	</td>	<td>	Financial Code, 3 Volumes	</td>	<td>	Padala Rami Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	518	</td>	<td>	Firewood Crops	</td>	<td>	DONATED	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	519	</td>	<td>	First Aid	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	520	</td>	<td>	First Aid	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	521	</td>	<td>	First Aid Manual	</td>	<td>	St. Johan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	522	</td>	<td>	First Aid Step by Step 	</td>	<td>	John Caun, Tim Mccarthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	523	</td>	<td>	Fish and Fishers	</td>	<td>	B.N. Yadav	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	524	</td>	<td>	Flavours of Banjara	</td>	<td>	Jert. Aparna Mehta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	525	</td>	<td>	Flora of Andhra Pradesh	</td>	<td>	Walter	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	526	</td>	<td>	Flora of Andhra Pradesh; Vol-I	</td>	<td>	T. Pullaih	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	527	</td>	<td>	Flora of Andhra Pradesh; Vol-II	</td>	<td>	T. Pullaih	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	528	</td>	<td>	Flora of Andhra Pradesh; Vol-III	</td>	<td>	T. Pullaih	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	529	</td>	<td>	Flora of Andhra Pradesh; Vol-IV	</td>	<td>	T. Pullaih	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	530	</td>	<td>	Flora of British India; Vol - VI	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	531	</td>	<td>	Flora of India; Vol-I	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	532	</td>	<td>	Flora of India; Vol-II	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	533	</td>	<td>	Flora of India; Vol-III	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	534	</td>	<td>	Flora of India; Vol-IV	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	535	</td>	<td>	Flora of India; Vol-V	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	536	</td>	<td>	Flora of India; Vol-VII	</td>	<td>	Hooker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	537	</td>	<td>	Flora of Ranga Reddy District 	</td>	<td>	T. Pullaih	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	538	</td>	<td>	Flora of Telangana - The 29th State of India, Vol-I	</td>	<td>	T. Pullaiah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	539	</td>	<td>	Flora of Telangana - The 29th State of India, Vol-II	</td>	<td>	T. Pullaiah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	540	</td>	<td>	Flora of Telangana - The 29th State of India, Vol-III	</td>	<td>	T. Pullaiah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	541	</td>	<td>	Flora of the Presidency of Madras	</td>	<td>	J.S. Gamble	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	542	</td>	<td>	Flora of the Presidency; Vol-I	</td>	<td>	J.S. Gamble	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	543	</td>	<td>	Flora of the Presidency; Vol-II	</td>	<td>	J.S. Gamble	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	544	</td>	<td>	Flori Culture Fundamentals & Practices	</td>	<td>	Alex Lauria	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	545	</td>	<td>	Flowering Plants of Chittoor Dist. AP India 	</td>	<td>	Madava Chetty Sivaji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	546	</td>	<td>	Flowering Trees	</td>	<td>	MS. Ramdhanwa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	547	</td>	<td>	Folk Performing Arts of AP	</td>	<td>	M. Nagabhusana Sarma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	548	</td>	<td>	Folk Tales Retold	</td>	<td>	Shankar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	549	</td>	<td>	Foot Prints in the Forest 	</td>	<td>	Ajit Banerjee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	550	</td>	<td>	Forest & Watershed Development & conservation in asia & the pacific	</td>	<td>	L.S. Hamilton	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	551	</td>	<td>	Forest & Watershed Development & conservation in asia & the pacific	</td>	<td>	Lawrence	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	552	</td>	<td>	Forest Act 1967	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	553	</td>	<td>	Forest and Environment	</td>	<td>	D.N. Tewari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	554	</td>	<td>	Forest at a Galance 2013	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	555	</td>	<td>	Forest Biodiversity	</td>	<td>	K. Muthu Chelian	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	556	</td>	<td>	Forest Biodiversity Earth's Living Treasure	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	557	</td>	<td>	Forest Biodiversity Registers	</td>	<td>	G. Srinivas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	558	</td>	<td>	Forest Certification 	</td>	<td>	B.K.P. Sinha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	559	</td>	<td>	Forest Classical Approach and Current Imperatives Management	</td>	<td>	J.B. Lal	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	560	</td>	<td>	Forest Conservation Act, 1980	</td>	<td>	A.K. Goyal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	561	</td>	<td>	Forest Conservation and Management	</td>	<td>	Dr. P. Rethy (Department of Forestry)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	562	</td>	<td>	Forest Dweller Economy and Non-Timber Forest Products In Orissa; An Empirial Exercise on Selected items	</td>	<td>	R.M. Mallik	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	563	</td>	<td>	Forest Ecology	</td>	<td>	J.B. Lal	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	564	</td>	<td>	Forest Ecology 	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	565	</td>	<td>	Forest Ecology and Forest Biology	</td>	<td>	L.S. Khanna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	566	</td>	<td>	Forest Ecology in India; Colonial Maharashtra 1850-1950	</td>	<td>	Neena Ambre Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	567	</td>	<td>	Forest Ecology of India	</td>	<td>	G.B. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	568	</td>	<td>	Forest Ecology; Environment, Forests and Rainfall; Vol-3	</td>	<td>	R.K. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	569	</td>	<td>	Forest Economics (Principles & Applications)	</td>	<td>	J.C. Nautiyal	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	570	</td>	<td>	Forest Economics finance	</td>	<td>	Buttrick	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	571	</td>	<td>	Forest Engineering without Tears (2E)	</td>	<td>	N.J. Masani	</td>	<td>	12	</td>	</tr> 
<tr> 	<td>	572	</td>	<td>	Forest Entomology 	</td>	<td>	Bipin Behari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	573	</td>	<td>	Forest Entomology 	</td>	<td>	L.K. Jha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	574	</td>	<td>	Forest Extension	</td>	<td>	M.S. Rana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	575	</td>	<td>	Forest fire and control measures	</td>	<td>	G.S. Rawat S. Nautiyal	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	576	</td>	<td>	Forest Fire Control 	</td>	<td>	SB Show & B. Charke	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	577	</td>	<td>	Forest Fires	</td>	<td>	S.S. Negi	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	578	</td>	<td>	Forest Flora of Andhra Pradesh	</td>	<td>	R.D. Reddy	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	579	</td>	<td>	Forest Flora of Hydeabad State	</td>	<td>	Mohd. Sharfuddin Khan	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	580	</td>	<td>	Forest Flora of the Chakrata	</td>	<td>	Upendranath Kanjilal	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	581	</td>	<td>	Forest Genetic Resources	</td>	<td>	R. Uma Shanker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	582	</td>	<td>	Forest Laws (AP) 4th Edition	</td>	<td>	A. Kishan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	583	</td>	<td>	Forest Laws (AP) 4th Edition-Vol-I	</td>	<td>	A. Kishan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	584	</td>	<td>	Forest Laws (Wildlife SoS)	</td>	<td>	Krishnan Arora	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	585	</td>	<td>	Forest Laws 3rd Edition (AP)	</td>	<td>	A. Kishan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	586	</td>	<td>	Forest Laws 4th Edition	</td>	<td>	A. Kishan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	587	</td>	<td>	Forest Laws 6th Edition (AP) -Vol-2	</td>	<td>	A. Kishan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	588	</td>	<td>	Forest Laws AP	</td>	<td>	A. Kishan	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	589	</td>	<td>	Forest Laws in AP 1st Edition	</td>	<td>	K. Laxminarasimha	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	590	</td>	<td>	Forest Laws Vol-2 (5 Edition)	</td>	<td>	A. Kishan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	591	</td>	<td>	Forest Laws, 11th Edition	</td>	<td>	C.B. Upadhya	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	592	</td>	<td>	Forest Laws, 3rd Edition (AP)	</td>	<td>	A. Kishan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	593	</td>	<td>	Forest Management	</td>	<td>	V.P. Mathur	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	594	</td>	<td>	Forest Management 	</td>	<td>	A.B. Rekn Agel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	595	</td>	<td>	Forest Management 	</td>	<td>	J.B. Lal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	596	</td>	<td>	Forest Management 	</td>	<td>	Ram Prakash	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	597	</td>	<td>	Forest Management in India, Issues Problems	</td>	<td>	Varant Desai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	598	</td>	<td>	Forest Management in Tribal Areas Forest Policy and Peoples Participation	</td>	<td>	P.M. Mohapatra	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	599	</td>	<td>	Forest Management Series, Vol-I	</td>	<td>	E.E. Fernanden	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	600	</td>	<td>	Forest Martyrs	</td>	<td>	K. Buchi Ram Reddy	</td>	<td>	73	</td>	</tr> 
<tr> 	<td>	601	</td>	<td>	Forest Mensuration 	</td>	<td>	A.N. Chturvedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	602	</td>	<td>	Forest Mensuration and Biometry	</td>	<td>	A.N. Chturvedi	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	603	</td>	<td>	Forest Pathology	</td>	<td>	Bimal Kumar Bakshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	604	</td>	<td>	Forest Planning at Landscape level 	</td>	<td>	Kailash Chandra Bebarta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	605	</td>	<td>	Forest Pocket Book 	</td>	<td>	S.H. Howard	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	606	</td>	<td>	Forest Pocket Book Second Year	</td>	<td>	Gourinath 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	607	</td>	<td>	Forest Pocket Book Second Year	</td>	<td>	S.H. Howard	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	608	</td>	<td>	Forest Policy and Law	</td>	<td>	A.N. Chaturvedi, IFS (Rtd)	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	609	</td>	<td>	Forest Policy and Tribal Development	</td>	<td>	Rucha, S. Ghate	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	610	</td>	<td>	Forest Products; Their Sources, Production and utlization	</td>	<td>	A.J. Panshion	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	611	</td>	<td>	Forest Protection	</td>	<td>	L.S. Khanna	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	612	</td>	<td>	Forest Resource and Sustainable Development	</td>	<td>	Kailash Chandra Bebarta	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	613	</td>	<td>	Forest Resource Economy and Environment	</td>	<td>	A.K. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	614	</td>	<td>	"Forest Schedule of Rates Zone-III
2016-17"	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	615	</td>	<td>	Forest Seed Manual 	</td>	<td>	-	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	616	</td>	<td>	Forest Services Manual 3 Voluames 	</td>	<td>	D.M. Rajus	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	617	</td>	<td>	Forest Studies Series F 005 "Group Sensitisation and Participatory Rural Appraisal Process Documentation of Training for Indian Foresters	</td>	<td>	S.B. Roy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	618	</td>	<td>	Forest Surveying 	</td>	<td>	Ram Prakash	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	619	</td>	<td>	Forest Taler	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	620	</td>	<td>	Forest Tree Improvement 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	621	</td>	<td>	Forest Tree Improvement 	</td>	<td>	Study Material for Trainee Field Staff	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	622	</td>	<td>	Forest Tree Seed	</td>	<td>	S.S. Negi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	623	</td>	<td>	Forest Trees of South India	</td>	<td>	S.G.  Neginhal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	624	</td>	<td>	Forestry Extension	</td>	<td>	Dr. G.L. Ray	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	625	</td>	<td>	Forestry Extension Approaches and Practices: A Study from West Virginia, USA	</td>	<td>	Dr. C. Suvarna, IFS (APFA)	</td>	<td>	19	</td>	</tr> 
<tr> 	<td>	626	</td>	<td>	Forestry for Econmic Development Employment Promotion, Industrial- Growth Tribal & Rural Development Wildlife and Environment 	</td>	<td>	Madan Mohan Pant 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	627	</td>	<td>	Forestry for Economic Development	</td>	<td>	Madan Mohan Pant	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	628	</td>	<td>	Forestry for people	</td>	<td>	S.A. Shah	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	629	</td>	<td>	Forestry in India	</td>	<td>	Samar Singh	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	630	</td>	<td>	Forestry Nursery Manual of West Bengal	</td>	<td>	Research & working Plan Circle (FDWB)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	631	</td>	<td>	Forestry Research in India	</td>	<td>	R.V. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	632	</td>	<td>	Forestry Seed Manual	</td>	<td>	S.V. Kumar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	633	</td>	<td>	Forestry Statistics India 1996 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	634	</td>	<td>	Forestry; Principlels and Applications 	</td>	<td>	S.B. Lal 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	635	</td>	<td>	Forests and Forestry	</td>	<td>	K.P. Sugreiya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	636	</td>	<td>	Forests People Profit	</td>	<td>	N.C. Saxena	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	637	</td>	<td>	Forests, Gardens Parks and Urban Environment	</td>	<td>	Dr. D.N. Tewari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	638	</td>	<td>	Forests; The Ecological Ramifications	</td>	<td>	A.P. Dwivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	639	</td>	<td>	Forests; The Non-Wood Resources 	</td>	<td>	A.P. Dwivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	640	</td>	<td>	Form Manures	</td>	<td>	Charles E. Thorne	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	641	</td>	<td>	Former - Industry Partnership for Diversified Livelihood and Raw material production - An ITC Case Study	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	642	</td>	<td>	Foundations of Ethnobotany	</td>	<td>	Sudhirchandra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	643	</td>	<td>	Freedom is not free 	</td>	<td>	Shiva Khera	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	644	</td>	<td>	Freezer Owners 	</td>	<td>	Glynis	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	645	</td>	<td>	Fundamentals of Ecology	</td>	<td>	Eugene Poduom	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	646	</td>	<td>	Fundamentals of Ecology (3E)	</td>	<td>	Eugene Poduom	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	647	</td>	<td>	Fundamentals of Ecology (5E)	</td>	<td>	P. Odum	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	648	</td>	<td>	Fundamentals of Genetics	</td>	<td>	B.D. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	649	</td>	<td>	Fundamentals of Historical - Geology and Stratigraphy of India	</td>	<td>	Ravinder Kumar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	650	</td>	<td>	Fundamentals of Information technology	</td>	<td>	E.G. Rajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	651	</td>	<td>	Fundamentals of Physical Geography(2E)	</td>	<td>	Majid Husain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	652	</td>	<td>	Fundamentals of Wildlife Management	</td>	<td>	Rajesh Gopal	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	653	</td>	<td>	Fundmentals of Forest Statistics	</td>	<td>	Anil Kumar, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	654	</td>	<td>	Fundmentals of Mathematical stastics	</td>	<td>	S.C. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	655	</td>	<td>	Galf Accord 	</td>	<td>	Kabeer Kaushik	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	656	</td>	<td>	Games Triners Play 	</td>	<td>	Gary Kroehvert 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	657	</td>	<td>	Garden Birds of India	</td>	<td>	Frank Finn	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	658	</td>	<td>	Garden Flowers 	</td>	<td>	Vishnu Swamy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	659	</td>	<td>	Garden Trees	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	660	</td>	<td>	Gardening in India 2nd Edition	</td>	<td>	T.K. Bose	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	661	</td>	<td>	Gardens	</td>	<td>	Leera Futehally	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	662	</td>	<td>	Gateway to sustainable and Participatory community Forest Management Village Forest 	</td>	<td>	Mohan Hirabai Haralal	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	663	</td>	<td>	Gender	</td>	<td>	Lind Brannon 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	664	</td>	<td>	Gender Equity in Management 	</td>	<td>	Poonam Sen	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	665	</td>	<td>	General and Silvicultural of Teak 	</td>	<td>	A.K. Mandal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	666	</td>	<td>	General Knowledge 	</td>	<td>	Anand Sagar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	667	</td>	<td>	General Silviculture	</td>	<td>	S.S. Negi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	668	</td>	<td>	General Silviculture for India	</td>	<td>	G. Champion	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	669	</td>	<td>	General silviculture for India	</td>	<td>	Harry.G. Champion & S.K. Seth	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	670	</td>	<td>	Geographic information System 	</td>	<td>	Jatin Pandey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	671	</td>	<td>	Geographic Information Systems and Environmental modeling	</td>	<td>	Keith. C. Clarke	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	672	</td>	<td>	Geoinformatics for climate change studies 	</td>	<td>	P.K. Joshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	673	</td>	<td>	Geoinformatics for Environmental Management	</td>	<td>	M. Anji Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	674	</td>	<td>	Geology ; Course-III, Structural Geology, Economic Geology Indian Geology	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	675	</td>	<td>	Geology for Forests	</td>	<td>	S.S. Negi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	676	</td>	<td>	Geology of India and Bura (6 Edition)	</td>	<td>	M.S. Krishanan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	677	</td>	<td>	Geology, Environment and Society	</td>	<td>	K.S. Valdiya	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	678	</td>	<td>	Geology; Course-IV Mineral Exploration, Mineral Economics and Advanced Aspects	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	679	</td>	<td>	Get Smart in Marketing 	</td>	<td>	Graham Harding 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	680	</td>	<td>	Getting A head 	</td>	<td>	Rajiv Khurana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	681	</td>	<td>	Glence Life Science	</td>	<td>	Daniel 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	682	</td>	<td>	Glimpses of world History	</td>	<td>	J.F.Horrabin	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	683	</td>	<td>	Global Biodiversity and Environmental Conservation	</td>	<td>	T.I. Khan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	684	</td>	<td>	Global Energy Shifts	</td>	<td>	Bruce. Podobnik	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	685	</td>	<td>	Global Warming	</td>	<td>	Paut Bhown	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	686	</td>	<td>	Glopal Issues Approaches to Sustainable Forest Management and Biodiversity Conservation	</td>	<td>	M.P. Shiva	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	687	</td>	<td>	Glossary of Indian Medicinal Plants	</td>	<td>	R.N. Chopra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	688	</td>	<td>	Glossary of Indian Medicinal Plants	</td>	<td>	R.N. Chopra, S.L. Nayar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	689	</td>	<td>	Glossary of Technical Terms 	</td>	<td>	FRI & Colleeges Dehrudun	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	690	</td>	<td>	Glossary of the Botanic terms used in Describing flowering plants	</td>	<td>	R.L. HeiniG	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	691	</td>	<td>	Government Budgeting	</td>	<td>	J.N. Chaturvedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	692	</td>	<td>	Government of A.P. Forest Department 	</td>	<td>	L. Krishna Bhoopal Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	693	</td>	<td>	Government of Andhra Pradesh Forest Department Working Plan for the Forests of Krishna District; 2005-06 to 2014-15, Vol-I (Part -I & II)	</td>	<td>	M. Ravi Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	694	</td>	<td>	Government of Andhra Pradesh Forest Department Working Plan for the Forests of Krishna District; 2005-06 to 2014-15, Vol-I (Part -I & II) (Appendices)	</td>	<td>	M. Ravi Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	695	</td>	<td>	"Government of Andhra pradesh Forest Department Working Plan for the Forests of Paderu Division, Visakhapatnam Circle. 
For the period 2006-07 to 2015-16 Vol-I, Part-I & II"	</td>	<td>	K. Suryanarayana	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	696	</td>	<td>	Government of Andhra Pradesh forest Department. A.P. Community Forest Management Project. Environment Plan & Pest Management Plan.	</td>	<td>	Project Monitoring Unit 2002	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	697	</td>	<td>	Government of Andhra Pradesh forest Department. R&R Policy and Tribal Dwvelopment Strategy.	</td>	<td>	Project Monitoring Unit 2002	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	698	</td>	<td>	Government of Telangana Forest Department 2013-14	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	699	</td>	<td>	Government Orders 	</td>	<td>	Volyaga Kranthi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	700	</td>	<td>	Government Orders on Service Matters	</td>	<td>	Volyaga Kranti 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	701	</td>	<td>	Govt of A. P. Forest Department Working Plsn for the Forests chittor East(WL) on 2007-08 to 2016-17, Vol-II	</td>	<td>	T. V. Subba Reddy 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	702	</td>	<td>	Govt of A.P. F.D,A.P. Community forest management Project comprehensive orders on community forest management. 	</td>	<td>	Project Monitoring Unit 2002	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	703	</td>	<td>	Govt of A.P. Forest Department Narsipatnam Division (2003-04 to 2012-13), Part-I	</td>	<td>	B. Anand Mohan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	704	</td>	<td>	Govt of A.P. Forest Department Narsipatnam Division (2003-04 to 2012-13), Part-II	</td>	<td>	B. Anand Mohan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	705	</td>	<td>	Govt of A.P. Forest Department Narsipatnam Division (2003-04 to 2012-13), Part-III	</td>	<td>	B. Anand Mohan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	706	</td>	<td>	Govt of A.P. Forest Department Working Plan for the Forests of Nellore District 2003-04 to 2012-2013, Vol-I, Part-I & II	</td>	<td>	K. Venkaiah	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	707	</td>	<td>	Govt of A.P. Forest Dept Working Plan Wildlife Management, Division: Jannaram, Vol-I, 2004-05 to 2013-14, Adilabad District. 	</td>	<td>	C.P. Vinod Kumar	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	708	</td>	<td>	Govt of A.P. Forest Dept. working plan for the forest of wildlife management diviison jannaram, adilabad district 2004-05-to 2013-14.Vol-II (Appendics)	</td>	<td>	C.P. Vinod Kumar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	709	</td>	<td>	Govt of A.P. Working Plan Cuddapah Dist Vol-I. 1994-95,2003-2004	</td>	<td>	Sharada Perasad 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	710	</td>	<td>	Govt of A.P. Working Plan Cuddapah Dist Vol-II. 1994-95,2003-2004	</td>	<td>	Sharada Perasad 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	711	</td>	<td>	"Govt of A.P. Working Plan for the Forests of Medak Dist. 2004-2005 to 2013-14,
 Vol-II"	</td>	<td>	B. V. Ramana 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	712	</td>	<td>	Govt of A.P. Working Plan Medak Dist 1993-94 to 2002-2003	</td>	<td>	M.A. Mabood Hozari 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	713	</td>	<td>	Govt of A.P. Working Plan Nalgonda Dist 1994-95 to 2003-2004.	</td>	<td>	K. Saradhi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	714	</td>	<td>	Govt of A.P. Working Plan proddatur Division 2003-2004 to 2012-13 Vol-I	</td>	<td>	P. Udaya Sankar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	715	</td>	<td>	Govt of A.P. Working Plan Vol-I	</td>	<td>	J.S.N Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	716	</td>	<td>	Govt of A.P. Working Plan Vol-II	</td>	<td>	J.S.N Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	717	</td>	<td>	Govt of A.P. Working Plan West Godavari 2002-03 to 2011-12 Vol-I	</td>	<td>	A.K. Sinha 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	718	</td>	<td>	Govt of A.P.F.D. Working Plan for the Forests of Nalgonda Forest Division for the Period from 2004-05 to 2013-14	</td>	<td>	P. Bhushanam	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	719	</td>	<td>	Govt of Andhra Pradesh Forest Department; Working Plan for the Forests of Hyderabad Division Annexures	</td>	<td>	V. Kishan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	720	</td>	<td>	Govt of Andhra Pradesh Forest Dept. Working plan for the Forests of Rajampet Division 2007-2008 to 2016-2017, Vol-II, Part-II	</td>	<td>	Y. Srinivasa Reddy 	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	721	</td>	<td>	Govt of APFD, Working Plan for the Forests of Vizianagaram District 2003-04 to 2012-13, Vol-I	</td>	<td>	M. Sudhakar	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	722	</td>	<td>	Govt of APFD, Working Plan for the Forests of Vizianagaram District 2003-04 to 2012-13, Vol-I	</td>	<td>	M. Sudhakar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	723	</td>	<td>	Govt. A.P. Working Plan for the Forests Chittoor West Division Vol-II	</td>	<td>	N. Nageswara Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	724	</td>	<td>	Govt. A.P. Working Plan for the Forests of Chittor West Division 2007-08 to 2016-17 Vol-II	</td>	<td>	N. Nageswara Rao	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	725	</td>	<td>	Govt. AP, Working Plan of East Godavari the Forests 2002-2011 Vol-I	</td>	<td>	Dr. Manoharanjan Bhanja	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	726	</td>	<td>	Govt. AP, Working Plan of East Godavari the forests 2002-2011 Vol-II	</td>	<td>	Dr. Manoharanjan Bhanja	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	727	</td>	<td>	Govt. of A.P. Chittoor WL Division Vol-I	</td>	<td>	T.V. Subba Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	728	</td>	<td>	Govt. of A.P. Forest Department Annual Administration Report 2011-12	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	729	</td>	<td>	Govt. of A.P. Forest Dept Working Plan Anantapur Dist 2008-09 to 2017-18 Vol-II	</td>	<td>	Kallol Biswas	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	730	</td>	<td>	Govt. of A.P. Working Plan Chittor East(WL) Division 2007-08 to 2016-17 Vol-1I	</td>	<td>	T. V. Subba Reddy 	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	731	</td>	<td>	Govt. of A.P. Working Plan for the Forests of Nalgonda District. 1994-95 to 2003-04. 	</td>	<td>	K. Someswar Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	732	</td>	<td>	Govt. of A.P.F.D. Working Plan for the Forests of Chittoor West Division 2007-08 to 2016-17, Vol-II (Annexures)	</td>	<td>	N.Nageswara Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	733	</td>	<td>	Govt. of Andhra Pradesh Forest Department working plan for the forests of bhadrachalam (north) division khammam circle for the period (2003-04 to 2012-13) Vol-I (Part- I & II)	</td>	<td>	K. Eswar Chand	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	734	</td>	<td>	Govt. of Andhra Pradesh Forest Department working plan for the forests of bhadrachalam (north) division khammam circle for the period (2003-04 to 2012-13) Vol-II, (Annexures Part-I &II)	</td>	<td>	K. Eswar Chand	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	735	</td>	<td>	Govt. of Andhra Pradesh Forest Dept. Working Plan for the Forests of Hyderabad and Rangareddy  Districts 1993-94 to 2002-03, Vol-I	</td>	<td>	A.V.D. Prasanna Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	736	</td>	<td>	Govt. of Andhra Pradesh Forest Dept. Working Plan for the Forests of Hyderabad and Rangareddy  Districts 1993-94 to 2002-03, Vol-II	</td>	<td>	A.V.D. Prasanna Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	737	</td>	<td>	Govt. of Andhra Pradesh Forest Dept. Working Plan for the Forests of Khammam Division 2003-2004 to 2012-13, Part-I, (Annexures)	</td>	<td>	Vinay Kumar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	738	</td>	<td>	Govt. of APFD, Working Plan for the Forests of Kurnool Division 2013-2014 to 2022-23 Compartment Histories Adone Range	</td>	<td>	Poola. Ramakrishna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	739	</td>	<td>	Govt. of. A.P. Forest Dept. Working Plan Anantapur Dist 2008-09 tto 2017-18,Vol-I	</td>	<td>	Kallol Biswas	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	740	</td>	<td>	Govt. of. A.p. Working Plan for the Forests Chitoor East(WL) Division 2007-08 to 2016-17.	</td>	<td>	T. V. Subba Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	741	</td>	<td>	Govt. of. A.p. Working Plan Proddutur Division 2003-2004 to 2012-13 Vol-II	</td>	<td>	P. Udaya Sankar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	742	</td>	<td>	Govt. of. APFD Working Plan for the Forests of Bhadrachalam (South) Divison (2003-03 to 2011-12) Vol-I, Annexures-I & II	</td>	<td>	G. Prakash	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	743	</td>	<td>	Govt. of. APFD Working Plan for the Forests of Bhadrachalam (South) Divison (2003-03 to 2011-12) Vol-II, Part-I & II	</td>	<td>	G. Prakash	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	744	</td>	<td>	Govt.A.P. Chittoor West Division Vol-I	</td>	<td>	N. Nageswara Rao	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	745	</td>	<td>	Govt.A.P. Working plan the Forests Chittor West Division Vol-II	</td>	<td>	N. Nageswara Rao	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	746	</td>	<td>	Green	</td>	<td>	Anil Agarwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	747	</td>	<td>	Green Beginnings; Joint Forest Management in Jhabua	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	748	</td>	<td>	Green Book	</td>	<td>	Ruskin Bonds	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	749	</td>	<td>	Green House Technology and Management	</td>	<td>	"K. Radha Manohar 
C. Igethinathane"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	750	</td>	<td>	Green Remedies (Medicinal Plants & Herbs	</td>	<td>	Dr. S. Suresh Babu, MD. Ayur	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	751	</td>	<td>	Greening: The way to A Healthy Urban Life	</td>	<td>	Govt. of Andhra Pradesh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	752	</td>	<td>	Greening: The way to A Healthy Urban Life	</td>	<td>	Govt. of Andhra Pradesh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	753	</td>	<td>	Griha "Teri" Manual Vol-1	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	754	</td>	<td>	Griha "Teri" Manual Vol-2	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	755	</td>	<td>	Griha "Teri" Manual Vol-3	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	756	</td>	<td>	Griha "Teri" Manual Vol-4	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	757	</td>	<td>	Griha "Teri" Manual Vol-5	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	758	</td>	<td>	Ground Water Availability & Pollution	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	759	</td>	<td>	Group 1 Mains, Paper-2 (History & Polity) Vol.- I	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	760	</td>	<td>	Group 1 Mains, Paper-2 (History & Polity) Vol.- I	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	761	</td>	<td>	Group 1 Mains, Paper-2 (History & Polity) Vol.- II	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	762	</td>	<td>	Group 1 Mains, Paper-2 (History & Polity) Vol.- II	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	763	</td>	<td>	Growth and Yield Statistics of common Indian Timber Species. Vol. I 	</td>	<td>	Directorate of Forest Education 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	764	</td>	<td>	Growth and Yield Statistics of common Indian Timber Species. Vol. II	</td>	<td>	Directorate of Forest Education 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	765	</td>	<td>	GST Ready Reckoner	</td>	<td>	CA Pankaj Goel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	766	</td>	<td>	Guide to the Economic Plant of South India	</td>	<td>	Sundara Raj	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	767	</td>	<td>	Guidelines for the Management of Tropical Forests. -1. The Production of Wood	</td>	<td>	FAO	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	768	</td>	<td>	Guidelines for Tree Planting in Andhra Pradesh	</td>	<td>	A.L. Rao	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	769	</td>	<td>	Hand Book Climate Change and India	</td>	<td>	Navroz K. Dubash 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	770	</td>	<td>	Hand Book for Foresters (A Field Companion)	</td>	<td>	A.R.Maslekar	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	771	</td>	<td>	Hand Book Marine Turtles of India 	</td>	<td>	K.Venkata Raman M.C. Joh Milton	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	772	</td>	<td>	Hand Book of Agroforestry	</td>	<td>	S.P. Singh	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	773	</td>	<td>	Hand Book of Environmental Laws, Acts, Rules, Guidelines, Compliances and Standards, Volume-1	</td>	<td>	R.K. Trivedy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	774	</td>	<td>	Hand Book of Environmental Laws, Acts, Rules, Guidelines, Compliances and Standards, Volume-2	</td>	<td>	R.K. Trivedy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	775	</td>	<td>	Hand Book of Environmental Vol-I	</td>	<td>	R.K. Trivedy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	776	</td>	<td>	Hand Book of Foresst Protection	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	777	</td>	<td>	Hand book of Forest Ecology and Biology 	</td>	<td>	Dr. S.S. Negi, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	778	</td>	<td>	Hand book of Forest Ecology and Biology 	</td>	<td>	S.S.Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	779	</td>	<td>	Hand Book of Forestry	</td>	<td>	L..S.. Khanna	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	780	</td>	<td>	Hand Book of Forestry, Part-2	</td>	<td>	A.N. Chturvedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	781	</td>	<td>	Hand Book of Forestry; Part-II	</td>	<td>	A.N. Chturvedi	</td>	<td>	12	</td>	</tr> 
<tr> 	<td>	782	</td>	<td>	Hand Book of Pedology	</td>	<td>	Ph. Duchaufour	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	783	</td>	<td>	Hand Book of Pedology	</td>	<td>	Philippe Duchaufour	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	784	</td>	<td>	Hand Book of Quotations 	</td>	<td>	Arthur T. Morgun	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	785	</td>	<td>	Hand Book of Rock Garden Wing on the Hills	</td>	<td>	P. Kachroo and Priya Zarabi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	786	</td>	<td>	Hand Book of Services 2007	</td>	<td>	NGFA, Hyd	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	787	</td>	<td>	Hand Book of Silvicutural Systems	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	788	</td>	<td>	Hand book of Statistics 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	789	</td>	<td>	Hand Book of Tax Deduction at Source 	</td>	<td>	Dr. Girish Ahuja 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	790	</td>	<td>	Hand Book of The Managrment of Animals in Captivity	</td>	<td>	Ram Brahma Sauyd	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	791	</td>	<td>	Hand book on Afforestion Techniques	</td>	<td>	R.G. Ghosh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	792	</td>	<td>	Hand Book on Energy Audit and Environment Management	</td>	<td>	Y.P. Abbi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	793	</td>	<td>	Hand book on Forest Certification	</td>	<td>	Manmohan Yadav	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	794	</td>	<td>	Hand Book on Soils and Manures	</td>	<td>	E.J. Russell	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	795	</td>	<td>	Hand book on the Management of Agroforestry Research	</td>	<td>	John C. Gardon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	796	</td>	<td>	Hand Book on Whales, Dolphins and Dugoug	</td>	<td>	V.C Agrawal,JRS.Alfred 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	797	</td>	<td>	Hand Book on Wildlife Law Enforcement in India 	</td>	<td>	Samir simha	</td>	<td>	13	</td>	</tr> 
<tr> 	<td>	798	</td>	<td>	Handbook of Forest Engineering	</td>	<td>	Dr. S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	799	</td>	<td>	Handing of Forestry Seeds in India	</td>	<td>	Dr. Ramprasad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	800	</td>	<td>	Hands on 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	801	</td>	<td>	Heaven and Earth I	</td>	<td>	Vevek Menon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	802	</td>	<td>	Helpful Hints 	</td>	<td>	Jyothi Shenoy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	803	</td>	<td>	Herbal Cure for Common & Chronic Diseases	</td>	<td>	Aziz Ahmed Syed	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	804	</td>	<td>	Herbal Formulations	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	805	</td>	<td>	Herbal Garden	</td>	<td>	K.P. Srivasuki &  B. Venkateswar Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	806	</td>	<td>	Herbal Garden (Rashtrapathi Nilayam) Hyd.	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	807	</td>	<td>	Herbal Remedies 	</td>	<td>	Christopheo Hediey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	808	</td>	<td>	Herbs That Heal 	</td>	<td>	H.K. Bakhru	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	809	</td>	<td>	Herbs, Speices and Medicinal Plants Volume -I	</td>	<td>	Lyle E, Craker James, E. Simon Editors 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	810	</td>	<td>	Herbs, Speices and Medicinal Plants Volume -II	</td>	<td>	Lyle E, Craker James, E. Simon Editors 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	811	</td>	<td>	Herbs, Speices and Medicinal Plants Volume -III	</td>	<td>	Lyle E, Craker James, E. Simon Editors 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	812	</td>	<td>	Herbs, Speices and Medicinal Plants Volume -IV	</td>	<td>	Lyle E, Craker James, E. Simon Editors 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	813	</td>	<td>	Heritage Amruth	</td>	<td>	D.K. Ved etc.,	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	814	</td>	<td>	Highlight 2009-2010	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	815	</td>	<td>	Hindu Manners customs and ceremonies	</td>	<td>	Abbe JA. Dubois	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	816	</td>	<td>	Hindutva and Dalits 	</td>	<td>	Anand Tettumbde 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	817	</td>	<td>	Home Gardening 	</td>	<td>	Pratibha.P Trivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	818	</td>	<td>	Home Remedies 	</td>	<td>	Dr. S. Chidam Barathanu Pillai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	819	</td>	<td>	Home Remedies Vol-I	</td>	<td>	T.V. Sairam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	820	</td>	<td>	Home Remedies Vol-III	</td>	<td>	T.V. Sairam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	821	</td>	<td>	Homoeopathy for a House -wife	</td>	<td>	Dr. K. Siva Shankar (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	822	</td>	<td>	HOT, FLAT, and Crowded	</td>	<td>	Thomas L. Friedman 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	823	</td>	<td>	How Green is my Village	</td>	<td>	Dr. Vilanjana Das	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	824	</td>	<td>	How I raised my self from failure to success in selling 	</td>	<td>	Frank Bettger	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	825	</td>	<td>	How India seas the World	</td>	<td>	Shyam Saran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	826	</td>	<td>	How to cut office costs 	</td>	<td>	Harold.H Long man	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	827	</td>	<td>	How to do Just about Anything on a Computer	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	828	</td>	<td>	How to manage Conflict 	</td>	<td>	Peg Pickering 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	829	</td>	<td>	How to prevent common serious diseases 	</td>	<td>	Ajit S. Puri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	830	</td>	<td>	How to Remain Ever Happay	</td>	<td>	Er. M.K. Gupta 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	831	</td>	<td>	How to write and publish a Scientific Paper 	</td>	<td>	Roberta Day	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	832	</td>	<td>	Human Choice & Climate Change	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	833	</td>	<td>	Human Choice & Climate Change- Vol-2	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	834	</td>	<td>	Human Choice & Climate Change Vol-I	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	835	</td>	<td>	Human Choice & Climate Change Vol-II	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	836	</td>	<td>	Hunter	</td>	<td>	J.A. Hunter (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	837	</td>	<td>	Hunting and Shooting Vol-I	</td>	<td>	Mahesh Rangarajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	838	</td>	<td>	Hunting in the Wildrness	</td>	<td>	Stanley E. Brock	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	839	</td>	<td>	Hunting with a Camera	</td>	<td>	Erwin.A. Bauer, Donated	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	840	</td>	<td>	Hyderabad and Secunderabad Road Guide	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	841	</td>	<td>	Hydrological Measurements for Watershed Research	</td>	<td>	S.K. Gupta	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	842	</td>	<td>	Hydrology & Watershed Management Vol-I	</td>	<td>	B. Venkateswara Rao	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	843	</td>	<td>	I Can Draw Creepy Crawlies 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	844	</td>	<td>	I Can Draw on the Ferm	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	845	</td>	<td>	IC-33, Life Insurance (Revised)	</td>	<td>	S. Balachandran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	846	</td>	<td>	ICT for National Development Proceedings of the 40th Annual National Contention of the CSI	</td>	<td>	Asok Agarwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	847	</td>	<td>	Identification Techniques	</td>	<td>	R.C. Desai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	848	</td>	<td>	IIHFW annual Report 2001-2003	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	849	</td>	<td>	Illustracted Dictionary of Biodiversity 	</td>	<td>	O.P. Sharma, Yidyarthi, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	850	</td>	<td>	Ilustrater Family Encyclopedia	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	851	</td>	<td>	Immoral Traffic Prevention Act 1956	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	852	</td>	<td>	Imperilled Custodians of the night 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	853	</td>	<td>	Implementating Key Quality Tools & Techniques 	</td>	<td>	Barrie Dale	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	854	</td>	<td>	Important Bird areas in India	</td>	<td>	Asod. R. Rahmani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	855	</td>	<td>	In the Company of Educated Women	</td>	<td>	B. Miller Solomon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	856	</td>	<td>	In the Grip of the Jungles	</td>	<td>	George, Hogan Knowles	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	857	</td>	<td>	In the Shadow of the Leaves	</td>	<td>	Anjana Babu	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	858	</td>	<td>	Incentives in Soil Conservation from theory to practice	</td>	<td>	David W. Sanders	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	859	</td>	<td>	Incom Tax 2003 to 2005	</td>	<td>	Nabhis	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	860	</td>	<td>	Incom Tax on Salaries	</td>	<td>	TVR Satya prasad 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	861	</td>	<td>	India 2020	</td>	<td>	APJ Abdul Kalam	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	862	</td>	<td>	India Railway Atlas & Time Table	</td>	<td>	R.P. Arya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	863	</td>	<td>	India State of Forest Report 2009	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	864	</td>	<td>	India State of Forest Report 2011	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	865	</td>	<td>	India the Cradle of Mankind 	</td>	<td>	Edavana Damodaram	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	866	</td>	<td>	Indian 200 year Book Vol-II	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	867	</td>	<td>	Indian Democracy	</td>	<td>	G. Rama Chandra Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	868	</td>	<td>	Indian Forest Insects	</td>	<td>	Stebbing 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	869	</td>	<td>	Indian Forest Utilization Vol-II	</td>	<td>	FRI & Colleeges Dehrudun	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	870	</td>	<td>	Indian Forestry; A Perspective 	</td>	<td>	Ajay, S. Rawat	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	871	</td>	<td>	Indian Hill Birds	</td>	<td>	Salim Ali	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	872	</td>	<td>	Indian Journal of Ecology; Vol-43, Issue-I, June 2016	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	873	</td>	<td>	Indian Journal of Ecology; Vol-44, Issue-I, March 2017	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	874	</td>	<td>	Indian Journal of Ecology; Vol-44, Issue-III, September 2017	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	875	</td>	<td>	Indian Journal of Economics and Development 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	876	</td>	<td>	Indian Medicinal Plants	</td>	<td>	K.R. Kiritikar	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	877	</td>	<td>	Indian Medicinal Plants Volume-6	</td>	<td>	"Ram P. Rastogi
B.N. Mehrotra"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	878	</td>	<td>	Indian Medicinal Plants-Vol-1	</td>	<td>	Orient Longman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	879	</td>	<td>	Indian Medicinal Plants-Vol-2	</td>	<td>	Orient Longman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	880	</td>	<td>	Indian Medicinal Plants-Vol-3	</td>	<td>	Orient Longman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	881	</td>	<td>	Indian Medicinal Plants-Vol-4	</td>	<td>	Orient Longman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	882	</td>	<td>	Indian Medicinal Plants-Vol-5	</td>	<td>	Orient Longman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	883	</td>	<td>	Indian Medicinal Plants-Vol-I	</td>	<td>	K.R. Kiritikar	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	884	</td>	<td>	Indian Repblic (2 Books)	</td>	<td>	G. Rama Chandra Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	885	</td>	<td>	Indian Traditional Veterinary Medicinal Plants 	</td>	<td>	G.N. Srinivas, S.N. Hasam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	886	</td>	<td>	Indian Tribes through the Ages	</td>	<td>	R.C. Verma	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	887	</td>	<td>	Indian Wildlife	</td>	<td>	R.S. Dharma, Kumarsinji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	888	</td>	<td>	Indian Women 	</td>	<td>	Afsar Bano	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	889	</td>	<td>	India's Environment 	</td>	<td>	J. Bandyopadhyay	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	890	</td>	<td>	India's Forest Polices; Analysis and Appraisal	</td>	<td>	L.K. Jha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	891	</td>	<td>	India's Forest Policy & Forest Laws 	</td>	<td>	Chatrapati Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	892	</td>	<td>	India's Wildlife History	</td>	<td>	Mahesh Rangarajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	893	</td>	<td>	Indigenous Science and Technology for sustainable development	</td>	<td>	V. Subramanyam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	894	</td>	<td>	Indira Gandhi A Life of in Nature	</td>	<td>	Jairam Ramesh 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	895	</td>	<td>	Indoor Gardening 	</td>	<td>	Vishnu Swarug	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	896	</td>	<td>	Induction Training for Sub-Inspectors (CIVIL) - Revised syllabus 2016	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	897	</td>	<td>	Industrial Utilization on Bamboo	</td>	<td>	Zhang Qisheng 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	898	</td>	<td>	Information Resources for Bamboo and Cane Development in Kerala	</td>	<td>	K. Sankara Pillai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	899	</td>	<td>	Information System Management 	</td>	<td>	Y.P. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	900	</td>	<td>	Information Technology & Numerical Methods	</td>	<td>	E.G. Rajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	901	</td>	<td>	Initiatives of Innovations 	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	902	</td>	<td>	Insects 	</td>	<td>	M.S. Mani	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	903	</td>	<td>	Insects are animals too 	</td>	<td>	Anthany Wootton	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	904	</td>	<td>	Insects saurus	</td>	<td>	Brimax	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	905	</td>	<td>	In-Situ Conservation & Sustainable Utilization of Medicinal Plants in AP	</td>	<td>	Dr. S.N. Jadhav, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	906	</td>	<td>	Instent Notes Ecology (2E)	</td>	<td>	Aulay Mackkenzie	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	907	</td>	<td>	Integrating Medicinal Aromatic and Dye Plant Species in Forest Working Plan	</td>	<td>	Prof. P. Batta Chayd	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	908	</td>	<td>	Intermediate Course 1st Year Text Book Environmental Education 	</td>	<td>	W.G. Prasanna Kumar	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	909	</td>	<td>	Intermediate Second Year Botany	</td>	<td>	Sai Baba	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	910	</td>	<td>	International Business - Text and Cases	</td>	<td>	P. Subba Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	911	</td>	<td>	Introduction of Wildlife Management	</td>	<td>	S.S. Negi, V.K. Bahuguna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	912	</td>	<td>	Introduction to Environmental -Biotechnology	</td>	<td>	A.K. Chatterji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	913	</td>	<td>	Introduction to Environmental Science 	</td>	<td>	R.S. Khoiyangbam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	914	</td>	<td>	Introduction to Forestry Scince	</td>	<td>	L. Devere Burton	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	915	</td>	<td>	Introduction to Species, Plantation Crops, Medicinal and Aromatic Plants	</td>	<td>	N.Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	916	</td>	<td>	Introductory Soil Scince 	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	917	</td>	<td>	Inventory Technioues and Assessment of Rattan & Bamboo; Intropical Forests 	</td>	<td>	J.T. Williams	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	918	</td>	<td>	Irritability of Plants. 	</td>	<td>	Jagadis Chunder Bose	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	919	</td>	<td>	Islands of India	</td>	<td>	Dr. Sarit Kumar Mukerji (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	920	</td>	<td>	Janmabhoomi- Rural Development 	</td>	<td>	E.D. Setty	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	921	</td>	<td>	Jaok Straight from the Gut	</td>	<td>	Jack Welch	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	922	</td>	<td>	Jewels of Gir	</td>	<td>	Dr. Sandeep Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	923	</td>	<td>	Jim corbett (Man-Eaters of Kumaon)	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	924	</td>	<td>	Jim Corbett of Kumaon 	</td>	<td>	D.C. Kala	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	925	</td>	<td>	Joint Forest Management	</td>	<td>	N.H. Ravindernath	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	926	</td>	<td>	Joint Forest Management 	</td>	<td>	M.M. Deka	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	927	</td>	<td>	"Joint Forest Management 
 The Haryana-Experince"	</td>	<td>	Madhu Sarin 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	928	</td>	<td>	Joint Forest Management ; A Training Manual	</td>	<td>	S.B. Roy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	929	</td>	<td>	Joint Forest Management and Community Forestry in India	</td>	<td>	N.H. Ravindernath	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	930	</td>	<td>	Joint Forest Management for Bio-diversity Enhancement 	</td>	<td>	S. Balaji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	931	</td>	<td>	Joint Forest Management in India	</td>	<td>	N.H. Ravindernath	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	932	</td>	<td>	Joint Forest Management Update	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	933	</td>	<td>	Journal of The Bombay Natural History Society	</td>	<td>	J.C. Daniel 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	934	</td>	<td>	Joy of Bird Watching	</td>	<td>	Vishwa Mohan Tiwari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	935	</td>	<td>	Jungle By-Ways in India	</td>	<td>	E.P Stebbing	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	936	</td>	<td>	Jungle Lore	</td>	<td>	Jim Corbett	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	937	</td>	<td>	Jungles Long Ago	</td>	<td>	Kenneth Anderson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	938	</td>	<td>	Kalyana- Kalpataru	</td>	<td>	Gita press 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	939	</td>	<td>	Kanha Tiger Reserve	</td>	<td>	Carrol Moutton	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	940	</td>	<td>	Karma ayoga 	</td>	<td>	Swami Sukhabodhananda 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	941	</td>	<td>	Khairi The Beloved Tigers	</td>	<td>	Saroj Raj Choudary	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	942	</td>	<td>	Khairi The Beloved Tigers	</td>	<td>	Saroj Raj Choudary	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	943	</td>	<td>	Know About Birds 	</td>	<td>	Kiran Gupta 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	944	</td>	<td>	Knowledge Management 	</td>	<td>	Ratraja Gogula	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	945	</td>	<td>	Korea's National Biodiversity Strategy 2014-2018	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	946	</td>	<td>	Kurukshetra	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	947	</td>	<td>	Lake Kolleru Environmantal Status Past and Present	</td>	<td>	Y.An Janeyulus, Durga Prasad 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	948	</td>	<td>	Lateral Thinking Skills 	</td>	<td>	Paul Sloane 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	949	</td>	<td>	Law Relating to Environmental Pollution and Protection	</td>	<td>	Dr. Maheshwar Swamy	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	950	</td>	<td>	Law Reloding to Human Rights 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	951	</td>	<td>	Laws of Evidance	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	952	</td>	<td>	Lax and Tax 	</td>	<td>	M. K. Kustomji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	953	</td>	<td>	Leadership 	</td>	<td>	Lievt Gen	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	954	</td>	<td>	Leadership and Motavation 	</td>	<td>	B. Chakrabarty 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	955	</td>	<td>	Learning to Share Experiences and Reflections on PRA and other participatory Approaches	</td>	<td>	Neela Mukherjee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	956	</td>	<td>	"Lecture Notes on silviculture of
 Indian 
Trees / Species"	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	957	</td>	<td>	Legal Guide	</td>	<td>	Anjana Gosain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	958	</td>	<td>	Let there be Forest	</td>	<td>	Arnold and connie Krochmal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	959	</td>	<td>	Life in Harmony in to the Future	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	960	</td>	<td>	Life in the Universe 	</td>	<td>	M.S. Chada	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	961	</td>	<td>	Light beyond the Tortuous Course A sage of the divine mother 	</td>	<td>	B.R. Ramabhadraiah, IFS.,	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	962	</td>	<td>	Litter Dynamics, Microbial Associations and Soil Studies in Acacia Auriculformis plantations in Kerala 	</td>	<td>	K. V. Sankaran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	963	</td>	<td>	Little Drops make an Ocean	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	964	</td>	<td>	Live, Love & smile	</td>	<td>	Raju Ravi Tej	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	965	</td>	<td>	Live, Love Languages 	</td>	<td>	Gary Champman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	966	</td>	<td>	Lives in the Wilderness	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	967	</td>	<td>	Looking at life Differently	</td>	<td>	Swami Sukhabodhananda 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	968	</td>	<td>	Mahamtma Gandhi and the Environment 	</td>	<td>	T.N. Khoshoo	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	969	</td>	<td>	Mahathma Gandhi An Apostive of appiled Human Ecology 	</td>	<td>	TN Khoshoo	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	970	</td>	<td>	Mahathma Gandhi The last 200 days 	</td>	<td>	V. Rama Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	971	</td>	<td>	Major Medicinal Plants of India	</td>	<td>	RS. Thakar, H.S. Puri & Akhtar Hussain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	972	</td>	<td>	Make a Life 	</td>	<td>	Ron Jerson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	973	</td>	<td>	Making Sense of Climate change 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	974	</td>	<td>	Making Water everybody's Business	</td>	<td>	Anil Agarwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	975	</td>	<td>	Man and Environment 	</td>	<td>	P.R. Trivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	976	</td>	<td>	Man -Eaters and Jungle - Killers	</td>	<td>	Kenneth Anderson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	977	</td>	<td>	Man of the Trees	</td>	<td>	ST. Barbebaker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	978	</td>	<td>	Man power planning at Enterprises level 	</td>	<td>	V.M. Budhi Raja	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	979	</td>	<td>	Man Science and Environment 	</td>	<td>	A.S. Thakur	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	980	</td>	<td>	Management guide to Negotiating 	</td>	<td>	Kate Kenan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	981	</td>	<td>	Management information Systems	</td>	<td>	C.S.V. Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	982	</td>	<td>	Management of Minor Forest Produce for Sustainability	</td>	<td>	M.P. Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	983	</td>	<td>	Management of Water for Agriculture	</td>	<td>	Rakesh Hooja	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	984	</td>	<td>	Management of Water Resources in Agriculture	</td>	<td>	U.S. Sree Ramulu	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	985	</td>	<td>	Management quite to solving problems 	</td>	<td>	Kate Leenam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	986	</td>	<td>	Management Science 	</td>	<td>	A.V. Rav	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	987	</td>	<td>	Management Strategies for Endemic and Threatined medicial plants in India. A Geoinformatic approach, Trees of Tamil Nadu 	</td>	<td>	Dr. Manoj Kumar Sarkar, IFS	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	988	</td>	<td>	Management Wisdom 	</td>	<td>	Promad Butra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	989	</td>	<td>	Managerial Economics	</td>	<td>	Dr. D.M. Mithani 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	990	</td>	<td>	Managing cost Benefit Analysis	</td>	<td>	Grahame Walshe	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	991	</td>	<td>	Managing Forests for Species Survival; A Study of Cane (Calamust) in Khurda Forest Division, Odissa	</td>	<td>	Ajay K. Mahapatla	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	992	</td>	<td>	Managing Managers 	</td>	<td>	ED. Snape	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	993	</td>	<td>	Managing Operators 	</td>	<td>	Roger Cartwright 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	994	</td>	<td>	Man-Eating Tigers	</td>	<td>	Dr. Kalyan Chakrabarti	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	995	</td>	<td>	Mangement Plan Rollapadu Wildlife Sactuary 	</td>	<td>	K. Thulasi Rao 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	996	</td>	<td>	Mannar Matters	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	997	</td>	<td>	Manorama Year book 1999	</td>	<td>	Manorama	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	998	</td>	<td>	Manual for Wildlife Management in India	</td>	<td>	Dr. S.S. Negi, IFS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	999	</td>	<td>	Manual of Indian Forest Botany	</td>	<td>	N.L. Bor	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1000	</td>	<td>	Manual of Jurisprudece for forest ofifcers	</td>	<td>	B.H. Badur Powell	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1001	</td>	<td>	Manual of Non-Wood Forest Produce Plants of Kerala	</td>	<td>	K.K.N. Nair	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1002	</td>	<td>	Manual of Plant Diseases (2E)	</td>	<td>	Frederick Deforest Heald	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1003	</td>	<td>	Manual of Plant Ecology (3E)	</td>	<td>	K.C. Misra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1004	</td>	<td>	Manual of Seeds of Forest Trees Bamboos and Ratlans 	</td>	<td>	K.C. Chacko	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1005	</td>	<td>	Manual of Soil and Water Conservation	</td>	<td>	Gurmel Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1006	</td>	<td>	Manual of Soil of Water Conservsation practices 	</td>	<td>	Gurrnel Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1007	</td>	<td>	Marine Plants Ecology	</td>	<td>	S.C.Agrawal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1008	</td>	<td>	Marketing and Trade of Forest Produce	</td>	<td>	D.N. Tewari	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1009	</td>	<td>	Marvels & Mystories of our Animal world 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1010	</td>	<td>	Master of Business Administration II Year 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1011	</td>	<td>	Mathematice Natural Awareness 	</td>	<td>	V.N.N. S.S. Ram	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1012	</td>	<td>	MCR Human Resource Development Institute of Andhra Pradesh Hyderabad	</td>	<td>	 Andhra Pradesh Forest Department	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1013	</td>	<td>	MCR Human Resource Development Institute of Andhra Pradesh Hyderabad, "Introduction to Management"	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1014	</td>	<td>	MCR Human Resource Development Institute of Andhra Pradesh Hyderabad, Forest Range Officers; Forest Department, Vol-I	</td>	<td>	Forest Department	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1015	</td>	<td>	MCR Human Resource Development Institute of Andhra Pradesh Hyderabad, Forest Range Officers; Forest Department, Vol-III	</td>	<td>	Forest Department	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1016	</td>	<td>	MCR Human Resource Development Institute of Andhra Pradesh Hyderabad, Pay & Accounts	</td>	<td>	Forest Department	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1017	</td>	<td>	MCR Human Resource Development Institute of Andhra Pradesh, Hyderabad	</td>	<td>	Forest Department	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1018	</td>	<td>	Measuring Vulnerability to Natural Hazards	</td>	<td>	Jorn Birkmann	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1019	</td>	<td>	Med Herbs - India 2003	</td>	<td>	Janak Raj Rawal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1020	</td>	<td>	Medicinal and Aromatic Plants 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1021	</td>	<td>	Medicinal and Aromatic Plants  in Asia	</td>	<td>	Narong Chom Chalon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1022	</td>	<td>	Medicinal Plants	</td>	<td>	Rodert Bentley Heney Trimen	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1023	</td>	<td>	Medicinal Plants	</td>	<td>	S.G. Joshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1024	</td>	<td>	Medicinal Plants	</td>	<td>	S.K. Jain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1025	</td>	<td>	Medicinal Plants 	</td>	<td>	Alka Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1026	</td>	<td>	Medicinal Plants - Vol-III	</td>	<td>	Robert Mentley 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1027	</td>	<td>	Medicinal Plants - Vol-IV	</td>	<td>	Robert Mentley 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1028	</td>	<td>	Medicinal Plants & Herbal Products 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1029	</td>	<td>	Medicinal Plants and Their Cultivation 	</td>	<td>	Akhtar Hussain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1030	</td>	<td>	Medicinal Plants in India	</td>	<td>	T. Pullaian	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1031	</td>	<td>	Medicinal Plants of India & Pakistan	</td>	<td>	J.F. Dastur, F.N.I	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1032	</td>	<td>	Medicinal Plants of Indian Trans- Himalaya	</td>	<td>	C.P. Kala	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1033	</td>	<td>	Medicinal Plants of the Arid Zones	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1034	</td>	<td>	Medicinal Plants of Tirumala	</td>	<td>	Thammanna & K. Narayana Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1035	</td>	<td>	Memories of A Forester	</td>	<td>	A.N. Chaturvedi, IFS (Rtd)	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1036	</td>	<td>	Methodology for water Analysis 	</td>	<td>	Mohan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1037	</td>	<td>	Methods for Community Participation	</td>	<td>	Somesh Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1038	</td>	<td>	Methods pf Participatory Training 	</td>	<td>		</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1039	</td>	<td>	Micro Planning Manual for Joint Forest Management Areas	</td>	<td>	Bakhshish Singh	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1040	</td>	<td>	Micro planning, A Guide to Participatory Natural Resource Management 	</td>	<td>	J.P. Yadav 	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1041	</td>	<td>	Micro Propagation of Bamboo and Raltan	</td>	<td>	E.M. Muralidharan	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1042	</td>	<td>	Microbial Intervactions in Agriculture and Forestry	</td>	<td>	N.S. Subba Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1043	</td>	<td>	Miles to Go	</td>	<td>	-	</td>	<td>	277	</td>	</tr> 
<tr> 	<td>	1044	</td>	<td>	Minerals of India	</td>	<td>	Mehar D.N. Wadia	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1045	</td>	<td>	Minor Forest Products of India 	</td>	<td>	T. Krishna Murthy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1046	</td>	<td>	Minor Fruit Crops of India	</td>	<td>	B.C. Mazumdar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1047	</td>	<td>	Monitoring Tigers and Their Prey	</td>	<td>	K.Ullas Karanth and James D.Nichols	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1048	</td>	<td>	Monocultures of the Mind	</td>	<td>	Vandana Shiva	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1049	</td>	<td>	Motivating people 	</td>	<td>	Kurt Hanks 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1050	</td>	<td>	Motivation and Personality 	</td>	<td>	Abraham H. Maslow 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1051	</td>	<td>	Motivation Games	</td>	<td>	Robert Epstein	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1052	</td>	<td>	Multi - Stakeholders workshop on Restoring, Balance, between Livestock - based Livelihood and Natural Resources	</td>	<td>	A.P. Forest Department  / APFA	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1053	</td>	<td>	Multipurpose Trees for Agroforestry and Wasteland Utilization	</td>	<td>	R.K. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1054	</td>	<td>	My India, The India Eternal 	</td>	<td>	Swami Viveka Nanda	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1055	</td>	<td>	My Way of Hunting 	</td>	<td>	Donated	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1056	</td>	<td>	Nandankanan	</td>	<td>	Sudarsan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1057	</td>	<td>	Natiaonal Mission on Bamboo- Technology and Trade Development 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1058	</td>	<td>	National Afforestation in Programme	</td>	<td>	PCCF. AP	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1059	</td>	<td>	National Forestry Action Programme  - India  - Vol.2	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1060	</td>	<td>	National Forestry Action Programme  - India Vol.1	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1061	</td>	<td>	National Mission on Bamboo - Technology and Trade - Development 	</td>	<td>	Planning Commission Government of India	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1062	</td>	<td>	National Parks	</td>	<td>	Anand S.Khati	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1063	</td>	<td>	National Parks and Wildlife Sanctuaries of India	</td>	<td>	Erach Bharucha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1064	</td>	<td>	National Parks of India	</td>	<td>	R.S. Bisht	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1065	</td>	<td>	Natural Heritage	</td>	<td>	Samar Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1066	</td>	<td>	Naturalist 	</td>	<td>	Wdward O Wilson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1067	</td>	<td>	Nature / Science Annual	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1068	</td>	<td>	Nature Conservation and Sustainble Development in India	</td>	<td>	Prakash Gole	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1069	</td>	<td>	Nature Note Books	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1070	</td>	<td>	Nature Scope India	</td>	<td>	CEE's	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1071	</td>	<td>	Nature Scope India	</td>	<td>	Lalsenha Raol	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1072	</td>	<td>	Nature Scope India Vol-I	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1073	</td>	<td>	Nature Watch	</td>	<td>	Khush Want Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1074	</td>	<td>	Nature's Harvest	</td>	<td>	Vandana Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1075	</td>	<td>	Natures Spokesman 	</td>	<td>	Ramachandra Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1076	</td>	<td>	Neem in Ayurveda	</td>	<td>	Vaidya Suesh Chaturedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1077	</td>	<td>	Neem Tree ( A Bouquet of Short stories by Banaphool)	</td>	<td>	Dipnia Datta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1078	</td>	<td>	Neeru- Meeru	</td>	<td>	E.D. Setty	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1079	</td>	<td>	Network Theory	</td>	<td>	N.C. Jagan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1080	</td>	<td>	New Voices in Indian Forestry	</td>	<td>	V.S.P. Kurup	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1081	</td>	<td>	New Warnely Dictionary	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1082	</td>	<td>	Nitrogen Fixing Trees, for Wastelands	</td>	<td>	Kenneth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1083	</td>	<td>	NTFP Hotlines - Vol.2	</td>	<td>	M.S. Alka Shiva 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1084	</td>	<td>	NTFP Hotlines Vol.-1 Year 2001	</td>	<td>	M.S. Alka Shiva 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1085	</td>	<td>	Numerical methods with 'C' Programmes	</td>	<td>	P.S. Subramanyam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1086	</td>	<td>	Nursery and Plantation Pracices in Forestry (2E)	</td>	<td>	Vonod Kumar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1087	</td>	<td>	Nursery and Plantation Practices in Forestry	</td>	<td>	Vinod Kumar, IFS	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1088	</td>	<td>	Nursery and Planting Techniques of Forest Trees in Tropical South Asia	</td>	<td>	S.N. Rai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1089	</td>	<td>	Nursery and Silvicultural -Techniques for Bamboos	</td>	<td>	C. Renuka	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1090	</td>	<td>	Nursery and Silvicultural -Techniques for Bamboos	</td>	<td>	R.C. Pandalai	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1091	</td>	<td>	Nursery Manual 	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1092	</td>	<td>	Nursery Manual; for Species- Commonly used in Social Forestry in India	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1093	</td>	<td>	Nursery Manual; for Species- Commonly used in Social Forestry in India	</td>	<td>	A.K. Banerjee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1094	</td>	<td>	Nursery Manual; for Species- Commonly used in Social Forestry in India	</td>	<td>	A.K. Banerjee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1095	</td>	<td>	Nursery Manual; Propagation -Methods for tree Species	</td>	<td>	D.M. Bhat	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1096	</td>	<td>	Odyssey of Sandalwood Tree	</td>	<td>	S.P. Rayachaudhuri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1097	</td>	<td>	Office Procedures	</td>	<td>	Muthu Swamy	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1098	</td>	<td>	Oh, life  relax please	</td>	<td>	Swami Sukhabodhananda 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1099	</td>	<td>	Oh, mind relax please	</td>	<td>	Swami Sukhabodhananda 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1100	</td>	<td>	Oil Curing Technology for Value Added Rattan (Cane) Products	</td>	<td>	T.K. Dhamodaran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1101	</td>	<td>	Olive Kidley Sea Thrutle	</td>	<td>	Bivash Pandav	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1102	</td>	<td>	On Jim Corbett's Trail	</td>	<td>	A.J.T. John Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1103	</td>	<td>	Oracle 8i, a Beginner's Guide	</td>	<td>	Michael Abbey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1104	</td>	<td>	Orchids	</td>	<td>	S.N. Hegde	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1105	</td>	<td>	Organization Development	</td>	<td>	Preeti Oberoi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1106	</td>	<td>	Organizational Behavior 	</td>	<td>	O. Jelt Harris	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1107	</td>	<td>	Oshadhi 2006 Expo Directry 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1108	</td>	<td>	Oshadhi Darshani	</td>	<td>	Dr. K.P. Srivasuki, IFS	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	1109	</td>	<td>	Our Environment 	</td>	<td>	Laccq Futehally	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1110	</td>	<td>	Our Herbal Heritage	</td>	<td>	V.K. Mohan	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1111	</td>	<td>	Our Magnificent Wildlife 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1112	</td>	<td>	Our Trees	</td>	<td>	CEE	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1113	</td>	<td>	Our Trees	</td>	<td>	K.P.N. Sinha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1114	</td>	<td>	Our Trees	</td>	<td>	R.P.N. Sinha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1115	</td>	<td>	Out door Training 	</td>	<td>	Bill Krouwel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1116	</td>	<td>	Over 300 Great Lives 	</td>	<td>	K. Ajay Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1117	</td>	<td>	Oxford Atlas of the Natural World	</td>	<td>	Robert Muir Wood	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1118	</td>	<td>	Oxford English	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1119	</td>	<td>	Palms of Kerala	</td>	<td>	C. Renuka	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1120	</td>	<td>	Palnning Wildlife Management in Protected Areas and Managed Landscapes 	</td>	<td>	Viswas B. Sawarkar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1121	</td>	<td>	Pantions Betaninical Dictionary 	</td>	<td>	Samuel - Hedeman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1122	</td>	<td>	PAO (Works Accounts) Manual	</td>	<td>	Finance & Planning	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1123	</td>	<td>	Papermaking systems and their contol; in to volumes-I	</td>	<td>	Francies Ballam 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1124	</td>	<td>	Papermaking systems and their contol; in to volumes-II	</td>	<td>	Francies Ballam 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1125	</td>	<td>	Parichary	</td>	<td>	-	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1126	</td>	<td>	Parichay	</td>	<td>	-	</td>	<td>	52	</td>	</tr> 
<tr> 	<td>	1127	</td>	<td>	Part - 1 Vilage Physician	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1128	</td>	<td>	Part - 2 Vilage Physician	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1129	</td>	<td>	Part-2: Mammals	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1130	</td>	<td>	Part-3: Lichens	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1131	</td>	<td>	Part-4 : Bryophytes	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1132	</td>	<td>	Part-5 : Pteridophytes 	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1133	</td>	<td>	Part-7: Insects	</td>	<td>	George Mathew	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1134	</td>	<td>	Part-9: Amphibians	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1135	</td>	<td>	Part-I: Algae	</td>	<td>	P.S.Easa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1136	</td>	<td>	Participatory integrated watershed management  a field manual	</td>	<td>	V.N. Shardan	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1137	</td>	<td>	Participatory Training: A Book of Readings 	</td>	<td>	-	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	1138	</td>	<td>	Participatory Workshops 	</td>	<td>	Robert Chambers 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1139	</td>	<td>	Partnerships for Sustainable energy development in India 	</td>	<td>	TERI	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1140	</td>	<td>	Patents 	</td>	<td>	N.R. Subbaram	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1141	</td>	<td>	Patents myths & redity 	</td>	<td>	Vandana Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1142	</td>	<td>	Pathology in Forest Practice	</td>	<td>	Dow Vawter Baxter	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1143	</td>	<td>	Peacock	</td>	<td>	Ajit Kumar Mukherjee	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1144	</td>	<td>	People Management Changing perceptions and practices	</td>	<td>	ICFAI	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1145	</td>	<td>	People, Parks & Wildlife	</td>	<td>	Vasand Saberdal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1146	</td>	<td>	People, Parks & Wildlife	</td>	<td>	Vasant Saberwal Mahesh Rangarajan Ashus Kothari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1147	</td>	<td>	Performanance Management 	</td>	<td>	Sumati Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1148	</td>	<td>	Perils of Pesticides	</td>	<td>	Mukund Jarhi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1149	</td>	<td>	Personal Investment & Tax Planning Year Book 1993-94	</td>	<td>	N.J. Yasaswy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1150	</td>	<td>	Personality Development 	</td>	<td>	J.L. Bhat 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1151	</td>	<td>	Personality Development 	</td>	<td>	S.P. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1152	</td>	<td>	Personality Development Course 	</td>	<td>	P.K. Arya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1153	</td>	<td>	Personality Plus 	</td>	<td>	F. Littauer	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1154	</td>	<td>	Personality Plus 	</td>	<td>	Florence L	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1155	</td>	<td>	Perspectives in Environment 	</td>	<td>	S.K. Agrwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1156	</td>	<td>	Pesticides, Livelihoods and Women's Health	</td>	<td>	Miriam Jacobs	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1157	</td>	<td>	Petrology for Students	</td>	<td>	S.R. Nockolds	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1158	</td>	<td>	Pheasants of India	</td>	<td>	Kunwar Raghavendra Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1159	</td>	<td>	Pheasants of India	</td>	<td>	WII, Kunwar Raghavendra Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1160	</td>	<td>	Pheasants of India	</td>	<td>	World Pheasant Assaiation India	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1161	</td>	<td>	Pheashants of India	</td>	<td>	WII	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1162	</td>	<td>	Physical Geology 	</td>	<td>	Kenneth S. Deffeyes	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1163	</td>	<td>	Physical, Human and Economic Geography	</td>	<td>	S. Anand	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1164	</td>	<td>	Physiological Aspects of Dry land Farming	</td>	<td>	U.S. Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1165	</td>	<td>	Physiological Plant Ecology (3E)	</td>	<td>	Water Larcher	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1166	</td>	<td>	Planned Management of Forests	</td>	<td>	N.V. Bhasnett	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1167	</td>	<td>	Planning Time	</td>	<td>	Kate Keenan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1168	</td>	<td>	Planning Wildlife Management in Protected areas and Managed Land Scapes 	</td>	<td>	Vishwas B. Sswarkar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1169	</td>	<td>	Plant Biodiversity of World	</td>	<td>	Malawai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1170	</td>	<td>	Plant Breeding	</td>	<td>	B.D. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1171	</td>	<td>	Plant Diversification	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1172	</td>	<td>	Plant Earth	</td>	<td>	D. James Baker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1173	</td>	<td>	Plant Ecology	</td>	<td>	John. E. Weaver	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1174	</td>	<td>	Plant Form & Function	</td>	<td>	F.E. Fritsch	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1175	</td>	<td>	Plant Issue Culture Practice 	</td>	<td>	V.K. Channa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1176	</td>	<td>	Plant Nurseries; Techniques, Production & Management 	</td>	<td>	V.K. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1177	</td>	<td>	Plant Physiology	</td>	<td>	"Salisbury B. Ross
(DONATED)"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1178	</td>	<td>	Plant Propagation	</td>	<td>	M.K. Sadhu	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1179	</td>	<td>	Plant Propagation 	</td>	<td>	Hudson 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1180	</td>	<td>	Plant Propagation; Principles and Practices 	</td>	<td>	Hudson T. Hartman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1181	</td>	<td>	Plant Reproduction; Genetics and Biology	</td>	<td>	R.N. Gohil	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1182	</td>	<td>	Plant Science	</td>	<td>	R. Parker	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1183	</td>	<td>	Plant Tissue Culture 	</td>	<td>	A.S. Islam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1184	</td>	<td>	Plantation and Nursery Technique of Forest Trees	</td>	<td>	Ram Prakash	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1185	</td>	<td>	Plantation Bamboo	</td>	<td>	P. Shunmughavel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1186	</td>	<td>	Plantation Crops	</td>	<td>	K.V. Peter	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1187	</td>	<td>	Plantation Forestry in India	</td>	<td>	R.K. Luna, IFS.,	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1188	</td>	<td>	Plantation Trees	</td>	<td>	R.K. Luna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1189	</td>	<td>	Plants for Environmental conservation	</td>	<td>	Raj Kumar Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1190	</td>	<td>	Plants for Reclamation of Westelands	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1191	</td>	<td>	Plants for small Garden	</td>	<td>	Frances Welland	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1192	</td>	<td>	Policy and Practice in the management of Tropical watersheds	</td>	<td>	H.C. Periar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1193	</td>	<td>	Policy Interventation Analysis Environmental Impact Assessment 	</td>	<td>	Ritu Paliwal Srivastava	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1194	</td>	<td>	Policy Intervention Analysis 	</td>	<td>	Ritu Paliwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1195	</td>	<td>	Popular Hand Book of Indian Birds	</td>	<td>	Hugh Whistler	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1196	</td>	<td>	Population, Environment and Health, Emerging Issues 	</td>	<td>	K.N. Bhatta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1197	</td>	<td>	Positive Attitude 	</td>	<td>	Ravi Shekhar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1198	</td>	<td>	Positive Thinking 	</td>	<td>	SP Sharma 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1199	</td>	<td>	Poverty (Issues in EconomicDevelopment)	</td>	<td>	V.S. Sakalya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1200	</td>	<td>	Power through People and Principles	</td>	<td>	Vipen Kapur	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1201	</td>	<td>	Practical Forestry 	</td>	<td>	A.D. Webster	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1202	</td>	<td>	Practical Ways to Powerful Personality 	</td>	<td>	George Weinberg	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1203	</td>	<td>	Precipitation Process and Analysis 	</td>	<td>	Graharm Sumner	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1204	</td>	<td>	Preservative Treatment of Bamboo and Bamboo Products	</td>	<td>	R. Gnanaharan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1205	</td>	<td>	Prevalent Weed Flora in Peninsulav of India	</td>	<td>	R.A. Raju	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1206	</td>	<td>	Principles & Techniques	</td>	<td>	B.B. goel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1207	</td>	<td>	Principles and Pracices Range Management 	</td>	<td>	R.B. Lal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1208	</td>	<td>	Principles and Practice of Silviculture	</td>	<td>	L.S. Khanna	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	1209	</td>	<td>	Principles and Practices of India Silculture 	</td>	<td>	A.P. Dwivedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1210	</td>	<td>	Principles and Practices of Range Management	</td>	<td>	R.B. Lal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1211	</td>	<td>	Principles of Environmental Conservation	</td>	<td>	H.S. Singh	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1212	</td>	<td>	Principles of Fruit Culture	</td>	<td>	B.S. Chundawat	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1213	</td>	<td>	Principles of Geographical information systems	</td>	<td>	A. Burvough (Donated) 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1214	</td>	<td>	Principles of Geographical information systems	</td>	<td>	Pater A. Burbough	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1215	</td>	<td>	Principles of Operations Research (Second Edition)	</td>	<td>	Harvey M. Wagner	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1216	</td>	<td>	Principles of Seed Technology	</td>	<td>	P.K. Agrawal 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1217	</td>	<td>	Principles of Vegetable Production	</td>	<td>	S.P. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1218	</td>	<td>	Principles of Weed Science - 2nd Edition	</td>	<td>	V.S. Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1219	</td>	<td>	Pririties and Strategies for Education 	</td>	<td>	W.B.P	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1220	</td>	<td>	Proceedings National Workshop on Medicinal Plants	</td>	<td>		</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1221	</td>	<td>	Production and Marketing of Forest Produce	</td>	<td>	P. Subramanyam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1222	</td>	<td>	Production and Operationas Management 	</td>	<td>	"K. Aswathappa 
(DONATED)"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1223	</td>	<td>	Production Technology and Management of Agroforestry models	</td>	<td>	Sanjeev K. Chauhan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1224	</td>	<td>	Profitable Forestry	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1225	</td>	<td>	Project Based Learning 	</td>	<td>	Bryan Smith	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1226	</td>	<td>	Project report 10 weeks Training programme Remote sensing, Oct 1994	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1227	</td>	<td>	Project Report on Performance Apprcisal at A.P. Forest Academy  	</td>	<td>	S. Navaitha 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1228	</td>	<td>	Project Report on Training and Development at A.P. Forest  Department  	</td>	<td>	G. S. Venkat Ramana Rao 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1229	</td>	<td>	Project Tiger	</td>	<td>	Taskforce	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1230	</td>	<td>	Propagation of Plants	</td>	<td>	V.K. Sharma 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1231	</td>	<td>	Prosperity Through Trees	</td>	<td>	V.K. Sharma 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1232	</td>	<td>	Protected Areas Network of A.P	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1233	</td>	<td>	Protected Areas Network of Andhra Pradesh	</td>	<td>		</td>	<td>	20	</td>	</tr> 
<tr> 	<td>	1234	</td>	<td>	Protection of Rattan Against Fungal Staining and Biodertioration	</td>	<td>	C. Mohanan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1235	</td>	<td>	Provident Funds Manual 	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1236	</td>	<td>	Public Relations 	</td>	<td>	H. Frazier Moore	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1237	</td>	<td>	Public Relations Practices 	</td>	<td>	Allen H. Center	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1238	</td>	<td>	Public Relations Techniques that works 	</td>	<td>	Jim Durn	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1239	</td>	<td>	Quality Control Methods for Medicinal Plant Materials	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1240	</td>	<td>	Raastreeya Kaary Yojan Samhithi 2014 (HINDI) 	</td>	<td>	-	</td>	<td>	25	</td>	</tr> 
<tr> 	<td>	1241	</td>	<td>	Ramayana	</td>	<td>	B.R. Kishore	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1242	</td>	<td>	Range Management	</td>	<td>	S.S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1243	</td>	<td>	Ranthmbore Adventure	</td>	<td>	Deepak Dalal	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1244	</td>	<td>	Rapid Assessement Survey of Medicinal Plants in Andhra Pradesh	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1245	</td>	<td>	Rattans of the Western Ghats A Taxonomic Manual	</td>	<td>	C. Renuka	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1246	</td>	<td>	Record on 60 Years of DM2 History & Ecosystem	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1247	</td>	<td>	Reduced to Skin and Bones 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1248	</td>	<td>	Reducing Rural Poverty in Asia	</td>	<td>	Nural Islam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1249	</td>	<td>	Reflection on Laws and Institutions 	</td>	<td>	G. Rama Chandra Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1250	</td>	<td>	Reform Forward (2 Books)	</td>	<td>	G. Rama Chandra Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1251	</td>	<td>	Regional Directory on Best Technology Packages Standardised in Forestry	</td>	<td>	V. Bhaskar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1252	</td>	<td>	Regional Forestry Research Centre Mulugu	</td>	<td>	Donated	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1253	</td>	<td>	Regreening Our Earth	</td>	<td>	Col.C.P. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1254	</td>	<td>	Reminiseences of A Hunter	</td>	<td>	C.N. Ramachandran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1255	</td>	<td>	Reminisunces of A Hunter 	</td>	<td>	K. Jattappa Rai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1256	</td>	<td>	Remote Sensing and Geographical	</td>	<td>	M. Anji Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1257	</td>	<td>	Remote Sensing and Geographical Information Systems 	</td>	<td>	M. Anji Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1258	</td>	<td>	Remote Sensing and GIS	</td>	<td>	B. Bhatta	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1259	</td>	<td>	Remote Sensing and image interpretation 	</td>	<td>	T.M. Lillesand 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1260	</td>	<td>	Remote sensing of the Environment	</td>	<td>	John. R. Jensen	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1261	</td>	<td>	Remote Sensing of the Mimalaya	</td>	<td>	M.A. Kawosa	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1262	</td>	<td>	Renewable Energy in the Sundarbans	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1263	</td>	<td>	Research on Multipurpose tree species in Asia	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1264	</td>	<td>	Revenue Dictionary -English-Telugu	</td>	<td>	Pedala Rama Reddy	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1265	</td>	<td>	Road Atlas of "Andhra Pradesh"	</td>	<td>	Editorial Staff TTK Maps	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1266	</td>	<td>	Roads Sensitive Habitats and Wildlife	</td>	<td>	Asha Rajvamshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1267	</td>	<td>	Roar your way to Excellence	</td>	<td>	Swami Sukhabodhananda 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1268	</td>	<td>	Root Trainer Technology for Mass Production  of Clonal Planting Stock 	</td>	<td>	J.K. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1269	</td>	<td>	Rortanted & Dhirajlas the Laws of Evidance	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1270	</td>	<td>	Running Meetings	</td>	<td>	Kate Keenan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1271	</td>	<td>	Rural Credit and Self- Help Groups	</td>	<td>	K. G. Karnakar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1272	</td>	<td>	Rural Energy 	</td>	<td>	Dr. Veena	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1273	</td>	<td>	Rural Energy Crisis	</td>	<td>	Hemlata Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1274	</td>	<td>	Rural Energy for Sustainable Development Technology and Environmental Issues	</td>	<td>	Pradeep Chaturvedi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1275	</td>	<td>	Rural Energy matters	</td>	<td>	Dhamawas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1276	</td>	<td>	Rural Waste Management	</td>	<td>	AC. Varshney	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1277	</td>	<td>	Rusk in Bands	</td>	<td>	Pungivir	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1278	</td>	<td>	Sacred Graves of Tamilnadu-A Survey 	</td>	<td>	M. Amirthalingam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1279	</td>	<td>	Sacred Trees of Tamilnadu	</td>	<td>	M. Amirthalingam 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1280	</td>	<td>	Safe guarding Environment 	</td>	<td>	Indira Gandhi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1281	</td>	<td>	Sales Tax on works & Lease Contracts in A.P	</td>	<td>	TVR Satya prasad 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1282	</td>	<td>	Sampling Methods and Censuses	</td>	<td>	S.S. Zarkovich	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1283	</td>	<td>	Sapiens A Brief History of Humankind 	</td>	<td>	Yuval Noah Harari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1284	</td>	<td>	Sapling Techniques	</td>	<td>	William G. Cochram	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1285	</td>	<td>	Sarveying and Levelling, Part-2	</td>	<td>	T.P. Kanetkar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1286	</td>	<td>	Savaging the civilized 	</td>	<td>	Ramachandra Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1287	</td>	<td>	Save Forest and Wildlife	</td>	<td>	A.N. Chaturvedi, IFS (Rtd)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1288	</td>	<td>	Saving Wild Tigers (1900-2000)	</td>	<td>	Valmile Thaqar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1289	</td>	<td>	Science and Business of Carbon Forestry	</td>	<td>	H.S. Gupta & M. Yadav	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1290	</td>	<td>	Science Teaching in Schools 	</td>	<td>	Narendera Valdya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1291	</td>	<td>	Scientific Inforamtion on Gulf of Mannar - A Bibiography  	</td>	<td>	A.K. Kumaraguru	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1292	</td>	<td>	Scientific Nursery Management (Fruits and Ornamental Plants)	</td>	<td>	Y.T.N. Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1293	</td>	<td>	Seasonal Gardening Guide	</td>	<td>	Sita Raind	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1294	</td>	<td>	Secrets of Leadership 	</td>	<td>	Luis S.R. Vas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1295	</td>	<td>	Secrets of the Corporate Jungle	</td>	<td>	Shirley Peddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1296	</td>	<td>	Seed Analyst Manual	</td>	<td>	M.M. Verma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1297	</td>	<td>	Seed System Innvovations in the Semi - Arid Tropics of Andhra Pradesh 	</td>	<td>	Ch. Ravinder Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1298	</td>	<td>	Seeding and Plantation in the Practice of Forestry	</td>	<td>	The Late James	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1299	</td>	<td>	Seeds of Plenty, Seeds of want Social and Economic Implimentations of the Green Revolution 	</td>	<td>	Andrew Pearse	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1300	</td>	<td>	Selected Essays of Harles Land	</td>	<td>	K.G. Seshadri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1301	</td>	<td>	Selected Essays of William	</td>	<td>	M.G. Gopala Krishna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1302	</td>	<td>	Selected Letters 	</td>	<td>	K. Malik 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1303	</td>	<td>	Selected Stories 	</td>	<td>	Anton Chekhov	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1304	</td>	<td>	Selecting People	</td>	<td>	Kate Keenan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1305	</td>	<td>	Seniors and Natrition	</td>	<td>	CBS Publication	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1306	</td>	<td>	Shades of Green	</td>	<td>	Sagar Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1307	</td>	<td>	Shakespeares Sonnets 	</td>	<td>	Saraswathi R. Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1308	</td>	<td>	Shifting Cultivation	</td>	<td>	L.K. Jha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1309	</td>	<td>	Shurbs and their cultivation	</td>	<td>	T.C. Mansfield 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1310	</td>	<td>	Sicence and Conservation of Wildlife Populations	</td>	<td>	K. Villas Karanth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1311	</td>	<td>	Silvicultural Systems	</td>	<td>	R.S. Troup	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1312	</td>	<td>	Silviculture of Indian Trees	</td>	<td>	S.S. Negi	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1313	</td>	<td>	Silviculture Systems	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1314	</td>	<td>	Silvicultute & Management of Teak	</td>	<td>	K. Kadambi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1315	</td>	<td>	Silvopasture Management in Hot Arid and semi-Arid Ecosystems	</td>	<td>	N.K. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1316	</td>	<td>	Sixty Indian Birds	</td>	<td>	R.S. Dharma, Kumarsinji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1317	</td>	<td>	Skills for Excellence	</td>	<td>	Luis S.R. Vas	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1318	</td>	<td>	Small Customers, Big Market: Commercial Banks in Micro Finance	</td>	<td>	Malcolm Harper	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1319	</td>	<td>	Snakes of India	</td>	<td>	P.J. Deoras	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1320	</td>	<td>	Snakes of the World	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1321	</td>	<td>	Social Forestry & Forest Development Planning	</td>	<td>	L. Robin Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1322	</td>	<td>	Social Forestry and Forest Management, Vol-I	</td>	<td>	S.K. Ghosh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1323	</td>	<td>	Social Forestry and Forest Management, Vol-II	</td>	<td>	S.K. Ghosh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1324	</td>	<td>	Social Forestry for Rural Development	</td>	<td>	K.M. Tiwari	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1325	</td>	<td>	Social Forestry Hand book for Orissa	</td>	<td>	L.K. Patnaik	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1326	</td>	<td>	Social Forestry in India	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1327	</td>	<td>	Social Success 	</td>	<td>	Dr. Sanjay Mukerjis 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1328	</td>	<td>	Socio Economic Reaserch in Forestry	</td>	<td>	S. Chand Basha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1329	</td>	<td>	Soil & Noise, Pollution	</td>	<td>	Manjula Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1330	</td>	<td>	Soil and Water Conservation Research in India	</td>	<td>	V.V. Dhruva Narayana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1331	</td>	<td>	Soil Chemical Analysis 	</td>	<td>	M.L. Jackson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1332	</td>	<td>	Soil Conservation 	</td>	<td>	Hugh Hammand 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1333	</td>	<td>	Soil Conservation (2E)	</td>	<td>	Norman Hudson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1334	</td>	<td>	Soil Conservation and Land Management	</td>	<td>	S.K. Datta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1335	</td>	<td>	Soil Conservation Extension from concepts to Adoption	</td>	<td>	Samran Sombatpanit	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1336	</td>	<td>	Soil Erosion - Its Prevention and control	</td>	<td>	Govt. of Madras	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1337	</td>	<td>	Soil Ferttility; Theory and Practice	</td>	<td>	J.S. Kannwar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1338	</td>	<td>	Soil Fungi and Soil Fertility 	</td>	<td>	S.D. Garrett	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1339	</td>	<td>	Soil Survey Manual	</td>	<td>	Soil Survey Staff	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1340	</td>	<td>	Soils inour Environment (7E)	</td>	<td>	Ray mond.F	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1341	</td>	<td>	Soils of India	</td>	<td>	S.P. Ray Chaudhury	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1342	</td>	<td>	Soils; An Introduction to soils and plant growth (5 Edition)	</td>	<td>	L. Donahue	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1343	</td>	<td>	Some Beautiful Indian Climbers & Shurbs	</td>	<td>	N.L. Borl, M.B. Raizaad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1344	</td>	<td>	Some Beautiful Indian Trees (2E)	</td>	<td>	E. Blatter	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1345	</td>	<td>	Some South Indian Insects	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1346	</td>	<td>	Sorry Doctor IM Healthy 	</td>	<td>	SS. Cheema	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1347	</td>	<td>	South - Cast Asia	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1348	</td>	<td>	Southern Forest Types of India	</td>	<td>	Harry G. Champion	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1349	</td>	<td>	Speak up and be heard 	</td>	<td>	P.P. Laisram	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1350	</td>	<td>	Speaking of Fitness over 40	</td>	<td>	Dr. Walter Noder	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1351	</td>	<td>	Srimad Bhagavid-Gita	</td>	<td>	Swami Swarupanand	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1352	</td>	<td>	Srimad Bhagavid-Gita	</td>	<td>	Swami Verswara Nanda	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1353	</td>	<td>	Srisailam Tigers Roar Again	</td>	<td>	D.S. Ganga khedkar, IFS	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1354	</td>	<td>	Stastistical Methods	</td>	<td>	S.P. Gupts	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1355	</td>	<td>	State and Subordinate Service Rules	</td>	<td>	D.M. Raju	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1356	</td>	<td>	State of Forest Report 1990	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1357	</td>	<td>	State of Forest Report 1999	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1358	</td>	<td>	State of Forest Report 2001	</td>	<td>	-	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1359	</td>	<td>	State of Forest Report 2003	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1360	</td>	<td>	State of the World	</td>	<td>	Lester R. Brown	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1361	</td>	<td>	State of the world 1991	</td>	<td>	R. Brown	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1362	</td>	<td>	Status of NTFP in Tamilnadu	</td>	<td>	R. Guna Sekaran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1363	</td>	<td>	Status Report on Medicinal Plants for Nam countries Dec-1992	</td>	<td>	Dr. Akhtar Hussain	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1364	</td>	<td>	Stop Worrying and Start Living 	</td>	<td>	Dale Carnegic	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1365	</td>	<td>	Strange Plants	</td>	<td>	Parull R. Sheth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1366	</td>	<td>	Strategic Management 	</td>	<td>	P. Mohan Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1367	</td>	<td>	Strenthening Resiliance in post-disaster situations 	</td>	<td>	Julian Gonsalves 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1368	</td>	<td>	Stress	</td>	<td>	A Bhardwaj	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1369	</td>	<td>	Stress and Nutrition 	</td>	<td>	CBS 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1370	</td>	<td>	Stress Management 	</td>	<td>	Ajay Shukla	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1371	</td>	<td>	Stress Management 	</td>	<td>	Swami Sukha Bodha Nanda	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1372	</td>	<td>	Stress Relief games 	</td>	<td>	Robert Epstein	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1373	</td>	<td>	Stretching for fitness, Health & performance	</td>	<td>	Dr. Chirstopher	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1374	</td>	<td>	Structural Geology (3E)	</td>	<td>	Marland	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1375	</td>	<td>	Structure and Properties of south Indian Rattans 	</td>	<td>	K.M. Bhat	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1376	</td>	<td>	Studies of the Identification of Timbers	</td>	<td>	Alexander	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1377	</td>	<td>	Study & Practice of Wildlife Laws in India	</td>	<td>	Surender Mehra	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1378	</td>	<td>	Study Material; Training Programme on Environmental Protection and Sustainable Development 	</td>	<td>	Taradatt	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1379	</td>	<td>	Study on Impact of InnovativeMethods for Improving Training Effectiveness 	</td>	<td>	M.S.G Shalini 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1380	</td>	<td>	Succeed and Grow Rich through persuasion 	</td>	<td>	Napoleon Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1381	</td>	<td>	Success is never Ending failure is never final 	</td>	<td>	Robort H. Schuller	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1382	</td>	<td>	Successful Presentation in a week 	</td>	<td>	Malcolm Peel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1383	</td>	<td>	Successful Problem Solving 	</td>	<td>	Matthew Mckay	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1384	</td>	<td>	Supplement to cultivation & utilization of Medicinal plants	</td>	<td>	RN Chopra IC. Chopra & B.S. Varma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1385	</td>	<td>	Supplement to cultivation & utilization of Medicinal plants	</td>	<td>	S.S. Handa & M.K. Kaul	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1386	</td>	<td>	Supplement to the A.P. Local Acts -Vol-II	</td>	<td>	M.L. Jindal	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1387	</td>	<td>	Supreme Court on Discipline, Disciplenery Proceedings and other issues	</td>	<td>	A.K. Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1388	</td>	<td>	Supreme Court on Forest Conservation	</td>	<td>	Ritwick Dutta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1389	</td>	<td>	Supreme Court on Forest Conservation	</td>	<td>		</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1390	</td>	<td>	Sure Success in Interviews 	</td>	<td>	Jayant Neogy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1391	</td>	<td>	Survey of the Environment - 2000 "The Hindu"	</td>	<td>		</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1392	</td>	<td>	Survival Strategies 	</td>	<td>	Raghavavendra Gadagkar	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1393	</td>	<td>	Sustainable Development of the Bamboo and Rattan Sectors in Tropical China	</td>	<td>	Zhu Zhaohua	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1394	</td>	<td>	Sustainable Management of Forests India	</td>	<td>	A. Arunachalam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1395	</td>	<td>	Sustainable Management of Natural Resources	</td>	<td>	"T. N. Khoshoo, 
Manju Sharma"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1396	</td>	<td>	Symposium man and Forests in India	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1397	</td>	<td>	Talent Management Vol-I	</td>	<td>	VV. Ramani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1398	</td>	<td>	Tales from the Indian Jungle	</td>	<td>	Kenneth Anderson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1399	</td>	<td>	Tamil Nadu Tourist Guide & Map 	</td>	<td>	IMS	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1400	</td>	<td>	Tax Planning for Non- Resident Indians	</td>	<td>	R. N. Lakhotia	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1401	</td>	<td>	Taxnomy of Bamboos	</td>	<td>	P.E. Bedell	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1402	</td>	<td>	Taxonomy of Angiosporns 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1403	</td>	<td>	Teaching of Science & Life 	</td>	<td>	L.M. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1404	</td>	<td>	Teak (Tectona grandis) Farming	</td>	<td>	K.K. Jha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1405	</td>	<td>	Teak Proceding of the International Teak Symposium	</td>	<td>	S. Chandra Basha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1406	</td>	<td>	Team Building 	</td>	<td>	SS. Kaptan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1407	</td>	<td>	Team Games for Trainers 	</td>	<td>	Tata Mcgraw-Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1408	</td>	<td>	Team Work	</td>	<td>	Sumati Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1409	</td>	<td>	Team work in Practice 	</td>	<td>	Alison Hardingham	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1410	</td>	<td>	Team Workout 	</td>	<td>	Glenn Parker 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1411	</td>	<td>	Techniques in Forestry 	</td>	<td>	P. Shanmughavel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1412	</td>	<td>	Technologies for Wasteland Development	</td>	<td>	I.D. Abrol	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1413	</td>	<td>	Technology Communication and Audio Visual Aids in Extension	</td>	<td>	V. Venkata Subramanyam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1414	</td>	<td>	Telangana State Biodiversity Field Guide	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1415	</td>	<td>	Telangana State of Forest Report 2014	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1416	</td>	<td>	Telangana State of Forest Report 2015	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1417	</td>	<td>	Ten Thousand miles on elephants 	</td>	<td>	Olive Smythies	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1418	</td>	<td>	Teri Energy Environment Data Diary and Year Book 2016/17	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1419	</td>	<td>	Terva Green	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1420	</td>	<td>	Text Book of Botany	</td>	<td>	P.C. Vashishta	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1421	</td>	<td>	Text Book of Environmental Studies for UG	</td>	<td>	Erach Bharucha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1422	</td>	<td>	Text Book of Forest Tree Breeding 	</td>	<td>	C. Surendran	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1423	</td>	<td>	"Text book of Forest Utilization 
(Wood and Non-wood forest products)"	</td>	<td>	S.S. Negi	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1424	</td>	<td>	"Text book of Forest Utilization
 (Wood and Non-wood forest products)"	</td>	<td>	Tribhavan Mehta	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1425	</td>	<td>	"Text book Wildlife Management 
(second edition)"	</td>	<td>	SK. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1426	</td>	<td>	Textbook of Agroforestry	</td>	<td>	B.S. Chundwat	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1427	</td>	<td>	Thai Land 	</td>	<td>	Joe Commings 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1428	</td>	<td>	The 48 Laws of Power	</td>	<td>	Robert Greene	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1429	</td>	<td>	The A. P Budget manual 	</td>	<td>	Gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1430	</td>	<td>	The A. P. Government Employees Loans, Medical Attendance and Family Welfare Code 	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1431	</td>	<td>	The A. P. Provident Funds Manual	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1432	</td>	<td>	The A. P. Revised Pension Rules 1980	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1433	</td>	<td>	The A.P. Board of Revinue Standing Orders Volume-I	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1434	</td>	<td>	The A.P. Board of Revinue Standing Orders Volume-II	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1435	</td>	<td>	The A.P. Financial Code Volume- I	</td>	<td>	Gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1436	</td>	<td>	The A.P. Fundamental Rules& Subsidiary Rules	</td>	<td>	Padala Rami Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1437	</td>	<td>	The A.P. Government Employees Laws Medical Attendance and Family Welfare Code	</td>	<td>	Padala Rami Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1438	</td>	<td>	The A.P. State Subordinate Service Rules 1996 & The A.P. Ministerial Service Rules 1998	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1439	</td>	<td>	The A.P. Trasury Code Volume-1	</td>	<td>	gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1440	</td>	<td>	The Administrative Tribunals Act 1980	</td>	<td>	A. S. Ramachandra Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1441	</td>	<td>	The Air (Prevention and control of Pollution) Act 1981	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1442	</td>	<td>	"The All India Services Manual 
(In 2 Volumes) Vol. 2"	</td>	<td>	S.C. Sarkar's	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1443	</td>	<td>	The Andhra Pradesh Accounts Code	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1444	</td>	<td>	The Andhra Pradesh Budget Manual 	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1445	</td>	<td>	"The Andhra Pradesh Civil Services Code 
(In 4 volumes) -Vol. I"	</td>	<td>	Padala Rama Reddi's	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1446	</td>	<td>	The Andhra Pradesh Civil Services Code (5E) 1987 Vol. 2	</td>	<td>	Padala Rama Reddi's	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1447	</td>	<td>	The Andhra Pradesh Civil Services Code (5E) 1987 Vol. 3	</td>	<td>	Padala Rama Reddi's	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1448	</td>	<td>	The Andhra Pradesh Civil Services Code (5E) 1987 Vol. 4	</td>	<td>	Padala Rama Reddi's	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1449	</td>	<td>	The Andhra Pradesh Financial Code	</td>	<td>	Padala Rami Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1450	</td>	<td>	The Andhra Pradesh Financial Code, Volume-1	</td>	<td>	Gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1451	</td>	<td>	The Andhra Pradesh Forest Act 1967	</td>	<td>		</td>	<td>	14	</td>	</tr> 
<tr> 	<td>	1452	</td>	<td>	The Andhra Pradesh Forest Department Code. Vol. I	</td>	<td>	T.V. Ranharajan	</td>	<td>	12	</td>	</tr> 
<tr> 	<td>	1453	</td>	<td>	The Andhra Pradesh Fundamentals Rules & Subsidiary Rules	</td>	<td>	Padala Rami Reddy	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1454	</td>	<td>	The Andhra Pradesh Pension  Code, 18 Volumes	</td>	<td>	Padala Rami Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1455	</td>	<td>	The Andhra Pradesh Provident Funds Manual	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1456	</td>	<td>	The Andhra Pradesh Revised Pension Rules 1980	</td>	<td>	Gade Veera Reddy 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1457	</td>	<td>	The Andhra Pradesh Revised Pension Rules 1980	</td>	<td>	Panchyat Publications	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1458	</td>	<td>	The Andhra Pradesh Treasury  Code	</td>	<td>	Padala Rami Reddy	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1459	</td>	<td>	The Art of Happiness	</td>	<td>	H.H. Dalia Lama	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1460	</td>	<td>	The Art of Nagarjuni Konda	</td>	<td>	P.R. Ramacandra Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1461	</td>	<td>	The Art of Studying 	</td>	<td>	Yendamoori Veerandra Nath	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1462	</td>	<td>	The Asian Elephant A Natural History	</td>	<td>	J.C. Daniel	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1463	</td>	<td>	The Biological Diversity Act 2002 with Rules	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1464	</td>	<td>	The Biological Diversity Act. 2001 & Biological Diversity Rules 2004	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1465	</td>	<td>	The Biological Diversity Act. 2002 & Biological Diversity Rules 2004	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1466	</td>	<td>	The Biosphere	</td>	<td>	Ian K. Bralbury 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1467	</td>	<td>	The Black Panther of Sivanipalli	</td>	<td>	Kenneth Anderson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1468	</td>	<td>	The Book of Bamboo	</td>	<td>	David Farrelly	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1469	</td>	<td>	The Book of Indian Animals 	</td>	<td>	S.H. Parter	</td>	<td>	15	</td>	</tr> 
<tr> 	<td>	1470	</td>	<td>	The Book of Indian Birds	</td>	<td>	Salim Ali	</td>	<td>	26	</td>	</tr> 
<tr> 	<td>	1471	</td>	<td>	"The Book of Indian Reptils and 
Amphi Bians"	</td>	<td>	J.C. Daniel	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1472	</td>	<td>	The Book of Trees 	</td>	<td>	Risto Isomaki	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1473	</td>	<td>	The Book of Trees 	</td>	<td>	Risto Isomaki	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1474	</td>	<td>	The Butterflies sikkim Hialayas	</td>	<td>	Meena Haribal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1475	</td>	<td>	The Call of the man-eater	</td>	<td>	Kenneth Anderson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1476	</td>	<td>	The Call of the Wild White	</td>	<td>	Jack London	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1477	</td>	<td>	The Cats	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1478	</td>	<td>	The Cattle Trespass Act 1871	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1479	</td>	<td>	The Chain swa use and Maintence 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1480	</td>	<td>	"The Challenge of the Balance 
Hand Book of Statistice"	</td>	<td>	Anil Agarwal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1481	</td>	<td>	The Code of Criminal Procedure 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1482	</td>	<td>	The Combridge Encyclopedia of Ornithology	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1483	</td>	<td>	The Common Snakes India and Burma	</td>	<td>	W.H Cazaly	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1484	</td>	<td>	The complete Encyclopedia of trees and shrubs	</td>	<td>	Nico vermeaten	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1485	</td>	<td>	The Complete works of Swami Vivakananda	</td>	<td>	Vivakananda	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1486	</td>	<td>	The Constituion of India	</td>	<td>	P.M. Bakshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1487	</td>	<td>	The Decade and Beyond Evolving community State partnership	</td>	<td>	T.P. Singh	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1488	</td>	<td>	The Deer and the Tiger	</td>	<td>	George B. Schaller	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1489	</td>	<td>	The Development and implementation of Rule- Based Expert Systems	</td>	<td>	M.C. Graw Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1490	</td>	<td>	The Development of India's Forest Resources	</td>	<td>	Economic Branch of the FRI	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1491	</td>	<td>	The Discovery of Global Warming	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1492	</td>	<td>	The Discovery of India 	</td>	<td>	Jawaharlal nehru 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1493	</td>	<td>	The Ecology of Forest insects	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1494	</td>	<td>	The Economics of Coffee	</td>	<td>	J.de Graff	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1495	</td>	<td>	The End of Aging 	</td>	<td>	Carol Orlock	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1496	</td>	<td>	The Environment (Protection) Act 1986	</td>	<td>	A. Raja	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1497	</td>	<td>	The Environmental Activitives Hand book -I	</td>	<td>	Ritwik Dutta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1498	</td>	<td>	The Environmental Activitives Hand book -II	</td>	<td>	Ritwick Dutta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1499	</td>	<td>	The Environmental Economic-Revolution	</td>	<td>	Michael- Silverstein	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1500	</td>	<td>	The Face of the Tiger	</td>	<td>	Charles Me Dougal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1501	</td>	<td>	The Fall of a Sparrow	</td>	<td>	Salim Ali	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1502	</td>	<td>	The Fascinating Secrets of "Oceans & Islands"	</td>	<td>	William J. Cromic	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1503	</td>	<td>	The First Princile 	</td>	<td>	Bhagwan Shree Rajneesh (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1504	</td>	<td>	The Five Love Languages 	</td>	<td>	Gary Champman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1505	</td>	<td>	The Flora of British India Vol-I	</td>	<td>	J.D. Hooker	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1506	</td>	<td>	The Flowring Plants of KBR National Park	</td>	<td>	Dr G. ChandraShekar Reddy, IFS	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1507	</td>	<td>	The Forest Crises	</td>	<td>	Ghanshyam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1508	</td>	<td>	The Forest Crises	</td>	<td>	Ghanshyam Saxena	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1509	</td>	<td>	The Future of Progress 	</td>	<td>	Vandana Shiva	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1510	</td>	<td>	The Garden of Life 	</td>	<td>	Naveen Patnaik	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1511	</td>	<td>	The Gir	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1512	</td>	<td>	The Good Society	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1513	</td>	<td>	The greatress guide	</td>	<td>	Robin Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1514	</td>	<td>	The green guide to Environmental courses and careens	</td>	<td>	Megha Aggawal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1515	</td>	<td>	The Green House	</td>	<td>	John Pirer	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1516	</td>	<td>	The Greeting of Waste lands 	</td>	<td>	N.G. Hegde	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1517	</td>	<td>	The Heopard in India	</td>	<td>	J.C Daniel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1518	</td>	<td>	The Hidden Life of Trees	</td>	<td>	Peter Wohlleben	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1519	</td>	<td>	The High Lands of Central India	</td>	<td>	J. Forsyth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1520	</td>	<td>	The Hindu Survey of the Environment 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1521	</td>	<td>	The HRD Missionary 	</td>	<td>	T.V. Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1522	</td>	<td>	The Hyderabad Civil Services Rules Manual	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1523	</td>	<td>	The importance of Living 	</td>	<td>	Lin Yutang 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1524	</td>	<td>	The Income Tax Act 1961 43 of 1961	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1525	</td>	<td>	The India Forest Act 1927	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1526	</td>	<td>	The India Forester	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1527	</td>	<td>	The Indian Black Buck	</td>	<td>	M.K. Ranjit Sinh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1528	</td>	<td>	The Indian Forest Act 1927	</td>	<td>		</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	1529	</td>	<td>	The Indian Ginseng Ashwagandha	</td>	<td>	Sandhy Singh Sushil Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1530	</td>	<td>	The Indian Penal Code 1860	</td>	<td>	Padala Rami Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1531	</td>	<td>	The Inner Life of Animals 	</td>	<td>	Love, Grief	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1532	</td>	<td>	The Jim Corbett Omnibus	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1533	</td>	<td>	The Journey of my life 	</td>	<td>	T. Prakasam	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1534	</td>	<td>	"The Journey of my Life in the Wilderness 
(An Autobiogaphy)"	</td>	<td>	K.B. Reddy	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1535	</td>	<td>	The Kenneth Anderson Omnibus Vol-I	</td>	<td>	Kenneth Anderson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1536	</td>	<td>	The Last Frontier People and Forests in Mizoram	</td>	<td>	Daman Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1537	</td>	<td>	The Law of Success	</td>	<td>	Napoleon Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1538	</td>	<td>	The Leader in You	</td>	<td>	Dale Carnegie	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1539	</td>	<td>	The Little Sparrow 	</td>	<td>	Mohammed Ahsan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1540	</td>	<td>	The Living Animals of the World Vol-I	</td>	<td>	W.F. Kirby	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1541	</td>	<td>	The Living Animals of the World Vol-II	</td>	<td>	W.F. Kirby	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1542	</td>	<td>	The Living Animals of the World Vol-III	</td>	<td>	W.F. Kirby	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1543	</td>	<td>	The Living Animals of the World Vol-IV	</td>	<td>	W.F. Kirby	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1544	</td>	<td>	The Living World	</td>	<td>	Geroge & Johnson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1545	</td>	<td>	The Logical Adventure 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1546	</td>	<td>	The Magnificent Forests of Uttarakhand	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1547	</td>	<td>	The Mammlas 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1548	</td>	<td>	The Man eating Leopard of Rudra Prayag	</td>	<td>	Jim Corbett	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1549	</td>	<td>	The Management of Forests	</td>	<td>	F.C. Osmaston	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1550	</td>	<td>	The Management Too Kit	</td>	<td>	Sultan Kermally	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1551	</td>	<td>	The Men Who Rules India 	</td>	<td>	Philip Mason	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1552	</td>	<td>	The milk line to Hyderabad	</td>	<td>		</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1553	</td>	<td>	The Millionaire next Door 	</td>	<td>	Thomas J. Stanly 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1554	</td>	<td>	The Monk Who Sold his Ferrari	</td>	<td>	Robin Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1555	</td>	<td>	The Nature and Properties of Soils 	</td>	<td>	Harry O. Buckman	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1556	</td>	<td>	The Nature and properties of Soils (12E)	</td>	<td>	Nyle C. Brady	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1557	</td>	<td>	The Nature and properties of Soils (13E)	</td>	<td>	Nyle C. Brady	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1558	</td>	<td>	The Nature and Properties of Soils (9E)	</td>	<td>	Nyle C. Brady	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1559	</td>	<td>	The Nature of Biodiversity in India	</td>	<td>	Erach Bharucha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1560	</td>	<td>	The nector of Instruciton 	</td>	<td>	A.C.B.S. Prabhupada	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1561	</td>	<td>	The New Book of Knowledge	</td>	<td>	Grolver 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1562	</td>	<td>	The new Canbridge History of India	</td>	<td>	Susan Bayly	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1563	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia - Vol. 15	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1564	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia - Vol. 4	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1565	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia - Vol. 5	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1566	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia - Vol. 7	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1567	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia - Vol. 9	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1568	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia Vol-16	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1569	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia Vol-18	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1570	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia Vol-19	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1571	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia Vol-20	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1572	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia Vol-22	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1573	</td>	<td>	The New Funk & Wah-gnalls Illustrated Wildlife Encyclopedia Vol-24	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1574	</td>	<td>	The NSTR (Nagarjuna Sagar Srisailam Tiger Reserve)	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1575	</td>	<td>	The Origin of Species	</td>	<td>	Charles Darwin	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1576	</td>	<td>	The out of Town expert with the Brief case	</td>	<td>	Dougwead	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1577	</td>	<td>	The Parable of the Pipeline	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1578	</td>	<td>	The Payment o Gratuity Act,Rules& Case Laws in AP with Ready Reckoner 1988-89 	</td>	<td>	Vedula Srinivas 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1579	</td>	<td>	The Plant care Manual	</td>	<td>	Stefan-Buczocki	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1580	</td>	<td>	The Pocket Book of Indian Pheasants	</td>	<td>	K.R. Raghavendra Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1581	</td>	<td>	The Power of Positive Thinking 	</td>	<td>	Norman Wincent 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1582	</td>	<td>	The Practice of Silviculture (7E)	</td>	<td>	David Martyn Smith	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1583	</td>	<td>	The Principles of Environmental Law	</td>	<td>	Dr. T. Padma K.P.C. Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1584	</td>	<td>	The Principles of Petrology	</td>	<td>	G.W. Tyrrell	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1585	</td>	<td>	The Right to Information Act 2005	</td>	<td>	Dheera Khandalwal 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1586	</td>	<td>	The Right to Information Act 2005	</td>	<td>	O.P. Rai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1587	</td>	<td>	The Rupa Book of Shikas Stories 	</td>	<td>	Ruskin Bonds	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1588	</td>	<td>	The Scheduled castes and scheduled tribes Act, 1987 & Rules 1995	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1589	</td>	<td>	The Scheduled Tribes and other Traditional Forest Dwellers (Recognition of Forest Rights) Act 2006	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1590	</td>	<td>	The Second Jim Corbett 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1591	</td>	<td>	The Second Jim Corbett omnibus	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1592	</td>	<td>	The Secret Life of Plants	</td>	<td>	Peter Tompkins	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1593	</td>	<td>	The Secret Teachings of Plants	</td>	<td>	Stephen Hurrod Buhner	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1594	</td>	<td>	The Seven Habitats of Highly Effective People	</td>	<td>	Stephan R. Covery 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1595	</td>	<td>	The Sexual Harassment of Women at Workplace Act, 2013	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1596	</td>	<td>	The Shake book of India	</td>	<td>	T.S.N Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1597	</td>	<td>	The Silviculture of Indian Trees- Vol-II	</td>	<td>	R.S. Troup	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1598	</td>	<td>	The Silviculture of Indian Trees- Vol-IV	</td>	<td>	R.S. Troup	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1599	</td>	<td>	"The Silviculture of Indian Trees. 
Vol-I "	</td>	<td>	R.S. Troup	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1600	</td>	<td>	"The Silviculture of Indian Trees.
Vol.III "	</td>	<td>	R.S. Troup	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1601	</td>	<td>	"The Silviculture of Indian Trees.
Vol-II"	</td>	<td>	R.S. Troup	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1602	</td>	<td>	The Silviculture of Indian Tress Vol-III	</td>	<td>	H.B. Joshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1603	</td>	<td>	The Singareni Approach	</td>	<td>	R.H. Khwaja	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1604	</td>	<td>	The Snake book of India	</td>	<td>	T.S.N Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1605	</td>	<td>	The Social Sciences in Asian Forestry Curricula	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1606	</td>	<td>	The Story of Ayuruveda	</td>	<td>	I.K.K. Menon	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1607	</td>	<td>	The Story of Indian Tiger	</td>	<td>	Kailash Sankhala	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1608	</td>	<td>	The Successful Manager	</td>	<td>	Dr. V.P. Michad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1609	</td>	<td>	The Superex Conversational Skills	</td>	<td>	Naveen Chandra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1610	</td>	<td>	The Telangana Goods and Services tax Act, 2017	</td>	<td>	Ghausyam Upadhyay	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1611	</td>	<td>	The Temple Tiger and more man Eaters of Kermaon	</td>	<td>	Jim Corbett	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1612	</td>	<td>	The Theory and Application of Forest Economics	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1613	</td>	<td>	The Theory and Practice of Agroforestry Design	</td>	<td>	Paul Wojtkowski	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1614	</td>	<td>	The Tiger Call	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1615	</td>	<td>	The Tiger Hunters	</td>	<td>	R.G. Burton	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1616	</td>	<td>	The Tiger in India a natural history 	</td>	<td>	J.C. Daniel	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1617	</td>	<td>	The Tiger Roars	</td>	<td>	Kenneth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1618	</td>	<td>	The TSPA Journal June,2016	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1619	</td>	<td>	The Twilight of India's Wildlife 	</td>	<td>	Balakrishna Seshadri	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1620	</td>	<td>	The Unquiet woods	</td>	<td>	Ramachandra Guha	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1621	</td>	<td>	The Urban Forest	</td>	<td>	Gene W. Grey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1622	</td>	<td>	The Use and Abuse of Nature  	</td>	<td>	Madhav Gadgil	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1623	</td>	<td>	The useful plants of india 	</td>	<td>	Dr. K.S. Krishna Marg	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1624	</td>	<td>	The Vally of Flowers	</td>	<td>	Frank S. Smythe	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1625	</td>	<td>	The Vanishing	</td>	<td>	Prerna, Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1626	</td>	<td>	The Water Prevention and control of Pollution act 1974	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1627	</td>	<td>	The White Tiger	</td>	<td>	J.H. Desai	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1628	</td>	<td>	"The Wild Animals of India Burma, 
Malaya & Tibet"	</td>	<td>	R.Lydekkar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1629	</td>	<td>	The Wild in wilderness vol-I	</td>	<td>	Dr.K. Kesava Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1630	</td>	<td>	The Wild in Wilderness Vol-III	</td>	<td>	Dr. K. Kesava Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1631	</td>	<td>	The Wildlife (Protection) Act 1972	</td>	<td>	A. Raja	</td>	<td>	29	</td>	</tr> 
<tr> 	<td>	1632	</td>	<td>	The Wildlife (Protection) Act 1972	</td>	<td>	R. Swaroop (Donated)	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1633	</td>	<td>	The Wildlife in Wilderness Vol-II	</td>	<td>	Dr. K. Kesava Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1634	</td>	<td>	The Wildlife Memories 	</td>	<td>	R.C. Sharma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1635	</td>	<td>	The Wildlife of India	</td>	<td>	E.P. Gee (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1636	</td>	<td>	The Wildlife Protection Act 1972	</td>	<td>	A.Raja 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1637	</td>	<td>	The Wildlife Protection Act 1972	</td>	<td>	T.R. Baalu	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1638	</td>	<td>	The World of Trees	</td>	<td>	Ruskin Bond	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1639	</td>	<td>	Theory & Practice of Indian Silvicultural Systems	</td>	<td>	L.S. Khanna	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1640	</td>	<td>	Theory & Practice of Indian Silvicultural Systems	</td>	<td>	Ram Prakash	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1641	</td>	<td>	Thereatened Animals of India	</td>	<td>	B.K. Tikader	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1642	</td>	<td>	Thesis and Assignment Writing 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1643	</td>	<td>	Think & Grow Rich	</td>	<td>	Napoleon Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1644	</td>	<td>	This is India	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1645	</td>	<td>	Thoughts on Indian Forestry	</td>	<td>	V.S. Krishana Swamy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1646	</td>	<td>	Threatened (Medicinal Plants of Andhra Pradesh	</td>	<td>	CH. Sudhakar Reddy	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1647	</td>	<td>	Three Decades of Research in KFRI	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1648	</td>	<td>	Tiger	</td>	<td>	M. Kamal Naidu	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1649	</td>	<td>	Tiger Haven	</td>	<td>	Arjan Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1650	</td>	<td>	Tiger Haven	</td>	<td>	Billy Arjan Singh	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1651	</td>	<td>	Tiger Land 	</td>	<td>	Eric Dinerstein	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1652	</td>	<td>	Tiger the story of the Indian Tiger	</td>	<td>	Kevilash Sankhala	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1653	</td>	<td>	Timber Industries and Non- Timber Forest Products	</td>	<td>	M.B. Shrivastava	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1654	</td>	<td>	Timber Ready Reckoner	</td>	<td>	Thaker Spink	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1655	</td>	<td>	Timbers of India 	</td>	<td>	H.T. Rotter	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1656	</td>	<td>	Time Management and Personal Development 	</td>	<td>	John Adair 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1657	</td>	<td>	Time, Discounting and Value	</td>	<td>	(Blackwell) Colinprice	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1658	</td>	<td>	Tissue Culture of Economic Plants	</td>	<td>	C.K. John	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1659	</td>	<td>	Tough Minded Faith for tender Hearted people	</td>	<td>	Robert H. Schuller 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1660	</td>	<td>	Tourism Management. The Socio-Economic and Ecologial Perspective	</td>	<td>	Tapan K. Panda	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1661	</td>	<td>	Towards A new Forest Policy	</td>	<td>	Walter Fernandes	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1662	</td>	<td>	Tracking Tigers	</td>	<td>	Dr.L.A.K. Singh (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1663	</td>	<td>	Traditional Ecological Knowledge for Managing Biosphare Resereve in south and central Asia	</td>	<td>	P.S. Ramakrishna	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1664	</td>	<td>	Traditional Home book of Herbs	</td>	<td>	Michacl Janulewick	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1665	</td>	<td>	Traditional Knowledge on the Medicinal Plants of Ayurveda	</td>	<td>	Sandhy Singh 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1666	</td>	<td>	Training and Development 	</td>	<td>	Sumati Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1667	</td>	<td>	Training and Development 	</td>	<td>	V.V. Ramani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1668	</td>	<td>	Training for Trainers 	</td>	<td>	Tata Mcgraw-Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1669	</td>	<td>	Training Manual on Identification of Selected Medicinal Plants. Their Propagation Techniques & Raw Drugs	</td>	<td>	B. Somashekar & Manju Sharma	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1670	</td>	<td>	Training Programmes How to Plan & Design	</td>	<td>	Leslie Rac	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1671	</td>	<td>	Traning & Visit Extension 	</td>	<td>	Daniel Benor	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1672	</td>	<td>	Tree Disease concepts	</td>	<td>	Paul D. Manion 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1673	</td>	<td>	Tree Farming for Rural Welfare	</td>	<td>	P.S. Mani	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1674	</td>	<td>	Tree Improvement; Applied -Research and Technology Transfer	</td>	<td>	Sunil Puri	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1675	</td>	<td>	Tree Maintenance (6E)	</td>	<td>	P.P. Pirone	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1676	</td>	<td>	Tree Planting Pracices in Temparate Asia, Burma-India -Pakistan	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1677	</td>	<td>	Tree Planting Practices for Arid zones	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1678	</td>	<td>	Tree Surgery	</td>	<td>	P.H. Bridgeman NDH, ND Arb	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1679	</td>	<td>	Trees	</td>	<td>	Andres Feininger	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1680	</td>	<td>	Trees & Environment 	</td>	<td>	Dr. V.K. Sharma	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1681	</td>	<td>	Trees (Andresa Fcininger)	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1682	</td>	<td>	Trees for Vana Mahotsava	</td>	<td>	S.K. Seth	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1683	</td>	<td>	Trees of Andhara Pradesh, India	</td>	<td>	T. Pullaiah	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1684	</td>	<td>	Trees of Forest Academy	</td>	<td>	TSFA	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1685	</td>	<td>	Trees of Forest Academy 	</td>	<td>	-	</td>	<td>	408	</td>	</tr> 
<tr> 	<td>	1686	</td>	<td>	Trees of Hyderabad 	</td>	<td>	P.V. Prasanna, N. Chandra Mohan Reddy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1687	</td>	<td>	Trees of Hyderabad apictaial Guide	</td>	<td>	P.V. Prasanna	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1688	</td>	<td>	Trees of India	</td>	<td>	Dr. Subhadra Menon	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1689	</td>	<td>	Trends in Wildlife Biodiversity conservation and Management	</td>	<td>	B.B. Hosetti	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1690	</td>	<td>	Tribals and Community for Management	</td>	<td>	Madhu Sudan Bandi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1691	</td>	<td>	Tropical Ecosystems. Ecology and Management 	</td>	<td>	K.P. Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1692	</td>	<td>	Tropical Forestry in India	</td>	<td>	D.N. Tewari	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1693	</td>	<td>	Tropical Forestry Reasearch	</td>	<td>	R.V. Varma	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1694	</td>	<td>	Tropical Indian Medicinal Plants	</td>	<td>	Sumyived & Krishnan	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1695	</td>	<td>	Tropical Silviculture	</td>	<td>	J.B. Lal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1696	</td>	<td>	Tropicla Forest Ecosystem conservation & Development	</td>	<td>	K.K.N. Nair	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1697	</td>	<td>	Turtle Trade in India	</td>	<td>	B.C Choudury and S.Bhupathy	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1698	</td>	<td>	Ultimate Visual Dictionary 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1699	</td>	<td>	Uncommons in the commons; Community Initiated Forest Resource Management	</td>	<td>	Rucha Ghate	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1700	</td>	<td>	Understamnding Processes of Watershed Development Projects in India	</td>	<td>	-	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1701	</td>	<td>	Understanding Behaviour	</td>	<td>	Kate Keenan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1702	</td>	<td>	Understanding Environmental Pollution (2E)	</td>	<td>	Maravita, K.Hill	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1703	</td>	<td>	"Unified Course in Botany
 Vol-I, B.Sc 1 Year"	</td>	<td>	Govind Prakash	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1704	</td>	<td>	Universal' Criminal Manual	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1705	</td>	<td>	Unlimited Power	</td>	<td>	Anthony Robbins 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1706	</td>	<td>	Urban and Recreational Forestry	</td>	<td>	Dr. S. S. Negi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1707	</td>	<td>	Urban Forestry Planning and Managing Urban Green Space	</td>	<td>	Rebort. W. Miller	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1708	</td>	<td>	Uttarakhand a celebration	</td>	<td>	Forest Dept	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1709	</td>	<td>	Vaastu Saastra for Industry ^ Business	</td>	<td>	Dr. K. Chandramouli Reddy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1710	</td>	<td>	Vanished Species	</td>	<td>	Kiran Gupta 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1711	</td>	<td>	VAT, Value Added Tax Act-2005 Law & Practice	</td>	<td>	TVR Staya Prasad	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1712	</td>	<td>	Vegetative Propagation & Biotechnologies for Tree important 	</td>	<td>	K. Kesava Reddy	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	1713	</td>	<td>	Vigilance Study Circle (2 Books)	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1714	</td>	<td>	Village Forest	</td>	<td>	M.H. Hiralal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1715	</td>	<td>	Village Forest with Draft Rules Under Sec. 28 of Indian Forest Act, 1927	</td>	<td>	 Mohan Hirabai Hiralal	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1716	</td>	<td>	Village Voices Forest Choices 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1717	</td>	<td>	Vision 2020	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1718	</td>	<td>	Visual Encyclopedia of Animals 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1719	</td>	<td>	Voluntary action and Gandhian Approach 	</td>	<td>	D.K. Ola	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1720	</td>	<td>	Walking the Wild path	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1721	</td>	<td>	Waste Lands Diagnosis and Treatment 	</td>	<td>	Hridal R. Yadav	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1722	</td>	<td>	Wasteland Afforestation 	</td>	<td>	Irshadkhan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1723	</td>	<td>	Wasteland Development for Fuel wood & Fodde Production	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1724	</td>	<td>	Wasteland Management in India 	</td>	<td>	Anil Kumar, R.N. Pandey 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1725	</td>	<td>	Watching and Conserving Vol-2	</td>	<td>	Mahesh Rangarajan	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1726	</td>	<td>	Watching India's Wildlife	</td>	<td>	Billy Arjan Singh	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1727	</td>	<td>	Water Harvesting and Sustainable Supply in India	</td>	<td>	R.N. Athavale	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1728	</td>	<td>	Water Management  - The Key to Development Agriculture	</td>	<td>	J. S. Kanwar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1729	</td>	<td>	Water Plants 	</td>	<td>	Agnes Arber	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1730	</td>	<td>	Water Pollution	</td>	<td>	Jasveen Jairath	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1731	</td>	<td>	Water Pollution	</td>	<td>	V.K. Prabhakar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1732	</td>	<td>	Water Resource Utilization & Micro Irrigation	</td>	<td>	R.C. Mandal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1733	</td>	<td>	Water Resources Engineering	</td>	<td>	Ralph A. Warbs	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1734	</td>	<td>	Watershed Based Development	</td>	<td>	K.J. Joy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1735	</td>	<td>	Watershed Comprehnsive Development	</td>	<td>	K.V. Seshagiri Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1736	</td>	<td>	Watershed Management	</td>	<td>	J.V.S. Murthy	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1737	</td>	<td>	Watershed Management 	</td>	<td>	Dr. Archana Mishra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1738	</td>	<td>	Watershed Management 	</td>	<td>	E.M. Tideman	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1739	</td>	<td>	Watershed Management 	</td>	<td>	M.C. Oswal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1740	</td>	<td>	Watershed Management 	</td>	<td>	M.K. Maitra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1741	</td>	<td>	Watershed Management & Sustainable Development 	</td>	<td>	K. Gopal Lyer	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1742	</td>	<td>	Watershed Management for Sustainable Agriculture	</td>	<td>	M.A. Khan 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1743	</td>	<td>	Ways to Improve Your Conversation Speaches 1001	</td>	<td>	Herbert V. Prachnow 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1744	</td>	<td>	We the Nation 	</td>	<td>	A. Palkhivala	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1745	</td>	<td>	We the People 	</td>	<td>	A. Palkhivala	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1746	</td>	<td>	Wet lands, Mangroves and Bioshere Reserves	</td>	<td>	Proceedings of the Indo-US Workshop	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1747	</td>	<td>	Wetland Birds of Tamil Nadu	</td>	<td>	Robert B. Grubh 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1748	</td>	<td>	What is Ecology (2E)	</td>	<td>	D.F. Owen	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1749	</td>	<td>	What is Six sigma	</td>	<td>	Pete Pande	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1750	</td>	<td>	Wheat Grass Juice 	</td>	<td>	Dr. D.R. Gala	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1751	</td>	<td>	When Hippo was hairy	</td>	<td>	Nick Greaves	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1752	</td>	<td>	Who is Kalam	</td>	<td>	R. Ramanatham	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1753	</td>	<td>	Who Moed my cheese 	</td>	<td>	Dr. Spencer Johnson	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1754	</td>	<td>	Who monographs on selected medicinal plants Vol-I	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1755	</td>	<td>	Why man don’t listen & women cant read maps 	</td>	<td>	Barbara & Allan Pease 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1756	</td>	<td>	Widening Perspectives on Biodiversity	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1757	</td>	<td>	Wild an the Zoo	</td>	<td>	Mamatha Pandya	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1758	</td>	<td>	Wild Edible Fruit Plants of Eastern India	</td>	<td>	A.K. Mahapatra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1759	</td>	<td>	Wild Management Techniques	</td>	<td>	R.H. Giles  (DONATED)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1760	</td>	<td>	Wilderness survival	</td>	<td>	Gregory J. Devenport	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1761	</td>	<td>	Wildlife Biology 	</td>	<td>	R.F. Dasmann	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1762	</td>	<td>	Wildlife Biology 	</td>	<td>	Raymond.F	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1763	</td>	<td>	Wildlife Crime	</td>	<td>	Vivek Menon	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	1764	</td>	<td>	Wildlife Diseases in India	</td>	<td>	B.M. Arora	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1765	</td>	<td>	Wildlife Feeding and nutrition	</td>	<td>	Charles T. Robbins	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1766	</td>	<td>	Wildlife in India	</td>	<td>	Gurkamal Basra	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1767	</td>	<td>	Wildlife in India	</td>	<td>	V.B. Saharia (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1768	</td>	<td>	Wildlife in India - Its Conservation and Control	</td>	<td>	P.D. Stracey	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1769	</td>	<td>	Wildlife Law A Ready Reckoner	</td>	<td>	Ritwick Dutta	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1770	</td>	<td>	Wildlife Management and Conservation	</td>	<td>	M.M. Ranga	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1771	</td>	<td>	Wildlife Management Techniques	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1772	</td>	<td>	Wildlife Managers: Forest department 	</td>	<td>	Forest Department	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1773	</td>	<td>	Wildlife of India	</td>	<td>	Shobhna Gupta	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1774	</td>	<td>	Wildlife Protection Act 1972	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1775	</td>	<td>	Wildlife Resurces and Economic Development 	</td>	<td>	SK Eltringham	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1776	</td>	<td>	Wilife Protection Act 1972 4th Edition 2003	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1777	</td>	<td>	Wilife Protection Act 1972 Second 2002	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1778	</td>	<td>	Wings of Fire	</td>	<td>	APJ Abdul Kalam	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1779	</td>	<td>	Women & Forestry 	</td>	<td>	Dr. C. Suvarna, IFS	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1780	</td>	<td>	Women and Human Development 	</td>	<td>	M.C. Nussbaum	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1781	</td>	<td>	Women and Information Technology	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1782	</td>	<td>	Women Rights and Modernization 	</td>	<td>	SR Bakshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1783	</td>	<td>	Women workers in un-organised sector	</td>	<td>	P. Arjun Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1784	</td>	<td>	Wood Energy Systems	</td>	<td>	O.P. Vimal	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1785	</td>	<td>	Wood Puel Surveys 	</td>	<td>	FAO	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1786	</td>	<td>	Wood Requriments of Based small -scale Industries	</td>	<td>	Anil Berry	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1787	</td>	<td>	Working Plan for the Forest Achampet Wildlife Management Division 	</td>	<td>	T.Shambhoji	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1788	</td>	<td>	Working Plan for the Forest of East Godavari District 1991-92, 2005-2006 Part-1	</td>	<td>	K. Prakasa Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1789	</td>	<td>	Working Plan for the Forest of East Godavari District 1991-92, 2005-2006 Part-II	</td>	<td>	K. Prakasa Rao	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1790	</td>	<td>	Working Plan for the Forest of Wildlife Management Division Jannaram, Adilabad District	</td>	<td>	C.P. Vinod Kumar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1791	</td>	<td>	Working Plan for the Forests of Markapur (WL) Division (Out side NSTR) from 2003-04 to 2012-13	</td>	<td>	E. Narasimhulu	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1792	</td>	<td>	Working Plan for Warangal South Division, from 2003-2004 to 2012-2013 (Outside Pakhal Wildlife Sancturary)- Part - I & II	</td>	<td>	A.K. Jha	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1793	</td>	<td>	World less wisdom	</td>	<td>	Swami Sukhabodhananda 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1794	</td>	<td>	World of Facts (Whitaker's)	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1795	</td>	<td>	World of Wonders	</td>	<td>	Raja Dinkar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1796	</td>	<td>	Writing and Producing Radio  Dramas	</td>	<td>	ED. Fossard 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1797	</td>	<td>	XVIII National Convertion of mining Engineers	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1798	</td>	<td>	XVIII National Convertion of mining Engineers 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1799	</td>	<td>	Yeti The Ecology of a Mystery	</td>	<td>	Daniel C. Taylor	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1800	</td>	<td>	Yoga for Daily Life	</td>	<td>	Jan Bakar	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1801	</td>	<td>	Yoga Simplified 	</td>	<td>	Dr. Peaveen Kapadia	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1802	</td>	<td>	You Can Win	</td>	<td>	Shiva Khera	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1803	</td>	<td>	"You Just Got Cheated! 
Understanding  White-Collar Crimes"	</td>	<td>	Sibichen K. Mathew	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1804	</td>	<td>	Zero Base Budgeting Tecvhnology	</td>	<td>	Dr. P.L. Joshi	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1805	</td>	<td>	అక్షర వృక్షాలు	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1806	</td>	<td>	అటవిశాఖ- నీరు- మీరు	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1807	</td>	<td>	అటవీ నిర్వహణలో స్థానిక ప్రజలు, బెహరున్ గూడ అనుభవం  	</td>	<td>	ఆంధ్ర ప్రదేశ్ ఉమ్మడి అటవీ యాజమాన్య స్వచ్ఛంద సంస్థల సమాఖ్య .	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1808	</td>	<td>	అడవి కథలు 	</td>	<td>	పర్యావరణ విద్యా కేంద్రం 	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1809	</td>	<td>	అడవితల్లి 	</td>	<td>	పులుగు శ్రీనివాస్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1810	</td>	<td>	అత్యంత ప్రభావవంతుల  అలవాట్లు 	</td>	<td>	స్టీఫెన్ ఆర్ కవీ 	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1811	</td>	<td>	అనుభవాల పందిరి, ప్రకృతి వనరులతో బతుకు దారులు 	</td>	<td>	వాసన్	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1812	</td>	<td>	అరణ్య మిత్ర" వన సంరక్షణ సమితుల మార్గదర్శని  	</td>	<td>	అటవీ సంరక్షణ అధికారి 	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1813	</td>	<td>	అరణ్య వైభవం 	</td>	<td>	జితరాయ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1814	</td>	<td>	అరణ్యమిత్ర	</td>	<td>	-	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1815	</td>	<td>	అరణ్యమిత్ర వన సంరక్షణ సమితుల మార్గదర్శిని	</td>	<td>		</td>	<td>	14	</td>	</tr> 
<tr> 	<td>	1816	</td>	<td>	అలంకరణ చేపలు-పరిచయం 	</td>	<td>	ఎస్.ఎన్. జాదవ్ 	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1817	</td>	<td>	ఆంధ్ర కళలు, హస్తకళలు 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1818	</td>	<td>	ఆంధ్ర ప్రదేశ్ పవిత్ర , రక్షిత వనసంపద	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1819	</td>	<td>	ఆంధ్ర ప్రదేశ్ ప్రభుత్వము , అటవీశాఖ, అటవీ నిర్వహణ మరియు నేర విచారణపై క్షేత్రస్థాయి సిబ్బందికి సూచనల పుస్తకము .	</td>	<td>	బి. జయచంద్ర రెడ్డి S.F.S,D.F.O( W.L), Markapur	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1820	</td>	<td>	ఆంధ్ర ప్రదేశ్ ప్రభుత్వము అటవీశాఖ అటవీ నిర్వహణ నేర విచారణపై క్షేత్ర స్థాయి సిబ్బందికి సూచనలు పుస్తకము	</td>	<td>	బి. జయచంద్ర రెడ్డి 	</td>	<td>	22	</td>	</tr> 
<tr> 	<td>	1821	</td>	<td>	ఆంధ్ర ప్రదేశ్ లో గిరిజన సమస్యలు, సంక్షేమము 	</td>	<td>	పొన్నాడ వెంకటరావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1822	</td>	<td>	ఆంధ్ర ప్రదేశ్ లో మహిళోద్యమము , మహిళా సంఘాలు 1860-1983 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1823	</td>	<td>	ఆంధ్ర ప్రదేశ్ సాముదాయక అటవీ యాజమాన్య పథకం, సామాజిక, పర్యావరణ పరిశీలన సంక్షిప్త సమాచారం.	</td>	<td>	Socialand Environmental Asessment Executive Summary	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1824	</td>	<td>	ఆంధ్రప్రదేశ్ టూరిస్టు గైడ్ 	</td>	<td>	సి. హెచ్. శ్రీనివాస్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1825	</td>	<td>	ఆంధ్రప్రదేశ్ ప్రాంతీయ భూగోళ శాస్త్రం (ఉమ్మడి పాఠ్య ప్రణాళిక ననుసరించి)	</td>	<td>	"కమలాకరరెడ్డి 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1826	</td>	<td>	"ఆయుర్వేదదిక్ ట్రీట్ మెంట్ 	"	</td>	<td>	"Dr. కె. నిష్తేశ్వర్ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1827	</td>	<td>	ఇంగ్లీష్-తెలుగు నిఘంటువు	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1828	</td>	<td>	ఇంటర్నెట్ 	</td>	<td>	శ్రీనాధుడు	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1829	</td>	<td>	ఇంటర్నెట్ ఫర్ ఎవరివన్ 	</td>	<td>	సి.హెచ్. ఆర్. వాత్సల్య 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1830	</td>	<td>	ఇంటి తోటలు మరియు అలంకార వృక్షములు 	</td>	<td>	"డా. తమ్మన్న 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1831	</td>	<td>	ఇనుప గజ్జెల తల్లి 	</td>	<td>	సింగమనేని నారాయణ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1832	</td>	<td>	ఉద్యాన కృషి	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1833	</td>	<td>	ఉమ్మడి అటవీ యాజమాన్యం 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1834	</td>	<td>	ఉమ్మడి అటవీ యాజమాన్యం -  " కలపేతర అటవీ ఫలసాయం "	</td>	<td>	జి. సత్య శ్రీనివాస్	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1835	</td>	<td>	ఉమ్మడి అటవీ యాజమాన్యం " వన రక్షణ "	</td>	<td>	సెంటర్ ఫర్ ఎన్విరాన్మెంట్ కన్సర్న్	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1836	</td>	<td>	ఉమ్మడి అటవీ యాజమాన్యం "నర్సరీ పెంచే పద్ధతులు" 	</td>	<td>	వినోద్ గౌడ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1837	</td>	<td>	"ఉమ్మడి అటవీ యాజమాన్యం
 "" వన రక్షణ  సమితులు"" -నిర్వహణ  "	</td>	<td>	సెంటర్ ఫర్ ఎన్విరాన్మెంట్ కన్సర్న్	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1838	</td>	<td>	ఉమ్మడి అటవీ యాజమాన్యం" వన రక్షణ"	</td>	<td>	వి. ఆర్.సౌమిత్రి	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1839	</td>	<td>	ఉమ్మడి అటవీ యాజమాన్యం, కలపేతర అటవీ ఫలసాయం	</td>	<td>	జి. సత్య శ్రీనివాస్	</td>	<td>	20	</td>	</tr> 
<tr> 	<td>	1840	</td>	<td>	ఎర్రచందనము (Red Sandal)	</td>	<td>	ఇన్స్టిట్యూట్ ఆఫ్ వుడ్ సైన్స్ అండ్ టెక్నాలజీ 	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1841	</td>	<td>	ఎర్రచందనము" Red Sanders	</td>	<td>	ఇన్స్టిట్యూట్ ఆఫ్ వుడ్ సైన్స్ అండ్ టెక్నాలజీ 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1842	</td>	<td>	ఓ జీవితమా రిలాక్స్ ప్లీజ్ 	</td>	<td>	స్వామి సుఖిభోదానంద 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1843	</td>	<td>	ఓ మహిళా ముందుకు సాగిపో 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1844	</td>	<td>	ఔషద మొక్కల సాగు- మార్కెటింగ్ అవకాశాలు 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1845	</td>	<td>	ఔషద మొక్కల సాగు- సాదకాశాలు 	</td>	<td>		</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1846	</td>	<td>	ఔషధి మొక్కల పెంపకం	</td>	<td>	ఎన్. సుబ్రహ్మణ్యం	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1847	</td>	<td>	"ఔషధీ వృక్ష శాస్త్రం 		(III Year) paper-IV)"	</td>	<td>	B.Sc. (Botany)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1848	</td>	<td>	"ఔషధీ వృక్ష శాస్త్రం 		(III Year) paper-IV)"	</td>	<td>	Dr. K. Siva Shankar (Donated)	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1849	</td>	<td>	కమ్యూనికేషన్ మీ విజయానికి పునాది 	</td>	<td>	డా. బి.వి. పట్టాభిరామ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1850	</td>	<td>	కరీంనగర్ వనమిత్ర 	</td>	<td>	-	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1851	</td>	<td>	కలపేతర అటవీ ఉత్పత్తులు 	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1852	</td>	<td>	కాజురీన ఈక్వి సేటిఫోలియ(సరుగుడు)	</td>	<td>	ఇన్స్టిట్యూట్ ఆఫ్ వుడ్ సైన్స్ అండ్ టెక్నాలజీ 	</td>	<td>	13	</td>	</tr> 
<tr> 	<td>	1853	</td>	<td>	కుటుంబమా రిలాక్స్ ప్లీజ్ 	</td>	<td>	స్వామి సుఖబోదానంద 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1854	</td>	<td>	కూరగాయలు 	</td>	<td>	డా. బి. చౌదరి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1855	</td>	<td>	క్షేత్ర సహచరి" ( ప్రధాన ముఖ్య అటవీ సంరక్షణాదికరిచే జారీ చేయబడిన సర్క్యులర్ సంకలనం)	</td>	<td>	ఆంధ్రప్రదేశ్ అటవీశాఖచే జారీ చేయబడినది	</td>	<td>	12	</td>	</tr> 
<tr> 	<td>	1856	</td>	<td>	గుడ్ పేరెంట్స్ + బెటర్ టీచర్స్ 	</td>	<td>	బి.వి. పట్టాబి రామ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1857	</td>	<td>	"గుమ్మడి టేకు, మెలైనా ఆర్ బోరియా మెర్బినేసి 	"	</td>	<td>	"తేజ్ సింగ్ కర్షమ్ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1858	</td>	<td>	గ్రంధాలయ వనరులు	</td>	<td>	శంకర రెడ్డి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1859	</td>	<td>	చందనము (Sandal)	</td>	<td>	ఇండియన్ కౌన్సిల్ ఆఫ్ ఫారెస్ట్రీ రీసెర్చ్ అండ్ ఎడ్యుకేషన్  	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1860	</td>	<td>	చతుర్విద ప్రక్రియ	</td>	<td>	శ్రీ . టి. హనుమంతరావు 	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1861	</td>	<td>	చదువు ఏకాగ్రత 	</td>	<td>	"యండమూరి వీరేంద్రనాథ్ 	"	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1862	</td>	<td>	చింత" టామరిండస్ ఇండికా ఎల్  	</td>	<td>	ఇన్స్టిట్యూట్ ఆఫ్ వుడ్ సైన్స్ అండ్ టెక్నాలజీ 	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1863	</td>	<td>	చిత్రకళ	</td>	<td>	కాశీ భట్ల విశ్వనాధం 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1864	</td>	<td>	చిలుకూరు తిరుగుబాటు 	</td>	<td>	సి. యస్. రంగరాజన్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1865	</td>	<td>	చెట్టు ఒక అన్వేషణ	</td>	<td>	-	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1866	</td>	<td>	చెట్లు నాటిన మనిషి 	</td>	<td>	జాజి మోనో 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1867	</td>	<td>	జన గర్జన 	</td>	<td>	వయ్యా సామెలు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1868	</td>	<td>	జనరల్ స్టడీస్ భౌగోళిక విజ్ణానo 	</td>	<td>	"తెలుగు అకాడమీ 			"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1869	</td>	<td>	జలగండము 	</td>	<td>	శ్రీరాములు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1870	</td>	<td>	జానపద వైద్యం	</td>	<td>	డా. బి.వి.ఎ. రామారావు నాయుడు	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1871	</td>	<td>	జి. పి. ఎస్ . యొక్క ప్రాధమిక సమాచారము మరియు వినియోగ విధానము 	</td>	<td>	 Andhra Pradesh forest Department	</td>	<td>	15	</td>	</tr> 
<tr> 	<td>	1872	</td>	<td>	జీనియస్ మీరు కూడా 	</td>	<td>	డా. బి.వి. పట్టాభిరామ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1873	</td>	<td>	జీవ క్రిమి కీటక నాశనుల తయారీ ప్రకృతి సిద్ధ పద్ధతుల్లో సస్య రక్షణ   	</td>	<td>	-	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1874	</td>	<td>	జీవ క్రిమి కీటక నాశనుల తయారీ" ప్రకృతి సిద్ధ పద్ధతుల్లో సస్య రక్షణ   	</td>	<td>	-	</td>	<td>	18	</td>	</tr> 
<tr> 	<td>	1875	</td>	<td>	జీవ క్రిమి నాశనుల తయారి	</td>	<td>		</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1876	</td>	<td>	జీవ వనరుల మరియు సంబంధిత పరిజ్ఞానం2014	</td>	<td>		</td>	<td>	20	</td>	</tr> 
<tr> 	<td>	1877	</td>	<td>	జీవ వనరుల వినియోగం & ప్రయోజనాల పంపకం పదజాలం నిర్వచనం వివరణ 	</td>	<td>		</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1878	</td>	<td>	జీవ వనరుల వినియోగం మరియు ప్రయోజనాల పంపకం పదజాలం, నిర్వచన, వివరణ  	</td>	<td>	తెలంగాణ రాష్ట్ర  జీవ వైవిధ్య మండలి 	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1879	</td>	<td>	జీవ వైవిద్య చట్టం ,జీవ వైవిద్య నియమ నిబంధనలు , మరియు ఆంధ్ర ప్రదేశ్ జీవ వైవిద్యనియమ నిబంధనలు	</td>	<td>	ఆంధ్ర ప్రదేశ్ జీవ వైవిద్య మండలి 	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1880	</td>	<td>	జీవ వైవిద్య యాజమాన్య కమిటీల( బి.ఎం. సి. లు ) కార్యచరణ కోసం మార్గదర్శకాలు 	</td>	<td>	జాతీయ జీవ వైవిద్య ప్రాధికార సంస్థ భారత ప్రభుత్వం	</td>	<td>	18	</td>	</tr> 
<tr> 	<td>	1881	</td>	<td>	జీవ వైవిద్య యాజమాన్య కమిటీలు ( ఏర్పాటు, హక్కులు, బాధ్యతలు)	</td>	<td>	ఆంధ్ర ప్రదేశ్ రాష్ట్ర  జీవ వైవిధ్య మండలి 	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1882	</td>	<td>	జీవ వైవిద్యచట్టం	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1883	</td>	<td>	జీవ వైవిద్యచట్టం- 2002,జీవ వైవిద్య నియమ నిబంధనలు2004 మరియు జీవ వైవిద్య నియమ నిబంధనలు2009.	</td>	<td>	-	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1884	</td>	<td>	జీవ వైవిధ్యం	</td>	<td>	ఆంధ్ర ప్రదేశ్ నేషనల్ గ్రీన్ కోర్	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1885	</td>	<td>	జీవ వైవిధ్యం 	</td>	<td>	ఎ. పి. జీవ వైవిద్య మండలి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1886	</td>	<td>	జీవ వైవిధ్యం- పరిరక్షణ	</td>	<td>	ఆంధ్ర ప్రదేశ్ జీవ వైవిధ్య మండలి 	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1887	</td>	<td>	జేవశాస్త్రం , పదో తరగతి 	</td>	<td>	వై. భవాని శంకర్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1888	</td>	<td>	తరతరాల స్త్రీల పరజయ  గాధ 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1889	</td>	<td>	"తులసి 	"	</td>	<td>	"గుడిపాటి ఇందిరా కామేశ్వరి 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1890	</td>	<td>	తెలుగు జానపద విజ్ఞానము, సమాజము సంస్కృతి-సాహిత్యము 	</td>	<td>	నాయని కృష్ణ కుమారి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1891	</td>	<td>	తెలుగు భాషా చరిత్ర 	</td>	<td>	ఆచార్య భద్రరాజ కృష్ణమూర్తి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1892	</td>	<td>	తెలుగు-ఇంగ్లీష్ నిఘంటువు	</td>	<td>	P. Sankara Narayana	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1893	</td>	<td>	థింక్ బిగ్ 	</td>	<td>	ఆరేళ్ళ శివకుమార్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1894	</td>	<td>	ధ్యానం 	</td>	<td>	శైలేష్ కుమార్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1895	</td>	<td>	నందనవనం	</td>	<td>	-	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1896	</td>	<td>	నందనవనం ఉపాధ్యాయుల కరదీపిక 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1897	</td>	<td>	నలుగు తున్న గేయాలు 	</td>	<td>	"వయ్యా సామేలు 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1898	</td>	<td>	నల్లమలలో చెంచు ప్రపంచము 	</td>	<td>	జనప్రియ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1899	</td>	<td>	నిత్య జీవితంలో వృక్ష శాస్త్రం 	</td>	<td>	డా. జి.జి.వి. నరసింహారావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1900	</td>	<td>	నిత్యజీవితంలో యోగ	</td>	<td>	బి. వేణుగోపాల్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1901	</td>	<td>	నిరంతర అభివృద్ధికి తారక మంత్రం, సేంద్రియ వ్యవసాయం 	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1902	</td>	<td>	నీలాపనిందల - నీలగిరి- నిర్దోషి	</td>	<td>	ఎ. వి. ఆర్. జి. కృష్ణమూర్తి	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1903	</td>	<td>	పంచనామ	</td>	<td>	Dr. మాడభూషి శ్రీధర్ ఆచార్యుడు	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1904	</td>	<td>	పరిపాలన, న్యాయ పదకోశం	</td>	<td>	తెలుగు అకాడెమి	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	1905	</td>	<td>	పర్మకల్చర్ వ్యవసాయ పద్ధతులు 	</td>	<td>	శశి	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1906	</td>	<td>	పర్యావరణ జీవశాస్త్రం 	</td>	<td>	బి. మల్లయ్య 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1907	</td>	<td>	పర్యావరణ పరిజ్ఞానము 	</td>	<td>	ఆళ్ళ అప్పారావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1908	</td>	<td>	పర్యావరణ విద్య, బి.ఎ. ఎడ్	</td>	<td>	తెలుగు అకాడమి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1909	</td>	<td>	పలనాడు లో సహాయ నిరాకరణోద్యమము లేక కన్నెగంటి హనుమంతు జీవిత చరిత్ర 	</td>	<td>	షాయక్ అబ్దుల్ సలామ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1910	</td>	<td>	"పవిత్ర వృక్షాలు 	"	</td>	<td>	"P.S. శంకర రెడ్డి, ఐ.ఎఫ్.యస్.	"	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1911	</td>	<td>	పాటల తోట పాటలు 	</td>	<td>	"వయ్యా సామేలు 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1912	</td>	<td>	పాఠశాలలకు పర్యావరణ పరిజ్ఞానం	</td>	<td>	ఆళ్ళ అప్పారావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1913	</td>	<td>	పాపాజి  (Hindi)	</td>	<td>	సునిత	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1914	</td>	<td>	పామ రోజా - నిమ్మగడ్డి సాగు విధానం	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1915	</td>	<td>	పారి భాషిక పదకోశం ; భూగోళ శాస్త్రం 	</td>	<td>	"తెలుగు అకాడమీ 			"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1916	</td>	<td>	పిల్లలు నేర్చుకోవడం లో ఎలా వెనకబడతారు 	</td>	<td>	జాన్ హూల్ట్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1917	</td>	<td>	పులులు సహజతులు వాటి ఆహార ప్రాణులు వాటి నివాస ప్రాంతాలపై పర్యవేక్షణ (Field Guide) 2005	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1918	</td>	<td>	పూల మొక్కల పెంపకం 	</td>	<td>	"సమ్మెట గోవర్ధన్ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1919	</td>	<td>	పెద్ద బాల శిక్ష	</td>	<td>	ఋషి	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1920	</td>	<td>	"పేటెంట్లు (కట్టకథ - వాస్తవాలు )	"	</td>	<td>	"వందన శివ 			"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1921	</td>	<td>	ప్రజాకవి వేమన	</td>	<td>	Dr. N. Gopi 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1922	</td>	<td>	ప్రధమ చికిత్స	</td>	<td>	"2935
1 to 20 డా. కేతు బుచ్చిరెడ్డి "	</td>	<td>	20	</td>	</tr> 
<tr> 	<td>	1923	</td>	<td>	ప్రధమ చికిత్స	</td>	<td>	డా. కేతు బుచ్చిరెడ్డి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1924	</td>	<td>	ప్రపంచ భూగోళ శాస్త్రం 	</td>	<td>	"తెలుగు అకాడమీ 			"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1925	</td>	<td>	బంగారు సంకెళ్ళు 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1926	</td>	<td>	బతుకు తీరాలు - వృత్తులదారులు	</td>	<td>	DWMA	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1927	</td>	<td>	బతుకు బాటలో పులి 	</td>	<td>	కె. ఉల్లాస్ కారంత్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1928	</td>	<td>	"భారత దేశ భూ విజ్ఞాన శాస్త్రం 	"	</td>	<td>	"తెలుగు అకాడమీ 			"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1929	</td>	<td>	భారత దేశము గిరిజన సముదాయాలు 	</td>	<td>	డా. ఎమ్. సూర్యనారాయణ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1930	</td>	<td>	భారతదేశ సంపూర్ణ యాత్ర దర్శిని 	</td>	<td>	డి. కోటేశ్వరరావు 	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1931	</td>	<td>	భారతదేశంలో బంజారాలు 	</td>	<td>	Dr. M. గోన నాయక్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1932	</td>	<td>	భారతనారి ఆదర్శం 	</td>	<td>	యం.ఎన్. రామ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1933	</td>	<td>	భారతీయ గిరిజనులు	</td>	<td>	నదీం హసనైన్	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1934	</td>	<td>	భారతీయ ప్రకృతి దర్శిని 	</td>	<td>		</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1935	</td>	<td>	భూ విజ్ఞాన శాస్త్రం, కోర్సు -II, ప్రకాశ ఖనిజ శాస్త్రం, శిలా శాస్త్రం 	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1936	</td>	<td>	భూ విజ్ణాన శాస్త్రం , కోర్సు - III , నిర్మితీయ - భూ విజ్ణాన శాస్త్రం , ఆర్థిక భూ విజ్ణాన శాస్త్రం , భారతదేశ భూ విజ్ణాన శాస్త్రం 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1937	</td>	<td>	భూ విజ్ణాన శాస్త్రం , ఖనిజోన్వేషణ , ఖనిజార్ధ శాస్త్రం, ఆధునిక అంశాలు 	</td>	<td>	B.R.A.O.U	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1938	</td>	<td>	భూ విజ్ణాన శాస్త్రం , ఖనిజోన్వేషణ , ఖనిజార్ధ శాస్త్రం, ఖండాలు 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1939	</td>	<td>	భూ విజ్ణాన శాస్త్రం , నిర్మితీయ - భూ  విజ్ఞాన శాస్త్రం , ఆర్థిక ఖనిజ శాస్త్రం , భారతదేశ భూ విజ్ణాన శాస్త్రం 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1940	</td>	<td>	భూ విజ్ణాన శాస్త్రం , ప్రయోగదీపిక & రికార్డు , భూ విజ్ణాన శాస్త్రం  & ఖనిజార్థ శాస్రం 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1941	</td>	<td>	భూ విజ్ణాన శాస్త్రం , ప్రయోగదీపిక & రికార్డు శిలశాస్త్రం 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1942	</td>	<td>	భూ విజ్ణాన శాస్త్రం ; ప్రకాశ ఖనిజ శాస్త్రం, శిలశాస్త్రం 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1943	</td>	<td>	భూ స్వరూప శాస్త్రం, శీతోష్ణస్థితి శాస్త్రం , సముద్ర శాస్త్రం 	</td>	<td>	B.R.A.O.U	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1944	</td>	<td>	మంచి సమావేశాలు ఎలా ఏర్పాటు చేయాలి 	</td>	<td>		</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1945	</td>	<td>	మన ఊరు- మన వనం 	</td>	<td>	జి. చంద్ర శేఖర్ రెడ్డి 	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1946	</td>	<td>	మన భూమి - మన భవిష్యత్ 	</td>	<td>	"పి. శంకర్ గౌడ్ 	"	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1947	</td>	<td>	మనము - మన ఆధారము 	</td>	<td>	కె.టి. అచ్చయ్య 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1948	</td>	<td>	మనసా రిలక్ష్ ప్లీజ్ రెండో భాగము  	</td>	<td>	స్వామి సుఖ బోదానంద 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1949	</td>	<td>	మనసా రిలాక్స్ ప్లీజ్ 	</td>	<td>	స్వామి సుఖిభోదానంద 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1950	</td>	<td>	మనసా రిలాక్స్ ప్లీజ్ పార్ట్ -2	</td>	<td>	స్వామి సుఖిభోదానంద 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1951	</td>	<td>	మనుగడ కోసం పోరాటం 	</td>	<td>	"అనంత్ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1952	</td>	<td>	మహిళలపై దౌర్జన్యము 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1953	</td>	<td>	మాతృత్వానికి మరోముడి 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1954	</td>	<td>	మిమ్మల్ని మీ పిల్లలు ప్రేమించాలంటే 	</td>	<td>	"యండమూరి వీరేంద్రనాథ్ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1955	</td>	<td>	మిమ్మల్ని మీ పిల్లలు ప్రేమించేలంటే 	</td>	<td>	"యండమూరి వీరేంద్రనాథ్ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1956	</td>	<td>	మీ మనశ్శక్తి రహస్యాలు  	</td>	<td>	ఆరేళ్ళ శివకుమార్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1957	</td>	<td>	మీరు మారాలనుకుంటున్నారా?	</td>	<td>	డా. బి.వి. పట్టాభిరామ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1958	</td>	<td>	మీరు మీ సైకాలజీ 	</td>	<td>	కల్లూరి శైలబాల 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1959	</td>	<td>	మీరు విజయాన్ని సాధించగలరు 	</td>	<td>	Bloomsbury	</td>	<td>	9	</td>	</tr> 
<tr> 	<td>	1960	</td>	<td>	మీరు విజేతలు కావచ్చు 	</td>	<td>	మట్టపల్లి రాఘవేంద్ర రావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1961	</td>	<td>	మీరే విజేత 	</td>	<td>	హిప్నో పద్మా కమలాకర్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1962	</td>	<td>	ముఖ్య మైన ఔషద మొక్కలు -సాగు పద్ధతులు 	</td>	<td>	Dr. కె.పి. శ్రీ వాసుకి, ఐ.ఎఫ్.యస్. 	</td>	<td>	12	</td>	</tr> 
<tr> 	<td>	1963	</td>	<td>	మూర్తిమత్వ వికాసం 	</td>	<td>	Dr.T. భారతి 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1964	</td>	<td>	యూకలిప్టస్	</td>	<td>	ఇన్స్టిట్యూట్ ఆఫ్ వుడ్ సైన్స్ అండ్ టెక్నాలజీ 	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	1965	</td>	<td>	రెవిన్యూఅధికారుల కరదీపిక 	</td>	<td>	కోనేరు రంగారావు 	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	1966	</td>	<td>	రైతాంగ పోరాటం 	</td>	<td>	"కావూరి కుటుంబ రావు 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1967	</td>	<td>	లాభసాటిగా " తేనెటీగల పెంపకం"	</td>	<td>	 -	</td>	<td>	13	</td>	</tr> 
<tr> 	<td>	1968	</td>	<td>	లాభసాటిగా పుట్టగొడుగుల పెంపకం 	</td>	<td>	Mushroom Laboratory	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1969	</td>	<td>	లైఫ్ మేనజ్ మెంట్ 	</td>	<td>	ఆదేళ్ళ శివకుమార్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1970	</td>	<td>	వన విలాసము ( సామాజిక వన వృక్షాల పరిచయం)	</td>	<td>	అటవీశాఖ- సామాజిక వనవిభాగము 	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1971	</td>	<td>	వన సంరక్షణ-మన  సంరక్షణ	</td>	<td>	-	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1972	</td>	<td>	వనం - వన్యం అటవీ మండల అధికారివన్యప్రాణియాజమాన్య విభాగం ఫారెస్ట్ కాంప్లెక్స్ సుబేదారి, వరంగల్ (91+15)	</td>	<td>	-	</td>	<td>	106	</td>	</tr> 
<tr> 	<td>	1973	</td>	<td>	వన్య మృగ సంరక్షకుని సాహసాలు 	</td>	<td>	ఇ.అర్. సి. దావిదార్	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	1974	</td>	<td>	వరంగల్  వనప్రేమి 	</td>	<td>	-	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1975	</td>	<td>	వరంగల్ వనప్రేమి 	</td>	<td>	-	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	1976	</td>	<td>	వరకట్న విశ్లేషణ	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1977	</td>	<td>	వర్మీకంపోస్ట్" - వానపాములతో ఎరువు తయారీ 	</td>	<td>	డక్కన్ డెవలప్మెంట్ సొసైటీ, జహీరాబాద్ 	</td>	<td>	31	</td>	</tr> 
<tr> 	<td>	1978	</td>	<td>	వాటర్షెడ్ అభివృద్దికి భాగస్వామ్యసంకేతన పరిజ్ఞానం	</td>	<td>	-	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1979	</td>	<td>	వాటర్షెడ్ యాజమాన్యం అకౌంటింగ్ పద్ధతులు	</td>	<td>	-	</td>	<td>	5	</td>	</tr> 
<tr> 	<td>	1980	</td>	<td>	విజయం వైపు పయనం  	</td>	<td>	"యండమూరి వీరేంద్రనాథ్ 	"	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	1981	</td>	<td>	విభిన్న దృష్టి తో జీవన దర్శనము 	</td>	<td>	స్వామి సుఖబోదానంద 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1982	</td>	<td>	విముక్తి - విద్య 	</td>	<td>	పాలో ప్రేయుర్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1983	</td>	<td>	విశ్వ రూపము 	</td>	<td>	నండూరి రామమోహనరావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1984	</td>	<td>	విహాహము సంతానము కోసమేనా 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1985	</td>	<td>	వీ. ఎస్ .ఎస్. మైక్రోప్ప్లాన్ ( సూక్ష్మ ప్రణాళిక)	</td>	<td>	ఆంధ్ర ప్రదేశ్ ఫారెస్ట్ అకాడెమి , దూలపల్లి ,హైదరాబాద్ 	</td>	<td>	14	</td>	</tr> 
<tr> 	<td>	1986	</td>	<td>	వృక్ష జగత్తు 	</td>	<td>	రస్కిన్ బాండ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1987	</td>	<td>	వృక్ష సాంకేతిక శాస్త్రం - తృతీయ సంవత్సరం-పేపరు -IV	</td>	<td>	యస్. రాజా షణ్ముఖ రావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1988	</td>	<td>	వృక్షశాస్త్రము, ఇంటర్మీడియట్ మొదట సంవత్సరం	</td>	<td>	కైలసనాధ శర్మ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1989	</td>	<td>	వృక్షశాస్త్రము, ఇంటర్మీడియట్ రెండవ సంవత్సరం	</td>	<td>	సాయిబాబా 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1990	</td>	<td>	వృక్షశాస్త్రము, ద్వితీయ  సంవత్సరం పేపర్ -II వివృత బీజాలు, అంతర్నిర్మణ శాస్త్రం 	</td>	<td>	వై. యస్. ఆర్. శర్మ, 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1991	</td>	<td>	వెదురు 	</td>	<td>	ఐ. సి. ఎఫ్.ఆర్ .ఇ 	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	1992	</td>	<td>	వెదురు" తోటల పెంపకం, అభివృద్ధి, సేకరణ,విలువ పెంపు   	</td>	<td>	Forest Academy, Dulapally. 	</td>	<td>	11	</td>	</tr> 
<tr> 	<td>	1993	</td>	<td>	వెలిగిన జ్యోతి 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1994	</td>	<td>	వెలుతురు పాటలు 	</td>	<td>	డా. టి. రతన్ సింగ్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1995	</td>	<td>	వేప (NEEM) అజాడిరిక్ట ఇండికా 	</td>	<td>	ఇన్స్టిట్యూట్ ఆఫ్ వుడ్ సైన్స్ అండ్ టెక్నాలజీ 	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	1996	</td>	<td>	వేమన పద్యం రత్నాకరము	</td>	<td>	బాగవతుల సుబ్రహ్మణ్యం 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1997	</td>	<td>	వ్యక్తిగత సమస్యలు సమాధానాలు 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1998	</td>	<td>	వ్యక్తిత్వ వికాసము 	</td>	<td>	సి. నరసింహారావు 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	1999	</td>	<td>	"శాస్త్రవేత్తలను ఆకర్షిస్తున్న గిరిజన వైద్యం 				"	</td>	<td>	"Dr. కొప్పుల హేమాద్రి 	"	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	2000	</td>	<td>	సత్య శోధన 	</td>	<td>	ఎ. రాము 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2001	</td>	<td>	సత్య శోధన  లేక ఆత్మకథ 	</td>	<td>	యం. కె. గాంధీ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2002	</td>	<td>	సహజ మేత సంపద 	</td>	<td>	సాగరి రాందాస్ 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2003	</td>	<td>	సాగర సర్వస్వం	</td>	<td>	-	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	2004	</td>	<td>	సాముదాయక అటవీ యాజమాన్యం	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	29	</td>	</tr> 
<tr> 	<td>	2005	</td>	<td>	"సాముదాయక అటవీ యాజమాన్యం 
""నర్సరీ పెంచే పద్ధతులు"" "	</td>	<td>	వినోద్ గౌడ్ 	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	2006	</td>	<td>	సాముదాయక అటవీ యాజమాన్యం- " జెండర్ విషయాల అంతర్లీనం"	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	7	</td>	</tr> 
<tr> 	<td>	2007	</td>	<td>	సాముదాయక అటవీ యాజమాన్యం- "అకౌంటింగ్ పద్ధతులు" 	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	30	</td>	</tr> 
<tr> 	<td>	2008	</td>	<td>	సాముదాయక అటవీ యాజమాన్యం- "అటవీ యాజమాన్య పద్ధతులు"	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	10	</td>	</tr> 
<tr> 	<td>	2009	</td>	<td>	సాముదాయక అటవీ యాజమాన్యం, " మార్గదర్శని"	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	40	</td>	</tr> 
<tr> 	<td>	2010	</td>	<td>	సాముదాయక అటవీ యాజమాన్యం, -"ఫెసిలిటేషన్ నైపున్యతలు" సామాజిక కార్యకర్తల కరదీపిక    	</td>	<td>	ఫారెస్ట్ అకాడెమి , దూలపల్లి, హైదరాబాద్ 	</td>	<td>	8	</td>	</tr> 
<tr> 	<td>	2011	</td>	<td>	సి. సి. ఎ మరియు ప్రవర్తన రూల్స్ 	</td>	<td>	పడాల రామరెడ్డి	</td>	<td>	2	</td>	</tr> 
<tr> 	<td>	2012	</td>	<td>	"సుగంధ & ఔషద మొక్కల సాగు విధానము 	"	</td>	<td>		</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2013	</td>	<td>	సృష్టిలో వేపచెట్టు గ్రామ సంజీవిని 	</td>	<td>	సయ్యద్ బాబు 	</td>	<td>	13	</td>	</tr> 
<tr> 	<td>	2014	</td>	<td>	సెలవులు- నియమ నిబంధము- నియమావళి	</td>	<td>	పి. హనుమంతు	</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	2015	</td>	<td>	సేంద్రియ ఎరువు 	</td>	<td>		</td>	<td>	3	</td>	</tr> 
<tr> 	<td>	2016	</td>	<td>	సేంద్రియ ఎరువు" కుళ్ళే వ్యర్దాలనుండి ఎరువు తయారీ 	</td>	<td>	డక్కన్ డెవలప్మెంట్ సొసైటీ.	</td>	<td>	4	</td>	</tr> 
<tr> 	<td>	2017	</td>	<td>	స్త్రీ పురుష అసమానత సమస్యలు	</td>	<td>	కె. యస్. రెడ్డి	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2018	</td>	<td>	స్త్రీ ల సమస్యలు ఫెమినిస్టు 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2019	</td>	<td>	స్త్రీ స్వేచ్చ 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2020	</td>	<td>	స్త్రీల అసమానత సామాజిక రుగ్మత 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2021	</td>	<td>	స్త్రీల పై అత్యాచారాలు 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2022	</td>	<td>	స్వామివివేకానంద, volume- 1	</td>	<td>	స్వామి జ్ఞానదానంద	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2023	</td>	<td>	స్వామివివేకానంద, volume- 2	</td>	<td>	స్వామి జ్ఞానదానంద	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2024	</td>	<td>	హరిత వినోదం	</td>	<td>	-	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	2025	</td>	<td>	హరిత విహారం	</td>	<td>	-	</td>	<td>	6	</td>	</tr> 
<tr> 	<td>	2026	</td>	<td>	హిమాలయ రహస్యాలు 	</td>	<td>	పైలట్ బాబా 	</td>	<td>	1	</td>	</tr> 
<tr> 	<td>	2027	</td>	<td>	హైందవము - స్త్రీలు 	</td>	<td>	"మల్లాది సుబ్బమ్మ 	"	</td>	<td>	1	</td>	</tr> 

 
</table>
</div>
</div>
</div>
</section>

</asp:Content>
