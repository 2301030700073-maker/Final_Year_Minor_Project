package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Outline$Rectangle extends Brush {
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

    @Override // androidx.compose.ui.graphics.Brush
    public final Rect getBounds() {
        return this.rect;
    }

    public final int hashCode() {
        return this.rect.hashCode();
    }
}
