package androidx.core.view;

import android.os.Build;
import android.view.DisplayCutout;
import androidx.core.graphics.Insets;
import org.wikipedia.util.GeoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DisplayCutoutCompat {
    public final DisplayCutout mDisplayCutout;

    public DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.mDisplayCutout = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return this.mDisplayCutout.equals(((DisplayCutoutCompat) obj).mDisplayCutout);
    }

    public final Insets getWaterfallInsets() {
        return Build.VERSION.SDK_INT >= 30 ? Insets.toCompatInsets(GeoUtil.getWaterfallInsets(this.mDisplayCutout)) : Insets.NONE;
    }

    public final int hashCode() {
        return this.mDisplayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }
}
