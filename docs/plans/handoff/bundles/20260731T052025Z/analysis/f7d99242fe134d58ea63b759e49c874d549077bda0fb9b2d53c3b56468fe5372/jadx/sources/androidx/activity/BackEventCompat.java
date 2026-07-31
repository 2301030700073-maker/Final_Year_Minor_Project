package androidx.activity;

import androidx.navigationevent.NavigationEvent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackEventCompat {
    public final long frameTimeMillis;
    public final float progress;
    public final int swipeEdge;
    public final float touchX;
    public final float touchY;

    public BackEventCompat(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        float f = navigationEvent.touchX;
        float f2 = navigationEvent.touchY;
        float f3 = navigationEvent.progress;
        int i = navigationEvent.swipeEdge;
        long j = navigationEvent.frameTimeMillis;
        this.touchX = f;
        this.touchY = f2;
        this.progress = f3;
        this.swipeEdge = i;
        this.frameTimeMillis = j;
    }

    public final String toString() {
        return "BackEventCompat(touchX=" + this.touchX + ", touchY=" + this.touchY + ", progress=" + this.progress + ", swipeEdge=" + this.swipeEdge + ", frameTimeMillis=" + this.frameTimeMillis + ')';
    }
}
