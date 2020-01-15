import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/job.dart';
import 'package:weather_app/screen/job_detail.dart';
import 'package:weather_app/styles/styles.dart';

class JobItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final job = Provider.of<Job>(context);
    return Padding(
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
            child: GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamed(JobDetail.routeName, arguments: job.id),
              child: Hero(
                tag: job.imageUrl,
                child: Material(
                  child: ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      maxRadius: 30,
                      minRadius: 25,
                      backgroundImage: NetworkImage(job.imageUrl, scale: 19),
                    ),
                    title: Text(job.position, style: kJobTexStyles),
                    subtitle: Text('\GHC${job.salary}/yr'),
                    trailing: IconButton(
                      icon: job.isFavourite
                          ? Icon(Icons.bookmark_border)
                          : Icon(Icons.bookmark),
                      onPressed: () {
                        final snackBar =
                            Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('You have bookmarked 1 job'),
                          action: SnackBarAction(
                            onPressed: () {},
                            label: 'UNDO',
                          ),
                        ));
                        return snackBar;
                      },
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
    );
  }
}
