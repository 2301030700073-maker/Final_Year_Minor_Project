package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Outline$Rectangle extends ColorKt {
    public final Rect rect;

    public Outline$Rectangle(Rect rect) {
        this.rect = rect;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Outline$Rectangle) {
            return this.rect.equals(((Outline$Rectangle) obj).rect);
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.ColorKt
    public final Rect getBounds() {
        return this.rect;
    }

    public final int hashCode() {
        return this.rect.hashCode();
    }
}
