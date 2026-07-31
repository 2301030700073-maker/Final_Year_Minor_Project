package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PrefetchScheduler_androidKt {
    public static final PrefetchScheduler_androidKt$RobolectricImpl$1 RobolectricImpl;

    static {
        PrefetchScheduler_androidKt$RobolectricImpl$1 prefetchScheduler_androidKt$RobolectricImpl$1;
        String str = Build.FINGERPRINT;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (lowerCase.equals("robolectric")) {
                prefetchScheduler_androidKt$RobolectricImpl$1 = new PrefetchScheduler_androidKt$RobolectricImpl$1();
                RobolectricImpl = prefetchScheduler_androidKt$RobolectricImpl$1;
            }
        }
        prefetchScheduler_androidKt$RobolectricImpl$1 = null;
        RobolectricImpl = prefetchScheduler_androidKt$RobolectricImpl$1;
    }
}
