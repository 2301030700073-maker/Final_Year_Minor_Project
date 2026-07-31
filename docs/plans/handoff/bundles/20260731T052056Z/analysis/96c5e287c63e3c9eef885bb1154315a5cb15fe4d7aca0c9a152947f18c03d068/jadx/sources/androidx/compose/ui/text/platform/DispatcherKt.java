package androidx.compose.ui.text.platform;

import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DispatcherKt {
    public static final HandlerContext FontCacheManagementDispatcher;

    static {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        FontCacheManagementDispatcher = MainDispatcherLoader.dispatcher;
    }
}
