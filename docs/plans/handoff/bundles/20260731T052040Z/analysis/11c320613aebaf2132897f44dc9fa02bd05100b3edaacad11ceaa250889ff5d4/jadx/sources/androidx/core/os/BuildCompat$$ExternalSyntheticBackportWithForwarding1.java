package androidx.core.os;

import android.os.Build;
import com.google.android.exoplayer2.audio.AacUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class BuildCompat$$ExternalSyntheticBackportWithForwarding1 {
    public static /* synthetic */ int m() {
        int i = Build.VERSION.SDK_INT;
        return i < 36 ? i * AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND : Build.VERSION.SDK_INT_FULL;
    }
}
