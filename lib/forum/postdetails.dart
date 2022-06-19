import 'package:flutter/material.dart';

class postdetails extends StatelessWidget {
  // const postdetails({Key? key, int postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.bookmark_outline,
                    size: 20,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_outline,
                    size: 20,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    size: 20,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),

      body: Container(
        color: Colors.grey,
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: ListView(
              children: [
                Text("Mathematics",
                  // title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage('assets/images/1.jpg'),
                    ),
                     SizedBox(
                      width: 8,
                    ),
                    Text("author"
                        // '$author, '
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("date",
                      // date,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 16,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          '6.5K Views',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,

                          ),
                        )
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          '106 Likes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,

                          ),
                        )
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          '55 Saves',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            // fontWeight: FontWeight.w100,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    // child: Image.asset(image),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'A',
                          style:TextStyle
                          // GoogleFonts.notoSerif
                            (
                              color: Colors.black, fontSize: 32)),
                      TextSpan(
                        text:
                        ' How can i solve this intergration question'
                            'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum '
                            'et Malo (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book'
                            ' is a treatise on the theory of ethics, very popular during the Renaissance.'
                            ' The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line '
                            'in section 1.10.32:                                                   '
                          "If ∫ sec²(7 – 4x)dx = a tan (7 – 4x) + C, then value of a is:",
                        style: TextStyle
                        // GoogleFonts.notoSerif
                          (
                          color: Colors.black,
                          fontSize: 18,
                          height: 1.7,
                          wordSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
