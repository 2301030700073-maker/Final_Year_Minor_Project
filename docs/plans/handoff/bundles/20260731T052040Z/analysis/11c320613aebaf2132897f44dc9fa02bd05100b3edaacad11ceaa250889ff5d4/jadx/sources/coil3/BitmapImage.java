package coil3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import coil3.util.BitmapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BitmapImage implements Image {
    public final Bitmap bitmap;

    public BitmapImage(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    @Override // coil3.Image
    public final void draw(Canvas canvas) {
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, (Paint) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BitmapImage) && Intrinsics.areEqual(this.bitmap, ((BitmapImage) obj).bitmap);
    }

    @Override // coil3.Image
    public final int getHeight() {
        return this.bitmap.getHeight();
    }

    @Override // coil3.Image
    public final boolean getShareable() {
        return true;
    }

    @Override // coil3.Image
    public final long getSize() {
        return BitmapsKt.getAllocationByteCountCompat(this.bitmap);
    }

    @Override // coil3.Image
    public final int getWidth() {
        return this.bitmap.getWidth();
    }

    public final int hashCode() {
        return (this.bitmap.hashCode() * 31) + 1231;
    }

    public final String toString() {
        return "BitmapImage(bitmap=" + this.bitmap + ", shareable=true)";
    }
}
