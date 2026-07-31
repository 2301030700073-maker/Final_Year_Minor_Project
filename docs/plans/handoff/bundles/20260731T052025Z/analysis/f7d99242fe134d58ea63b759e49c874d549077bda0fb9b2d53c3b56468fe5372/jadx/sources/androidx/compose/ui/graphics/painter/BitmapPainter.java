package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BitmapPainter extends Painter {
    public float alpha;
    public ColorFilter colorFilter;
    public final int filterQuality = 1;
    public final ImageBitmap image;
    public final long size;
    public final long srcSize;

    public BitmapPainter(ImageBitmap imageBitmap) {
        int i;
        long width = (((AndroidImageBitmap) imageBitmap).bitmap.getWidth() << 32) | (((AndroidImageBitmap) imageBitmap).bitmap.getHeight() & 4294967295L);
        this.image = imageBitmap;
        this.srcSize = width;
        int i2 = (int) (width >> 32);
        if (i2 >= 0 && (i = (int) (width & 4294967295L)) >= 0) {
            AndroidImageBitmap androidImageBitmap = (AndroidImageBitmap) imageBitmap;
            if (i2 <= androidImageBitmap.bitmap.getWidth() && i <= androidImageBitmap.bitmap.getHeight()) {
                this.size = width;
                this.alpha = 1.0f;
                return;
            }
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
        throw null;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapPainter)) {
            return false;
        }
        BitmapPainter bitmapPainter = (BitmapPainter) obj;
        return Intrinsics.areEqual(this.image, bitmapPainter.image) && IntOffset.m752equalsimpl0(0L, 0L) && IntSize.m768equalsimpl0(this.srcSize, bitmapPainter.srcSize) && this.filterQuality == bitmapPainter.filterQuality;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc, reason: not valid java name */
    public final long mo550getIntrinsicSizeNHjbRc() {
        return Validate.m1072toSizeozmzZPI(this.size);
    }

    public final int hashCode() {
        return ((IntSize.m769hashCodeimpl(this.srcSize) + (this.image.hashCode() * 961)) * 31) + this.filterQuality;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(LayoutNodeDrawScope layoutNodeDrawScope) {
        int round = Math.round(Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() >> 32)));
        int round2 = Math.round(Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() & 4294967295L)));
        float f = this.alpha;
        layoutNodeDrawScope.mo525drawImageAZ2fEMs(this.image, 0L, r6, (r22 & 16) != 0 ? this.srcSize : (round << 32) | (round2 & 4294967295L), (r22 & 32) != 0 ? 1.0f : f, this.colorFilter, (r22 & 512) != 0 ? 1 : this.filterQuality);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BitmapPainter(image=");
        sb.append(this.image);
        sb.append(", srcOffset=");
        sb.append((Object) IntOffset.m755toStringimpl(0L));
        sb.append(", srcSize=");
        sb.append((Object) IntSize.m770toStringimpl(this.srcSize));
        sb.append(", filterQuality=");
        int i = this.filterQuality;
        sb.append((Object) (i == 0 ? "None" : i == 1 ? "Low" : i == 2 ? "Medium" : i == 3 ? "High" : "Unknown"));
        sb.append(')');
        return sb.toString();
    }
}
