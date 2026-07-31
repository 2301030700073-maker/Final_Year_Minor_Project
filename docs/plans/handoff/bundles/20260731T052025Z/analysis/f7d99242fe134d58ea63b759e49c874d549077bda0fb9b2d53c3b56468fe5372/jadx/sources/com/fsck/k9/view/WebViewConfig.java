package com.fsck.k9.view;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WebViewConfig {
    public final boolean autoFitWidth;
    public final int textZoom;
    public final boolean useDarkMode;

    public WebViewConfig(int i, boolean z, boolean z2) {
        this.useDarkMode = z;
        this.autoFitWidth = z2;
        this.textZoom = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebViewConfig)) {
            return false;
        }
        WebViewConfig webViewConfig = (WebViewConfig) obj;
        return this.useDarkMode == webViewConfig.useDarkMode && this.autoFitWidth == webViewConfig.autoFitWidth && this.textZoom == webViewConfig.textZoom;
    }

    public final int hashCode() {
        return ((((this.useDarkMode ? 1231 : 1237) * 31) + (this.autoFitWidth ? 1231 : 1237)) * 31) + this.textZoom;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WebViewConfig(useDarkMode=");
        sb.append(this.useDarkMode);
        sb.append(", autoFitWidth=");
        sb.append(this.autoFitWidth);
        sb.append(", textZoom=");
        return CameraDevices$CC.m(sb, this.textZoom, ")");
    }
}
