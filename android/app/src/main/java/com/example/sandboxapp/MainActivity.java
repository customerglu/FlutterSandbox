package com.example.sandboxapp;

import android.os.Bundle;

import io.flutter.embedding.android.FlutterActivity;
import com.customerglu.customerglu_plugin.CGUtils;

public class MainActivity extends FlutterActivity {

    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        CGUtils.gluSDKDebuggingMode(this,true);
        CGUtils.setActivity(this);

        // CGUtils.setupCGDeepLinkIntentData(getActivity());


    }

}
