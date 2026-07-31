package coil3;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.camera.core.impl.Config;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorImage implements Image {
    private final int color;
    private final int height;
    private Paint lazyPaint;
    private final boolean shareable;
    private final long size;
    private final int width;

    public /* synthetic */ ColorImage(int i, int i2, int i3, long j, boolean z, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? -16777216 : i, (i4 & 2) != 0 ? -1 : i2, (i4 & 4) != 0 ? -1 : i3, (i4 & 8) != 0 ? 0L : j, (i4 & 16) != 0 ? true : z);
    }

    @Override // coil3.Image
    public void draw(Canvas canvas) {
        Paint paint = this.lazyPaint;
        if (paint == null) {
            paint = new Paint();
            paint.setColor(this.color);
            this.lazyPaint = paint;
        }
        Paint paint2 = paint;
        if (getWidth() < 0 || getHeight() < 0) {
            canvas.drawPaint(paint2);
        } else {
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorImage)) {
            return false;
        }
        ColorImage colorImage = (ColorImage) obj;
        return this.color == colorImage.color && this.width == colorImage.width && this.height == colorImage.height && this.size == colorImage.size && this.shareable == colorImage.shareable;
    }

    public final int getColor() {
        return this.color;
    }

    @Override // coil3.Image
    public int getHeight() {
        return this.height;
    }

    @Override // coil3.Image
    public boolean getShareable() {
        return this.shareable;
    }

    @Override // coil3.Image
    public long getSize() {
        return this.size;
    }

    @Override // coil3.Image
    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i = ((((this.color * 31) + this.width) * 31) + this.height) * 31;
        long j = this.size;
        return ((i + ((int) (j ^ (j >>> 32)))) * 31) + (this.shareable ? 1231 : 1237);
    }

    public String toString() {
        int i = this.color;
        int i2 = this.width;
        int i3 = this.height;
        long j = this.size;
        boolean z = this.shareable;
        StringBuilder m91m = Config.CC.m91m("ColorImage(color=", i, ", width=", i2, ", height=");
        m91m.append(i3);
        m91m.append(", size=");
        m91m.append(j);
        m91m.append(", shareable=");
        m91m.append(z);
        m91m.append(")");
        return m91m.toString();
    }

    public ColorImage(int i, int i2, int i3, long j, boolean z) {
        this.color = i;
        this.width = i2;
        this.height = i3;
        this.size = j;
        this.shareable = z;
    }

    public ColorImage() {
        this(0, 0, 0, 0L, false, 31, null);
    }
}
