package com.sovranreactnative;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import io.sentry.protocol.MetricSummary;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SovranModule.kt */
@ReactModule(name = "Sovran")
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0014\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010H\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\u0012\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0007J\u0017\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007¢\u0006\u0002\u0010\u0017J$\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u000e2\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0010R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/sovranreactnative/SovranModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "onInitialized", "Lkotlin/Function0;", "", "getOnInitialized", "()Lkotlin/jvm/functions/Function0;", "setOnInitialized", "(Lkotlin/jvm/functions/Function0;)V", "getName", "", "getConstants", "", "initialize", "addListener", "eventName", "removeListeners", MetricSummary.JsonKeys.COUNT, "", "(Ljava/lang/Integer;)V", "dispatch", "action", "payload", "", "Companion", "segment_sovran-react-native_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class SovranModule extends ReactContextBaseJavaModule {
    public static final String ON_STORE_ACTION = "onStoreAction";
    private Function0<Unit> onInitialized;

    @ReactMethod
    public final void addListener(String eventName) {
    }

    @ReactMethod
    public final void removeListeners(Integer count) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SovranModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.onInitialized = new Function0() { // from class: com.sovranreactnative.SovranModule$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit unit;
                unit = Unit.INSTANCE;
                return unit;
            }
        };
    }

    public final Function0<Unit> getOnInitialized() {
        return this.onInitialized;
    }

    public final void setOnInitialized(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onInitialized = function0;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "Sovran";
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, String> getConstants() {
        return MapsKt.mapOf(TuplesKt.to("ON_STORE_ACTION", ON_STORE_ACTION));
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule
    public void initialize() {
        super.initialize();
        this.onInitialized.invoke();
    }

    public final void dispatch(String action, Map<String, ? extends Object> payload) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(payload, "payload");
        WritableNativeMap makeNativeMap = Arguments.makeNativeMap((Map<String, Object>) MapsKt.mapOf(TuplesKt.to("type", action), TuplesKt.to("payload", payload)));
        Intrinsics.checkNotNullExpressionValue(makeNativeMap, "makeNativeMap(...)");
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) getReactApplicationContext().getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(ON_STORE_ACTION, makeNativeMap);
    }
}
