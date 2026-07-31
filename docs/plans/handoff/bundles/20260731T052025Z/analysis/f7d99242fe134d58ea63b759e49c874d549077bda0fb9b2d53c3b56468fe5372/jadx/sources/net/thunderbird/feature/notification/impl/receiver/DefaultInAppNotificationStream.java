package net.thunderbird.feature.notification.impl.receiver;

import kotlin.collections.EmptySet;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.feature.notification.impl.DefaultNotificationRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultInAppNotificationStream {
    public final ReadonlyStateFlow notifications;

    public DefaultInAppNotificationStream(DefaultNotificationRegistry defaultNotificationRegistry) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher;
        handlerContext.getClass();
        this.notifications = FlowKt.stateIn(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(defaultNotificationRegistry.registrar, 9), JobKt.CoroutineScope(handlerContext), SharingStarted.Companion.Eagerly, EmptySet.INSTANCE);
    }
}
