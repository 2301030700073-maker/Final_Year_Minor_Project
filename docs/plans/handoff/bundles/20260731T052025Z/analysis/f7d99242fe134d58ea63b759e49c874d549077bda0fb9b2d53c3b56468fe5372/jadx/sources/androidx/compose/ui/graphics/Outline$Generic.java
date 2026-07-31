package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Outline$Generic extends ColorKt {
    public final AndroidPath path;

    public Outline$Generic(AndroidPath androidPath) {
        this.path = androidPath;
    }

    @Override // androidx.compose.ui.graphics.ColorKt
    public final Rect getBounds() {
        return this.path.getBounds();
    }
}
