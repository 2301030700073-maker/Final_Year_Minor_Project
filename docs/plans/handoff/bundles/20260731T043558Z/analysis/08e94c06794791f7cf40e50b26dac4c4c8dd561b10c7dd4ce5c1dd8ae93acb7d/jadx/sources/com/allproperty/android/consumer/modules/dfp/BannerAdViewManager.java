package com.allproperty.android.consumer.modules.dfp;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BannerAdViewManager.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0014J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0007J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0007J\u001a\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0016\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0016¨\u0006\u001a"}, d2 = {"Lcom/allproperty/android/consumer/modules/dfp/BannerAdViewManager;", "Lcom/facebook/react/uimanager/SimpleViewManager;", "Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;", "<init>", "()V", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setAdUnitID", "", ViewHierarchyConstants.VIEW_KEY, "adUnitId", "setWidth", "width", "", "setHeight", "height", "setTargeting", "targeting", "Lcom/facebook/react/bridge/ReadableMap;", "getExportedCustomBubblingEventTypeConstants", "", "", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BannerAdViewManager extends SimpleViewManager<BannerAdView> {
    private static final String REACT_CLASS = "BannerAdView";

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public BannerAdView createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new BannerAdView(reactContext, null, 0, 6, null);
    }

    @ReactProp(name = "adUnitID")
    public final void setAdUnitID(BannerAdView view, String adUnitId) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (adUnitId != null) {
            view.setAdUnitID(adUnitId);
        }
    }

    @ReactProp(name = "width")
    public final void setWidth(BannerAdView view, int width) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setAdWidth(width);
    }

    @ReactProp(name = "height")
    public final void setHeight(BannerAdView view, int height) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setAdHeight(height);
    }

    @ReactProp(name = "targeting")
    public final void setTargeting(BannerAdView view, ReadableMap targeting) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTargeting(targeting);
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    public Map<String, Object> getExportedCustomBubblingEventTypeConstants() {
        return MapBuilder.builder().put("onAdLoaded", MapBuilder.of("phasedRegistrationNames", MapBuilder.of("bubbled", "onAdLoaded"))).put("onAdFailedToLoad", MapBuilder.of("phasedRegistrationNames", MapBuilder.of("bubbled", "onAdFailedToLoad"))).put("onAdClicked", MapBuilder.of("phasedRegistrationNames", MapBuilder.of("bubbled", "onAdClicked"))).build();
    }
}
