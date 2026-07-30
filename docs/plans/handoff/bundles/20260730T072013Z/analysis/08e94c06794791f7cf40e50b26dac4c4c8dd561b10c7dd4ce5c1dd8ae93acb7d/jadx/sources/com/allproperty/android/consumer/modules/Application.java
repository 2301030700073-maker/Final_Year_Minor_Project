package com.allproperty.android.consumer.modules;

import android.os.Build;
import com.allproperty.android.consumer.BuildConfig;
import com.allproperty.android.consumer.R;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Application.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001c\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n \n*\u0004\u0018\u00010\u00070\u00070\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/allproperty/android/consumer/modules/Application;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "context", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "getConstants", "", "kotlin.jvm.PlatformType", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Application extends ReactContextBaseJavaModule {
    private static final String REACT_CLASS = "Application";
    private final ReactApplicationContext context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Application(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, String> getConstants() {
        return MapsKt.mapOf(TuplesKt.to("version", BuildConfig.VERSION_NAME), TuplesKt.to("systemVersion", Build.VERSION.RELEASE), TuplesKt.to("applicationName", this.context.getString(R.string.app_name)), TuplesKt.to("buildNumber", "202301724"), TuplesKt.to("deviceModel", Build.MANUFACTURER + " " + Build.MODEL), TuplesKt.to("bundleId", "com.allproperty.android.consumer.my"));
    }
}
