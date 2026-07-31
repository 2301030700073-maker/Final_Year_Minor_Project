package com.propertyguru.webkit;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: IncognitoWebViewManager.kt */
@ReactModule(hasConstants = false, name = IncognitoWebViewManager.REACT_CLASS, needsEagerInit = false)
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0014\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u001a\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0002\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0002\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0002\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¨\u0006 "}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebViewManager;", "Lcom/facebook/react/uimanager/SimpleViewManager;", "Lcom/propertyguru/webkit/IncognitoWebView;", "<init>", "()V", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "getExportedCustomDirectEventTypeConstants", "", "", "", "getName", "setSource", "", ViewHierarchyConstants.VIEW_KEY, "source", "Lcom/facebook/react/bridge/ReadableMap;", "setInjectedJavaScript", "injectedJavaScript", "setInterceptLinks", "array", "Lcom/facebook/react/bridge/ReadableArray;", "setOnLinkPressed", "enabled", "", "(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/Boolean;)V", "setOnLoadStart", "setOnLoadEnd", "setOnError", "onDropViewInstance", "Companion", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class IncognitoWebViewManager extends SimpleViewManager<IncognitoWebView> {
    public static final String REACT_CLASS = "IncognitoWebView";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public IncognitoWebView createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new IncognitoWebView(reactContext);
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        Map<String, Object> build = MapBuilder.builder().put(IncognitoWebView.EVENT_ON_LOAD_START, MapBuilder.of("registrationName", IncognitoWebView.EVENT_ON_LOAD_START)).put(IncognitoWebView.EVENT_ON_LOAD_END, MapBuilder.of("registrationName", IncognitoWebView.EVENT_ON_LOAD_END)).put(IncognitoWebView.EVENT_ON_ERROR, MapBuilder.of("registrationName", IncognitoWebView.EVENT_ON_ERROR)).put(IncognitoWebView.EVENT_ON_LINK_PRESSED, MapBuilder.of("registrationName", IncognitoWebView.EVENT_ON_LINK_PRESSED)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @ReactProp(name = "source")
    public final void setSource(IncognitoWebView view, ReadableMap source) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setSource(source);
    }

    @ReactProp(name = "injectedJavaScript")
    public final void setInjectedJavaScript(IncognitoWebView view, String injectedJavaScript) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setInjectedJavaScript(injectedJavaScript);
    }

    @ReactProp(name = "interceptLinks")
    public final void setInterceptLinks(IncognitoWebView view, ReadableArray array) {
        String string;
        Intrinsics.checkNotNullParameter(view, "view");
        if (array == null) {
            view.setInterceptLinks(null);
            return;
        }
        int size = array.size();
        if (size == 0) {
            view.setInterceptLinks(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            if (!array.isNull(i) && array.getType(i) == ReadableType.String && (string = array.getString(i)) != null && !StringsKt.isBlank(string)) {
                arrayList.add(string);
            }
        }
        if (!arrayList.isEmpty()) {
            view.setInterceptLinks(arrayList);
        } else {
            view.setInterceptLinks(null);
        }
    }

    @ReactProp(name = IncognitoWebView.EVENT_ON_LINK_PRESSED)
    public final void setOnLinkPressed(IncognitoWebView view, Boolean enabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShouldDispatchOnLinkPressedEvent(enabled != null ? enabled.booleanValue() : false);
    }

    @ReactProp(name = IncognitoWebView.EVENT_ON_LOAD_START)
    public final void setOnLoadStart(IncognitoWebView view, Boolean enabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShouldDispatchLoadStartEvent(enabled != null ? enabled.booleanValue() : false);
    }

    @ReactProp(name = IncognitoWebView.EVENT_ON_LOAD_END)
    public final void setOnLoadEnd(IncognitoWebView view, Boolean enabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShouldDispatchLoadEndEvent(enabled != null ? enabled.booleanValue() : false);
    }

    @ReactProp(name = IncognitoWebView.EVENT_ON_ERROR)
    public final void setOnError(IncognitoWebView view, Boolean enabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShouldDispatchErrorEvent(enabled != null ? enabled.booleanValue() : false);
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public void onDropViewInstance(IncognitoWebView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.stopLoading();
        super.onDropViewInstance((IncognitoWebViewManager) view);
    }
}
