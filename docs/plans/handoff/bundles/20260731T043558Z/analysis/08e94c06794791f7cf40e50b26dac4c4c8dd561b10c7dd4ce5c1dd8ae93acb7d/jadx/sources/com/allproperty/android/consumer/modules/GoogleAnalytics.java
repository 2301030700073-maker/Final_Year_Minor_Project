package com.allproperty.android.consumer.modules;

import android.os.Bundle;
import com.allproperty.android.consumer.BuildConfig;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GoogleAnalytics.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000bH\u0016J\b\u0010\f\u001a\u00020\tH\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u001a\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u0012\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/allproperty/android/consumer/modules/GoogleAnalytics;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "context", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "analytics", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "getName", "", "getConstants", "", "getUserAppID", "logScreen", "", "name", "payload", "Lcom/facebook/react/bridge/ReadableMap;", "logEvent", "setUserProperty", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class GoogleAnalytics extends ReactContextBaseJavaModule {
    private static final String REACT_CLASS = "GoogleAnalytics";
    private final FirebaseAnalytics analytics;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleAnalytics(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        Intrinsics.checkNotNullExpressionValue(firebaseAnalytics, "getInstance(...)");
        this.analytics = firebaseAnalytics;
        Bundle bundle = new Bundle();
        bundle.putInt("app_build_number", BuildConfig.VERSION_CODE);
        firebaseAnalytics.setDefaultEventParameters(bundle);
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, String> getConstants() {
        return MapsKt.mapOf(TuplesKt.to("userAppID", getUserAppID()));
    }

    private final String getUserAppID() {
        try {
            return (String) Tasks.await(this.analytics.getAppInstanceId());
        } catch (Exception unused) {
            return "";
        }
    }

    @ReactMethod
    public final void logScreen(String name, ReadableMap payload) {
        Intrinsics.checkNotNullParameter(name, "name");
        FirebaseAnalytics firebaseAnalytics = this.analytics;
        Bundle bundle = Arguments.toBundle(payload);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, name);
        bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, name);
        Unit unit = Unit.INSTANCE;
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
    }

    @ReactMethod
    public final void logEvent(String name, ReadableMap payload) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.analytics.logEvent(name, Arguments.toBundle(payload));
    }

    @ReactMethod
    public final void setUserProperty(ReadableMap payload) {
        if (payload == null) {
            return;
        }
        String userAppID = getUserAppID();
        for (Map.Entry<String, Object> entry : payload.toHashMap().entrySet()) {
            this.analytics.setUserProperty(entry.getKey(), String.valueOf(entry.getValue()));
        }
        this.analytics.setUserProperty("user_app_id", userAppID);
    }
}
