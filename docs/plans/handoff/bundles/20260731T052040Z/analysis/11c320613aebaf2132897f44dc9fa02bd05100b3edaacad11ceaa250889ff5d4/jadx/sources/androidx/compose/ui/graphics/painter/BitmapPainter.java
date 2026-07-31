package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BitmapPainter extends Painter {
    public float alpha;
    public BlendModeColorFilter colorFilter;
    public final int filterQuality = 1;
    public final AndroidImageBitmap image;
    public final long size;
    public final long srcSize;

    public BitmapPainter(AndroidImageBitmap androidImageBitmap) {
        int i;
        long width = (androidImageBitmap.bitmap.getWidth() << 32) | (androidImageBitmap.bitmap.getHeight() & 4294967295L);
        this.image = androidImageBitmap;
        this.srcSize = width;
        int i2 = (int) (width >> 32);
        if (i2 < 0 || (i = (int) (width & 4294967295L)) < 0 || i2 > androidImageBitmap.bitmap.getWidth() || i > androidImageBitmap.bitmap.getHeight()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
            throw null;
        }
        this.size = width;
        this.alpha = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void applyAlpha(float f) {
        this.alpha = f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.colorFilter = blendModeColorFilter;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapPainter)) {
            return false;
        }
        BitmapPainter bitmapPainter = (BitmapPainter) obj;
        return Intrinsics.areEqual(this.image, bitmapPainter.image) && IntOffset.m445equalsimpl0(0L, 0L) && IntSize.m449equalsimpl0(this.srcSize, bitmapPainter.srcSize) && this.filterQuality == bitmapPainter.filterQuality;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc, reason: not valid java name */
    public final long mo282getIntrinsicSizeNHjbRc() {
        return Cookie.Companion.m708toSizeozmzZPI(this.size);
    }

    public final int hashCode() {
        int hashCode = this.image.hashCode() * 961;
        long j = this.srcSize;
        return ((((int) (j ^ (j >>> 32))) + hashCode) * 31) + this.filterQuality;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        int round = Math.round(Float.intBitsToFloat((int) (drawScope.mo266getSizeNHjbRc() >> 32)));
        int round2 = Math.round(Float.intBitsToFloat((int) (drawScope.mo266getSizeNHjbRc() & 4294967295L)));
        float f = this.alpha;
        drawScope.mo261drawImageAZ2fEMs(this.image, 0L, r6, (r22 & 16) != 0 ? this.srcSize : (round << 32) | (round2 & 4294967295L), (r22 & 32) != 0 ? 1.0f : f, this.colorFilter, (r22 & 512) != 0 ? 1 : this.filterQuality);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BitmapPainter(image=");
        sb.append(this.image);
        sb.append(", srcOffset=");
        sb.append((Object) IntOffset.m448toStringimpl(0L));
        sb.append(", srcSize=");
        sb.append((Object) IntSize.m450toStringimpl(this.srcSize));
        sb.append(", filterQuality=");
        int i = this.filterQuality;
        sb.append((Object) (i == 0 ? "None" : i == 1 ? "Low" : i == 2 ? "Medium" : i == 3 ? "High" : "Unknown"));
        sb.append(')');
        return sb.toString();
    }
}
