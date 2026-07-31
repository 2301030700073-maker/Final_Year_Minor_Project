package androidx.window.core;

import android.util.Log;
import androidx.window.extensions.WindowExtensionsProvider;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ExtensionsUtil {
    public static final String TAG = Reflection.getOrCreateKotlinClass(ExtensionsUtil.class).getSimpleName();

    public static int getSafeVendorApiLevel() {
        VerificationMode verificationMode = VerificationMode.LOG;
        VerificationMode verificationMode2 = BuildConfig.verificationMode;
        String str = TAG;
        try {
            return WindowExtensionsProvider.getWindowExtensions().getVendorApiLevel();
        } catch (NoClassDefFoundError unused) {
            if (verificationMode2 != verificationMode) {
                return 0;
            }
            Log.d(str, "Embedding extension version not found");
            return 0;
        } catch (NullPointerException unused2) {
            if (verificationMode2 != verificationMode) {
                return 0;
            }
            Log.d(str, "Error with Extension implementation");
            return 0;
        } catch (UnsupportedOperationException unused3) {
            if (verificationMode2 != verificationMode) {
                return 0;
            }
            Log.d(str, "Stub Extension");
            return 0;
        }
    }
}
