package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import androidx.compose.foundation.StretchOverscrollNode$$ExternalSyntheticApiModelOutline0;
import androidx.compose.ui.Modifier;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BlendModeColorFilter {
    public final int blendMode;
    public final long color;
    public final ColorFilter nativeColorFilter;

    public BlendModeColorFilter(long j, int i) {
        ColorFilter porterDuffColorFilter;
        if (Build.VERSION.SDK_INT >= 29) {
            StretchOverscrollNode$$ExternalSyntheticApiModelOutline0.m34m();
            porterDuffColorFilter = StretchOverscrollNode$$ExternalSyntheticApiModelOutline0.m(Brush.m235toArgb8_81llA(j), CanvasZHelper.m240toAndroidBlendModes9anfk8(i));
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(Brush.m235toArgb8_81llA(j), CanvasZHelper.m241toPorterDuffModes9anfk8(i));
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
        return Color.m244equalsimpl0(this.color, blendModeColorFilter.color) && this.blendMode == blendModeColorFilter.blendMode;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return (ULong.m658hashCodeimpl(this.color) * 31) + this.blendMode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BlendModeColorFilter(color=");
        Modifier.CC.m181m(this.color, ", blendMode=", sb);
        sb.append((Object) Brush.m236toStringimpl(this.blendMode));
        sb.append(')');
        return sb.toString();
    }
}
