package com.allproperty.android.consumer;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.allproperty.android.consumer.modules.SplashScreen;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.ReactActivity;
import com.facebook.react.ReactActivityDelegate;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactActivityDelegate;
import expo.modules.ReactActivityDelegateWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0014J\b\u0010\u000e\u001a\u00020\u000fH\u0014¨\u0006\u0010"}, d2 = {"Lcom/allproperty/android/consumer/MainActivity;", "Lcom/facebook/react/ReactActivity;", "<init>", "()V", "onCreate", "", "savedInstance", "Landroid/os/Bundle;", "setTransparentNavigationBar", "onNewIntent", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "getMainComponentName", "", "createReactActivityDelegate", "Lcom/facebook/react/ReactActivityDelegate;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MainActivity extends ReactActivity {
    @Override // com.facebook.react.ReactActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstance) {
        SplashScreen.INSTANCE.onCreate(this);
        super.onCreate(null);
        getWindow().setBackgroundDrawableResource(R.color.pg_white);
        setTransparentNavigationBar();
    }

    private final void setTransparentNavigationBar() {
        if (Build.VERSION.SDK_INT >= 27) {
            getWindow().getDecorView().setSystemUiVisibility(784);
            getWindow().setNavigationBarColor(getColor(android.R.color.transparent));
        }
    }

    @Override // com.facebook.react.ReactActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // com.facebook.react.ReactActivity
    protected String getMainComponentName() {
        return "host";
    }

    @Override // com.facebook.react.ReactActivity
    protected ReactActivityDelegate createReactActivityDelegate() {
        MainActivity mainActivity = this;
        return new ReactActivityDelegateWrapper(mainActivity, true, new DefaultReactActivityDelegate(mainActivity, getMainComponentName(), DefaultNewArchitectureEntryPoint.getFabricEnabled()));
    }
}
