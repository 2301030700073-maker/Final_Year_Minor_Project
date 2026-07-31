package com.propertyguru.webkit;

import android.app.Activity;
import android.content.Intent;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.BaseActivityEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.module.annotations.ReactModule;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IncognitoFileChooserActivityEventListenerModule.kt */
@ReactModule(hasConstants = false, name = IncognitoFileChooserActivityEventListenerModule.REACT_CLASS, needsEagerInit = false)
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\u0012\u001a\u00020\u000bH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "activityEventListener", "Lcom/facebook/react/bridge/ActivityEventListener;", "getName", "", "startActivityForResult", "", "activity", "Landroid/app/Activity;", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "requestCode", "", "invalidate", "Companion", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class IncognitoFileChooserActivityEventListenerModule extends ReactContextBaseJavaModule {
    public static final String REACT_CLASS = "IncognitoFileChooserActivityEventListener";
    private ActivityEventListener activityEventListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IncognitoFileChooserActivityEventListenerModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        reactContext.addActivityEventListener(new BaseActivityEventListener() { // from class: com.propertyguru.webkit.IncognitoFileChooserActivityEventListenerModule.1
            @Override // com.facebook.react.bridge.BaseActivityEventListener, com.facebook.react.bridge.ActivityEventListener
            public void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
                ActivityEventListener activityEventListener = IncognitoFileChooserActivityEventListenerModule.this.activityEventListener;
                if (activityEventListener != null) {
                    activityEventListener.onActivityResult(activity, requestCode, resultCode, data);
                }
                IncognitoFileChooserActivityEventListenerModule.this.activityEventListener = null;
            }
        });
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    public final void startActivityForResult(Activity activity, Intent intent, int requestCode, ActivityEventListener activityEventListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(activityEventListener, "activityEventListener");
        this.activityEventListener = activityEventListener;
        activity.startActivityForResult(intent, requestCode);
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule, com.facebook.react.turbomodule.core.interfaces.TurboModule
    public void invalidate() {
        this.activityEventListener = null;
        super.invalidate();
    }
}
