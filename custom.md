SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Card(
color: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
bottomRight: Radius.circular(10),
bottomLeft: Radius.circular(10),
),
),
elevation: 5,
child: ClipPath(
child: Container(
height: 100.0,
decoration: BoxDecoration(
border: Border(
right: BorderSide(
color: Theme.of(context).primaryColor, width: 9)),
),
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Hero(
tag: job.imageUrl,
child: Material(
child: GestureDetector(
onTap: () => Navigator.of(context)
.pushNamed(JobDetail.routeName, arguments: job.id),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
CircleAvatar(
maxRadius: 30.0,
minRadius: 28.0,
backgroundImage: Image.a,
),
Container(
alignment: Alignment.bottomCenter,
child: Column(
// mainAxisSize: MainAxisSize.max,
mainAxisAlignment: MainAxisAlignment.spaceAround,
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text(job.company),
Text(job.position, style: kJobTitle),
Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
mainAxisSize: MainAxisSize.max,
children: <Widget>[
Text('\GHC${job.salary}K/year'),
SizedBox(width: 50),
Text('8 days')
],
),
],
),
),
IconButton(
icon: Icon(Icons.bookmark_border),
onPressed: () {},
splashColor: Theme.of(context).primaryColor,
)
],
),
),
),
),
),
),
clipper: ShapeBorderClipper(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(3),
),
),
),
),
),
);
