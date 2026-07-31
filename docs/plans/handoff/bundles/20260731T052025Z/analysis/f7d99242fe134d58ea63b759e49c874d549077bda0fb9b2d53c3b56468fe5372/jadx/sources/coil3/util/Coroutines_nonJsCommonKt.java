package coil3.util;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Coroutines_nonJsCommonKt {
    public static final CoroutineDispatcher ioCoroutineDispatcher() {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        return DefaultIoScheduler.INSTANCE;
    }
}
