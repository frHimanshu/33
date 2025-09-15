import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'feedback_success_alrt_model.dart';
export 'feedback_success_alrt_model.dart';

class FeedbackSuccessAlrtWidget extends StatefulWidget {
  const FeedbackSuccessAlrtWidget({
    super.key,
    required this.onTapLogin,
  });

  final Future Function()? onTapLogin;

  @override
  State<FeedbackSuccessAlrtWidget> createState() =>
      _FeedbackSuccessAlrtWidgetState();
}

class _FeedbackSuccessAlrtWidgetState extends State<FeedbackSuccessAlrtWidget> {
  late FeedbackSuccessAlrtModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackSuccessAlrtModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 396.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 420.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 420.0;
          } else {
            return 420.0;
          }
        }(),
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 391.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 391.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 400.0;
          } else {
            return 400.0;
          }
        }(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(19.0, 31.0, 19.0, 31.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/submit_feedback_img.png',
                width: 116.0,
                height: 120.0,
                fit: BoxFit.contain,
                alignment: Alignment(0.0, 0.0),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Your feedback submitted',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).tertiary,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.5,
                        ),
                  ),
                  Text(
                    'Your review has been submitted \nsuccessfully.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).black40,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.5,
                        ),
                  ),
                ].divide(SizedBox(height: 13.0)),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await widget.onTapLogin?.call();
                },
                text: 'Ok',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        lineHeight: 1.2,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                showLoadingIndicator: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
