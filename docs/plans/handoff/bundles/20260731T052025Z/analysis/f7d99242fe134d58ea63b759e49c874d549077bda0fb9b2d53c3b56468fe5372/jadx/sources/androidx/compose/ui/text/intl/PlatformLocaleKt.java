package androidx.compose.ui.text.intl;

import android.os.Build;
import androidx.transition.Transition;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PlatformLocaleKt {
    public static final PlatformLocaleDelegate platformLocaleDelegate;

    static {
        platformLocaleDelegate = Build.VERSION.SDK_INT >= 24 ? new AndroidLocaleDelegateAPI24() : new Transition.AnonymousClass1();
    }
}
