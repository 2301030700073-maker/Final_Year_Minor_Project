package com.allproperty.android.consumer.modules.performance;

import com.allproperty.android.consumer.MainApplication;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PerformanceMonitorModule.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0010H\u0007¨\u0006\u0012"}, d2 = {"Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "startTrace", "", ViewHierarchyNode.JsonKeys.IDENTIFIER, BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "stopTrace", "getNativeStartTime", "nativeAppTrace", "", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PerformanceMonitorModule extends ReactContextBaseJavaModule {
    private static final String REACT_CLASS = "PerformanceMonitorModule";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final PerformanceMonitor performanceMonitor = new PerformanceMonitor();

    /* compiled from: PerformanceMonitorModule.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "performanceMonitor", "Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;", "getPerformanceMonitor", "()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PerformanceMonitor getPerformanceMonitor() {
            return PerformanceMonitorModule.performanceMonitor;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PerformanceMonitorModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @ReactMethod
    public final void startTrace(String identifier, Promise promise) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            performanceMonitor.startTrace(identifier);
            promise.resolve(identifier);
        } catch (Exception e) {
            promise.reject("StartTraceError", e);
        }
    }

    @ReactMethod
    public final void stopTrace(String identifier, Promise promise) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            performanceMonitor.stopTrace(identifier);
            promise.resolve(null);
        } catch (Exception e) {
            promise.reject("StopTraceError", e);
        }
    }

    @ReactMethod
    public final void getNativeStartTime(Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            promise.resolve(Double.valueOf(MainApplication.INSTANCE.getNativeStartTime()));
        } catch (Exception e) {
            promise.reject("ERROR", "Failed to retrieve native launch time", e);
        }
    }

    @ReactMethod
    public final void nativeAppTrace(boolean stopTrace) {
        performanceMonitor.nativeAppTrace(stopTrace);
    }
}
