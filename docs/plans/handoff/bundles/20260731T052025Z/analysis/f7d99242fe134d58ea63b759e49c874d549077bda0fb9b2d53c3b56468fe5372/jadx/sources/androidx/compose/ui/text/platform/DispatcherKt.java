package androidx.compose.ui.text.platform;

import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DispatcherKt {
    public static final HandlerContext FontCacheManagementDispatcher;

    static {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        FontCacheManagementDispatcher = MainDispatcherLoader.dispatcher;
    }
}
