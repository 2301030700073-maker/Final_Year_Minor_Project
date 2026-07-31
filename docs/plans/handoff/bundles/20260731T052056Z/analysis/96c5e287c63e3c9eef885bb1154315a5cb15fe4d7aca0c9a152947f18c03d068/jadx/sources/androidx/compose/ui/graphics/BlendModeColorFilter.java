package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline1;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BlendModeColorFilter {
    public final int blendMode;
    public final long color;
    public final ColorFilter nativeColorFilter;

    public BlendModeColorFilter(long j, int i) {
        ColorFilter porterDuffColorFilter;
        if (Build.VERSION.SDK_INT >= 29) {
            TypefaceCompat$$ExternalSyntheticApiModelOutline1.m740m();
            porterDuffColorFilter = TypefaceCompat$$ExternalSyntheticApiModelOutline1.m(ColorKt.m444toArgb8_81llA(j), CanvasZHelper.m424toAndroidBlendModes9anfk8(i));
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(ColorKt.m444toArgb8_81llA(j), CanvasZHelper.m425toPorterDuffModes9anfk8(i));
        }
        this.nativeColorFilter = porterDuffColorFilter;
        this.color = j;
        this.blendMode = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlendModeColorFilter)) {
            return false;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj;
        long j = blendModeColorFilter.color;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.color, j) && this.blendMode == blendModeColorFilter.blendMode;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return (Modifier.CC.m(this.color) * 31) + this.blendMode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BlendModeColorFilter(color=");
        Animation.CC.m(this.color, sb, ", blendMode=");
        sb.append((Object) ColorKt.m445toStringimpl(this.blendMode));
        sb.append(')');
        return sb.toString();
    }
}
