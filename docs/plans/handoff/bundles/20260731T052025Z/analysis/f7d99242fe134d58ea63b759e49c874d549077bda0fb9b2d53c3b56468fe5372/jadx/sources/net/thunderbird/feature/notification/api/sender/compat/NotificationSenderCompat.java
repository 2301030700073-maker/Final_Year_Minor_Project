package net.thunderbird.feature.notification.api.sender.compat;

import java.util.concurrent.CancellationException;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.sender.NotificationSender;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationSenderCompat implements DisposableHandle {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object notificationSender;
    public final ContextScope scope;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnResultListener {
        void onResult(Outcome outcome);
    }

    public NotificationSenderCompat(NotificationSender notificationSender) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher.immediate;
        handlerContext.getClass();
        this.notificationSender = notificationSender;
        this.scope = JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), handlerContext));
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        switch (this.$r8$classId) {
            case 0:
                JobKt.cancel(this.scope, (CancellationException) null);
                break;
            default:
                JobKt.cancel(this.scope, (CancellationException) null);
                break;
        }
    }

    public NotificationSenderCompat(NotificationDismisser notificationDismisser) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher.immediate;
        handlerContext.getClass();
        this.notificationSender = notificationDismisser;
        this.scope = JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), handlerContext));
    }
}
