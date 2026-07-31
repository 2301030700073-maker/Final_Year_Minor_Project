package net.thunderbird.core.ui.common.window;

import androidx.compose.ui.unit.DpSize;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowSizeInfo {
    public final long size;
    public final WindowSizeClass sizeClass;

    public WindowSizeInfo(WindowSizeClass windowSizeClass, long j) {
        this.sizeClass = windowSizeClass;
        this.size = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowSizeInfo) {
            WindowSizeInfo windowSizeInfo = (WindowSizeInfo) obj;
            return this.sizeClass.equals(windowSizeInfo.sizeClass) && this.size == windowSizeInfo.size;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.sizeClass.hashCode() * 31;
        long j = this.size;
        return ((int) (j ^ (j >>> 32))) + hashCode;
    }

    public final String toString() {
        return "WindowSizeInfo(sizeClass=" + this.sizeClass + ", size=" + DpSize.m750toStringimpl(this.size) + ")";
    }
}
