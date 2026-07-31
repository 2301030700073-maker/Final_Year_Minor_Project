package com.fsck.k9.notification;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.controller.MessagingController;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import okhttp3.internal.http2.Http2Connection;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationActionService extends Service {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy coroutineScope$delegate;
    public final Lazy interactionPreferences$delegate;
    public final Lazy messagingController$delegate;
    public final Lazy preferences$delegate;

    public NotificationActionService() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.notification.NotificationActionService$special$$inlined$inject$default$1
            public final /* synthetic */ NotificationActionService $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                NotificationActionService notificationActionService = this.$this_inject;
                switch (i2) {
                    case 0:
                        return ViewSizeResolver.CC.m(Preferences.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(MessagingController.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(DefaultInteractionSettingsPreferenceManager.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.notification.NotificationActionService$special$$inlined$inject$default$1
            public final /* synthetic */ NotificationActionService $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                NotificationActionService notificationActionService = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(Preferences.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(MessagingController.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(DefaultInteractionSettingsPreferenceManager.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        this.coroutineScope$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(5, this, new StringQualifier("AppCoroutineScope")));
        final int i3 = 2;
        this.interactionPreferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.notification.NotificationActionService$special$$inlined$inject$default$1
            public final /* synthetic */ NotificationActionService $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                NotificationActionService notificationActionService = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(Preferences.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(MessagingController.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(DefaultInteractionSettingsPreferenceManager.class, AtomicFU.getKoinScope(notificationActionService), (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
    }

    public final MessagingController getMessagingController() {
        return (MessagingController) this.messagingController$delegate.getValue();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        return null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        intent.getClass();
        Log.i("NotificationActionService started with startId = %d", Integer.valueOf(i2));
        CoroutineScope coroutineScope = (CoroutineScope) this.coroutineScope$delegate.getValue();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        JobKt.launch$default(coroutineScope, DefaultIoScheduler.INSTANCE, null, new Preferences$getAccountsFlow$1(this, intent, i2, (Continuation) null, 5), 2);
        return 2;
    }
}
