package com.segmentanalyticsreactnative;

import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsReactNativePackage.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00100\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;", "Lcom/facebook/react/ReactPackage;", "<init>", "()V", "isInitialized", "", "anonymousId", "", "module", "Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;", "createNativeModules", "", "Lcom/facebook/react/bridge/NativeModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "createViewManagers", "Lcom/facebook/react/uimanager/ViewManager;", "setAnonymousId", "", "nativeAnonymousId", "segment_analytics-react-native_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class AnalyticsReactNativePackage implements ReactPackage {
    private String anonymousId;
    private boolean isInitialized;
    private AnalyticsReactNativeModule module;

    @Override // com.facebook.react.ReactPackage
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        AnalyticsReactNativeModule analyticsReactNativeModule = new AnalyticsReactNativeModule(reactContext);
        this.module = analyticsReactNativeModule;
        analyticsReactNativeModule.setOnInitialized(new Function0() { // from class: com.segmentanalyticsreactnative.AnalyticsReactNativePackage$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit createNativeModules$lambda$1;
                createNativeModules$lambda$1 = AnalyticsReactNativePackage.createNativeModules$lambda$1(AnalyticsReactNativePackage.this);
                return createNativeModules$lambda$1;
            }
        });
        AnalyticsReactNativeModule analyticsReactNativeModule2 = this.module;
        Intrinsics.checkNotNull(analyticsReactNativeModule2, "null cannot be cast to non-null type com.facebook.react.bridge.NativeModule");
        return CollectionsKt.listOf(analyticsReactNativeModule2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createNativeModules$lambda$1(AnalyticsReactNativePackage analyticsReactNativePackage) {
        AnalyticsReactNativeModule analyticsReactNativeModule;
        analyticsReactNativePackage.isInitialized = true;
        String str = analyticsReactNativePackage.anonymousId;
        if (str != null && (analyticsReactNativeModule = analyticsReactNativePackage.module) != null) {
            analyticsReactNativeModule.setAnonymousId(str);
        }
        return Unit.INSTANCE;
    }

    @Override // com.facebook.react.ReactPackage
    public List<ViewManager<?, ?>> createViewManagers(ReactApplicationContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return CollectionsKt.emptyList();
    }

    public final void setAnonymousId(String nativeAnonymousId) {
        AnalyticsReactNativeModule analyticsReactNativeModule;
        Intrinsics.checkNotNullParameter(nativeAnonymousId, "nativeAnonymousId");
        if (this.isInitialized) {
            this.anonymousId = nativeAnonymousId;
            if (nativeAnonymousId == null || (analyticsReactNativeModule = this.module) == null) {
                return;
            }
            analyticsReactNativeModule.setAnonymousId(nativeAnonymousId);
            return;
        }
        this.anonymousId = nativeAnonymousId;
    }
}
