package com.google.android.material.internal;

import android.graphics.Rect;
import android.view.WindowManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WindowUtils$Api30Impl {
    public static Rect getCurrentWindowBounds(WindowManager windowManager) {
        return windowManager.getCurrentWindowMetrics().getBounds();
    }
}
