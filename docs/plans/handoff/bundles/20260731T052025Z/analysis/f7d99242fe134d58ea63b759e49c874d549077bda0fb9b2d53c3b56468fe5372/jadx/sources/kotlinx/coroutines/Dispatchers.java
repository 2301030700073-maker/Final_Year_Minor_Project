package kotlinx.coroutines;

import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Dispatchers {
    public static final DefaultScheduler Default = DefaultScheduler.INSTANCE;

    static {
        int i = Unconfined.$r8$clinit;
    }
}
