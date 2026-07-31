package com.shopify.reactnative.flash_list;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.AutoLayoutViewManagerDelegate;
import com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: AutoLayoutViewManager.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001%B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0014J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J \u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00100\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0017J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0015H\u0017J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u0018\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001aH\u0017J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001aH\u0017J\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u0015H\u0017J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aH\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/shopify/reactnative/flash_list/AutoLayoutView;", "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;", "<init>", "()V", "mDelegate", "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;", "getName", "", "getDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "createViewInstance", "context", "Lcom/facebook/react/uimanager/ThemedReactContext;", "getExportedCustomDirectEventTypeConstants", "", "setHorizontal", "", ViewHierarchyConstants.VIEW_KEY, "isHorizontal", "", "setDisableAutoLayout", "disableAutoLayout", "setScrollOffset", "scrollOffset", "", "setWindowSize", "windowSize", "setRenderAheadOffset", "renderOffset", "setEnableInstrumentation", "enableInstrumentation", "convertToPixelLayout", "", "dp", "density", "Companion", "shopify_flash-list_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@ReactModule(name = AutoLayoutViewManager.REACT_CLASS)
/* loaded from: classes5.dex */
public final class AutoLayoutViewManager extends ViewGroupManager<AutoLayoutView> implements AutoLayoutViewManagerInterface<AutoLayoutView> {
    public static final String REACT_CLASS = "AutoLayoutView";
    private final AutoLayoutViewManagerDelegate<AutoLayoutView, AutoLayoutViewManager> mDelegate = new AutoLayoutViewManagerDelegate<>(this);

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.uimanager.ViewManager
    protected ViewManagerDelegate<AutoLayoutView> getDelegate() {
        return this.mDelegate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public AutoLayoutView createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        AutoLayoutView autoLayoutView = new AutoLayoutView(context);
        autoLayoutView.setPixelDensity(context.getResources().getDisplayMetrics().density);
        return autoLayoutView;
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    public Map<String, Map<String, String>> getExportedCustomDirectEventTypeConstants() {
        return MapsKt.mutableMapOf(TuplesKt.to(BlankAreaEvent.EVENT_NAME, MapsKt.mutableMapOf(TuplesKt.to("registrationName", BlankAreaEvent.EVENT_NAME))));
    }

    @Override // com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface
    @ReactProp(name = "horizontal")
    public void setHorizontal(AutoLayoutView view, boolean isHorizontal) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.getAlShadow().setHorizontal(isHorizontal);
    }

    @Override // com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface
    @ReactProp(name = "disableAutoLayout")
    public void setDisableAutoLayout(AutoLayoutView view, boolean disableAutoLayout) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setDisableAutoLayout(disableAutoLayout);
    }

    @Override // com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface
    @ReactProp(name = "scrollOffset")
    public void setScrollOffset(AutoLayoutView view, double scrollOffset) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.getAlShadow().setScrollOffset(convertToPixelLayout(scrollOffset, view.getPixelDensity()));
    }

    @Override // com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface
    @ReactProp(name = "windowSize")
    public void setWindowSize(AutoLayoutView view, double windowSize) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.getAlShadow().setWindowSize(convertToPixelLayout(windowSize, view.getPixelDensity()));
    }

    @Override // com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface
    @ReactProp(name = "renderAheadOffset")
    public void setRenderAheadOffset(AutoLayoutView view, double renderOffset) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.getAlShadow().setRenderOffset(convertToPixelLayout(renderOffset, view.getPixelDensity()));
    }

    @Override // com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface
    @ReactProp(name = "enableInstrumentation")
    public void setEnableInstrumentation(AutoLayoutView view, boolean enableInstrumentation) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setEnableInstrumentation(enableInstrumentation);
    }

    private final int convertToPixelLayout(double dp, double density) {
        return MathKt.roundToInt(dp * density);
    }
}
