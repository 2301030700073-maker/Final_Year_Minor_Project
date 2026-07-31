package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
