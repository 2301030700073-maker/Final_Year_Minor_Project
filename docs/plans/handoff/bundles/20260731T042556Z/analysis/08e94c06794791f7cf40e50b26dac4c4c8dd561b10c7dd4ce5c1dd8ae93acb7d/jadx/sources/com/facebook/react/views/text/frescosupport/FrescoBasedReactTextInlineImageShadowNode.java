package com.facebook.react.views.text.frescosupport;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.logging.FLog;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.common.ReactConstants;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.views.text.internal.ReactTextInlineImageShadowNode;
import com.facebook.react.views.text.internal.span.TextInlineImageSpan;
import java.util.Locale;

/* loaded from: classes3.dex */
class FrescoBasedReactTextInlineImageShadowNode extends ReactTextInlineImageShadowNode {
    private final Object mCallerContext;
    private final AbstractDraweeControllerBuilder mDraweeControllerBuilder;
    private ReadableMap mHeaders;
    private String mResizeMode;
    private Uri mUri;
    private float mWidth = Float.NaN;
    private float mHeight = Float.NaN;
    private int mTintColor = 0;

    @Override // com.facebook.react.uimanager.ReactShadowNodeImpl, com.facebook.react.uimanager.ReactShadowNode
    public boolean isVirtual() {
        return true;
    }

    public FrescoBasedReactTextInlineImageShadowNode(AbstractDraweeControllerBuilder abstractDraweeControllerBuilder, Object obj) {
        this.mDraweeControllerBuilder = abstractDraweeControllerBuilder;
        this.mCallerContext = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        if (r1.getScheme() == null) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    @com.facebook.react.uimanager.annotations.ReactProp(name = "src")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSource(com.facebook.react.bridge.ReadableArray r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L25
            int r1 = r5.size()
            if (r1 == 0) goto L25
            r1 = 0
            com.facebook.react.bridge.ReadableType r2 = r5.getType(r1)
            com.facebook.react.bridge.ReadableType r3 = com.facebook.react.bridge.ReadableType.Map
            if (r2 == r3) goto L13
            goto L25
        L13:
            com.facebook.react.bridge.ReadableMap r5 = r5.getMap(r1)
            java.lang.Object r5 = androidx.core.util.Preconditions.checkNotNull(r5)
            com.facebook.react.bridge.ReadableMap r5 = (com.facebook.react.bridge.ReadableMap) r5
            java.lang.String r1 = "uri"
            java.lang.String r5 = r5.getString(r1)
            goto L26
        L25:
            r5 = r0
        L26:
            if (r5 == 0) goto L3e
            android.net.Uri r1 = android.net.Uri.parse(r5)     // Catch: java.lang.Exception -> L34
            java.lang.String r2 = r1.getScheme()     // Catch: java.lang.Exception -> L33
            if (r2 != 0) goto L33
            goto L34
        L33:
            r0 = r1
        L34:
            if (r0 != 0) goto L3e
            com.facebook.react.uimanager.ThemedReactContext r0 = r4.getThemedContext()
            android.net.Uri r0 = getResourceDrawableUri(r0, r5)
        L3e:
            android.net.Uri r5 = r4.mUri
            if (r0 == r5) goto L45
            r4.markUpdated()
        L45:
            r4.mUri = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.frescosupport.FrescoBasedReactTextInlineImageShadowNode.setSource(com.facebook.react.bridge.ReadableArray):void");
    }

    @ReactProp(name = "headers")
    public void setHeaders(ReadableMap readableMap) {
        this.mHeaders = readableMap;
    }

    @ReactProp(customType = "Color", name = "tintColor")
    public void setTintColor(int i) {
        this.mTintColor = i;
    }

    @Override // com.facebook.react.uimanager.LayoutShadowNode
    public void setWidth(Dynamic dynamic) {
        if (dynamic.getType() == ReadableType.Number) {
            this.mWidth = (float) dynamic.asDouble();
        } else {
            FLog.w(ReactConstants.TAG, "Inline images must not have percentage based width");
            this.mWidth = Float.NaN;
        }
    }

    @Override // com.facebook.react.uimanager.LayoutShadowNode
    public void setHeight(Dynamic dynamic) {
        if (dynamic.getType() == ReadableType.Number) {
            this.mHeight = (float) dynamic.asDouble();
        } else {
            FLog.w(ReactConstants.TAG, "Inline images must not have percentage based height");
            this.mHeight = Float.NaN;
        }
    }

    @ReactProp(name = ViewProps.RESIZE_MODE)
    public void setResizeMode(String str) {
        this.mResizeMode = str;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public ReadableMap getHeaders() {
        return this.mHeaders;
    }

    private static Uri getResourceDrawableUri(Context context, String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return new Uri.Builder().scheme(UriUtil.LOCAL_RESOURCE_SCHEME).path(String.valueOf(context.getResources().getIdentifier(str.toLowerCase(Locale.getDefault()).replace("-", "_"), "drawable", context.getPackageName()))).build();
    }

    @Override // com.facebook.react.views.text.internal.ReactTextInlineImageShadowNode
    public TextInlineImageSpan buildInlineImageSpan() {
        return new FrescoBasedReactTextInlineImageSpan(getThemedContext().getResources(), (int) Math.ceil(this.mHeight), (int) Math.ceil(this.mWidth), this.mTintColor, getUri(), getHeaders(), getDraweeControllerBuilder(), getCallerContext(), this.mResizeMode);
    }

    public AbstractDraweeControllerBuilder getDraweeControllerBuilder() {
        return this.mDraweeControllerBuilder;
    }

    public Object getCallerContext() {
        return this.mCallerContext;
    }
}
