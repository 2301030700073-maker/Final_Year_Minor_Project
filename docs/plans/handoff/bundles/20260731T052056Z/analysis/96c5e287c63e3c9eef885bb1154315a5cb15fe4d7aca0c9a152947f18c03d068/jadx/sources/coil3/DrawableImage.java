package coil3;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import coil3.util.Utils_androidKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DrawableImage implements Image {
    public final Drawable drawable;

    public DrawableImage(Drawable drawable) {
        this.drawable = drawable;
    }

    @Override // coil3.Image
    public final void draw(Canvas canvas) {
        this.drawable.draw(canvas);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DrawableImage) && Intrinsics.areEqual(this.drawable, ((DrawableImage) obj).drawable);
    }

    @Override // coil3.Image
    public final int getHeight() {
        return Utils_androidKt.getHeight(this.drawable);
    }

    @Override // coil3.Image
    public final boolean getShareable() {
        return false;
    }

    @Override // coil3.Image
    public final long getSize() {
        Drawable drawable = this.drawable;
        long width = Utils_androidKt.getWidth(drawable) * 4 * Utils_androidKt.getHeight(drawable);
        if (width < 0) {
            return 0L;
        }
        return width;
    }

    @Override // coil3.Image
    public final int getWidth() {
        return Utils_androidKt.getWidth(this.drawable);
    }

    public final int hashCode() {
        return (this.drawable.hashCode() * 31) + 1237;
    }

    public final String toString() {
        return "DrawableImage(drawable=" + this.drawable + ", shareable=false)";
    }
}
