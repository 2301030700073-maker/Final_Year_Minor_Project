package androidx.compose.ui.graphics;

import androidx.camera.core.impl.Config;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BlendModeColorFilter extends ColorFilter {
    public final int blendMode;
    public final long color;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BlendModeColorFilter(int r4, long r5) {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto L16
            androidx.compose.foundation.StretchOverscrollNode$$ExternalSyntheticApiModelOutline0.m146m()
            int r0 = androidx.compose.ui.graphics.ColorKt.m500toArgb8_81llA(r5)
            android.graphics.BlendMode r1 = androidx.compose.ui.graphics.CanvasZHelper.m478toAndroidBlendModes9anfk8(r4)
            android.graphics.BlendModeColorFilter r0 = androidx.compose.foundation.StretchOverscrollNode$$ExternalSyntheticApiModelOutline0.m(r0, r1)
            goto L23
        L16:
            android.graphics.PorterDuffColorFilter r0 = new android.graphics.PorterDuffColorFilter
            int r1 = androidx.compose.ui.graphics.ColorKt.m500toArgb8_81llA(r5)
            android.graphics.PorterDuff$Mode r2 = androidx.compose.ui.graphics.CanvasZHelper.m479toPorterDuffModes9anfk8(r4)
            r0.<init>(r1, r2)
        L23:
            r3.<init>(r0)
            r3.color = r5
            r3.blendMode = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.BlendModeColorFilter.<init>(int, long):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlendModeColorFilter)) {
            return false;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj;
        return Color.m482equalsimpl0(this.color, blendModeColorFilter.color) && this.blendMode == blendModeColorFilter.blendMode;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return (ULong.m980hashCodeimpl(this.color) * 31) + this.blendMode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BlendModeColorFilter(color=");
        Config.CC.m(this.color, sb, ", blendMode=");
        sb.append((Object) ColorKt.m501toStringimpl(this.blendMode));
        sb.append(')');
        return sb.toString();
    }
}
