package com.google.android.material.internal;

import android.graphics.Rect;
import android.view.WindowManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WindowUtils$Api30Impl {
    public static Rect getCurrentWindowBounds(WindowManager windowManager) {
        return windowManager.getCurrentWindowMetrics().getBounds();
    }
}
