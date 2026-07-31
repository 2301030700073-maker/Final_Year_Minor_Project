package androidx.compose.ui.text.intl;

import android.os.Build;
import androidx.collection.internal.Lock;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PlatformLocaleKt {
    public static final PlatformLocaleDelegate platformLocaleDelegate;

    static {
        platformLocaleDelegate = Build.VERSION.SDK_INT >= 24 ? new AndroidLocaleDelegateAPI24() : new Lock(4);
    }
}
