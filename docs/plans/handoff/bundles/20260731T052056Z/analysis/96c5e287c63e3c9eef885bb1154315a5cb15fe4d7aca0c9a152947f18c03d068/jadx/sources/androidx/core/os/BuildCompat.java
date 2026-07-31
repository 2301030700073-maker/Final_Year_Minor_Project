package androidx.core.os;

import android.os.Build;
import org.wikipedia.util.GeoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BuildCompat {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            GeoUtil.getExtensionVersion(30);
        }
        if (i >= 30) {
            GeoUtil.getExtensionVersion(31);
        }
        if (i >= 30) {
            GeoUtil.getExtensionVersion(33);
        }
        if (i >= 30) {
            GeoUtil.getExtensionVersion(1000000);
        }
    }
}
