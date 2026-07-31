package com.fsck.k9.ui.settings.account;

import android.os.Build;
import android.os.VibrationEffect;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidVibrator implements Vibrator {
    public final android.os.Vibrator vibrator;

    public AndroidVibrator(android.os.Vibrator vibrator) {
        this.vibrator = vibrator;
    }

    public final void vibrate(long[] jArr) {
        int i = Build.VERSION.SDK_INT;
        android.os.Vibrator vibrator = this.vibrator;
        if (i >= 26) {
            vibrator.vibrate(VibrationEffect.createWaveform(jArr, -1));
        } else {
            vibrator.vibrate(jArr, -1);
        }
    }
}
