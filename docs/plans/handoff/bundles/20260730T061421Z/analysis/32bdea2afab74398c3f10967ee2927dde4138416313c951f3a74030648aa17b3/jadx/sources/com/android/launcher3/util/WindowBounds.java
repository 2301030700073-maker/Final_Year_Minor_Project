package com.android.launcher3.util;

import android.graphics.Point;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class WindowBounds {
    public final Point availableSize;
    public final Rect bounds;
    public final Rect insets;

    public WindowBounds(Rect rect, Rect rect2) {
        this.bounds = rect;
        this.insets = rect2;
        this.availableSize = new Point((rect.width() - rect2.left) - rect2.right, (rect.height() - rect2.top) - rect2.bottom);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WindowBounds)) {
            return false;
        }
        WindowBounds windowBounds = (WindowBounds) obj;
        return windowBounds.bounds.equals(this.bounds) && windowBounds.insets.equals(this.insets);
    }
}
