package com.reactnativeclusterer;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

/* loaded from: classes5.dex */
public class ClustererModule extends ReactContextBaseJavaModule {
    public static final String NAME = "Clusterer";

    private static native void initialize(long j, String str);

    public ClustererModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return NAME;
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public boolean install() {
        try {
            System.loadLibrary("rnclusterer");
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            initialize(reactApplicationContext.getJavaScriptContextHolder().get(), reactApplicationContext.getFilesDir().getAbsolutePath());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
