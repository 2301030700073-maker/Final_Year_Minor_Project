package androidx.biometric;

import android.content.Context;
import android.hardware.biometrics.BiometricManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BiometricManager$Api29Impl {
    public static int canAuthenticate(BiometricManager biometricManager) {
        return biometricManager.canAuthenticate();
    }

    public static BiometricManager create(Context context) {
        return (BiometricManager) context.getSystemService(BiometricManager.class);
    }
}
