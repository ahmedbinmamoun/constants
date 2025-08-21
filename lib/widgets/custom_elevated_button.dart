
class CustomElevatedButton extends StatelessWidget {
  VoidCallback onPressed;
  String? text;
  Color? backgroundColor;
  Color? borderColorSide;
  bool hasIcon;
  Widget? child;
  double? verticalPadding;
   CustomElevatedButton({super.key,
   required this.onPressed,
    this.text,
   this.backgroundColor = AppColors.primaryLight,
   this.borderColorSide,
   this.hasIcon = false,
   this.child,
   this.verticalPadding = 0.015
   });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: ElevatedButton(
        
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding! * height ,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
                    color: borderColorSide ?? AppColors.transparentColor,
                    width: 1,
            )
          )
        ),
         child: hasIcon ? 
         child
         :
         Text(
                  text ?? '',
                  style: AppStyle.medium20White,
         )),
    );
       
  }
}