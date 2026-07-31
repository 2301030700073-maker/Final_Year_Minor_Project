package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import java.util.Locale;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
