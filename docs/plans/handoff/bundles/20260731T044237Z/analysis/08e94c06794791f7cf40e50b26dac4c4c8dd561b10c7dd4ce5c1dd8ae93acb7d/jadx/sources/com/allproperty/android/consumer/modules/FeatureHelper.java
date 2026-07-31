package com.allproperty.android.consumer.modules;

import com.allproperty.android.consumer.modules.remoteconfig.RemoteConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.InstallationTokenResult;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FeatureHelper.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0014\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u000bH\u0007J\b\u0010\u0010\u001a\u00020\u000bH\u0007J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007¨\u0006\u001d"}, d2 = {"Lcom/allproperty/android/consumer/modules/FeatureHelper;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "context", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "getConstants", "", "sendEvent", "", "eventName", "params", "Lcom/facebook/react/bridge/WritableMap;", "startConfigUpdateListener", "stopConfigUpdateListener", "fetchAndActivate", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "getStringValue", SDKConstants.PARAM_KEY, "defaultValue", "getBooleanValue", "", "getIntValue", "", "getAuthToken", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FeatureHelper extends ReactContextBaseJavaModule {
    private static final String REACT_CLASS = "FeatureHelper";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final RemoteConfig remoteConfig = new RemoteConfig();

    /* compiled from: FeatureHelper.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "remoteConfig", "Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;", "getRemoteConfig", "()Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RemoteConfig getRemoteConfig() {
            return FeatureHelper.remoteConfig;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureHelper(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, String> getConstants() {
        return MapsKt.mapOf(TuplesKt.to("EVENT_CONFIG_UPDATE", "configUpdate"));
    }

    private final void sendEvent(String eventName, WritableMap params) {
        EventEmitter companion = EventEmitter.INSTANCE.getInstance();
        if (companion != null) {
            companion.sendNativeEvent(EventEmitter.REMOTE_CONFIG_UPDATE, params);
        }
    }

    @ReactMethod
    public final void startConfigUpdateListener() {
        remoteConfig.startConfigUpdateListener(new Function2() { // from class: com.allproperty.android.consumer.modules.FeatureHelper$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit startConfigUpdateListener$lambda$0;
                startConfigUpdateListener$lambda$0 = FeatureHelper.startConfigUpdateListener$lambda$0(FeatureHelper.this, (String) obj, (WritableMap) obj2);
                return startConfigUpdateListener$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startConfigUpdateListener$lambda$0(FeatureHelper featureHelper, String eventName, WritableMap params) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(params, "params");
        featureHelper.sendEvent(eventName, params);
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void stopConfigUpdateListener() {
        remoteConfig.stopConfigUpdateListener();
    }

    @ReactMethod
    public final void fetchAndActivate(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        remoteConfig.fetchAndActivate().addOnCompleteListener(new OnCompleteListener() { // from class: com.allproperty.android.consumer.modules.FeatureHelper$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FeatureHelper.fetchAndActivate$lambda$1(Promise.this, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchAndActivate$lambda$1(Promise promise, Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        promise.resolve(Boolean.valueOf(task.isSuccessful()));
    }

    @ReactMethod
    public final void getStringValue(String key, String defaultValue, Promise promise) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(promise, "promise");
        promise.resolve(remoteConfig.getStringValue(key, defaultValue));
    }

    @ReactMethod
    public final void getBooleanValue(String key, boolean defaultValue, Promise promise) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(promise, "promise");
        promise.resolve(Boolean.valueOf(remoteConfig.getBooleanValue(key, defaultValue)));
    }

    @ReactMethod
    public final void getIntValue(String key, int defaultValue, Promise promise) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(promise, "promise");
        promise.resolve(Integer.valueOf(remoteConfig.getIntValue(key, defaultValue)));
    }

    @ReactMethod
    public final void getAuthToken(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        FirebaseInstallations.getInstance().getToken(true).addOnCompleteListener(new OnCompleteListener() { // from class: com.allproperty.android.consumer.modules.FeatureHelper$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FeatureHelper.getAuthToken$lambda$2(Promise.this, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getAuthToken$lambda$2(Promise promise, Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            InstallationTokenResult installationTokenResult = (InstallationTokenResult) task.getResult();
            promise.resolve(installationTokenResult != null ? installationTokenResult.getToken() : null);
        } else {
            promise.resolve("");
        }
    }
}
