package com.fsck.k9.controller.push;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.notification.PushNotificationManager;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.logging.legacy.Log;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushService extends Service {
    public final Lazy pushController$delegate;
    public final Lazy pushNotificationManager$delegate;
    public final Lazy pushServiceManager$delegate;

    public PushService() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.controller.push.PushService$special$$inlined$inject$default$1
            public final /* synthetic */ PushService $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                PushService pushService = this.$this_inject;
                switch (i2) {
                    case 0:
                        return ViewSizeResolver.CC.m(PushServiceManager.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(PushNotificationManager.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(PushController.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.pushServiceManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.pushNotificationManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.controller.push.PushService$special$$inlined$inject$default$1
            public final /* synthetic */ PushService $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                PushService pushService = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(PushServiceManager.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(PushNotificationManager.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(PushController.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        final int i3 = 2;
        this.pushController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.controller.push.PushService$special$$inlined$inject$default$1
            public final /* synthetic */ PushService $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                PushService pushService = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(PushServiceManager.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(PushNotificationManager.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(PushController.class, AtomicFU.getKoinScope(pushService), (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        Log.v("PushService.onCreate()", new Object[0]);
        super.onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        Log.v("PushService.onDestroy()", new Object[0]);
        PushNotificationManager pushNotificationManager = (PushNotificationManager) this.pushNotificationManager$delegate.getValue();
        synchronized (pushNotificationManager) {
            pushNotificationManager.isForegroundServiceStarted = false;
        }
        PushServiceManager pushServiceManager = (PushServiceManager) this.pushServiceManager$delegate.getValue();
        pushServiceManager.getClass();
        Log.v("PushServiceManager.setServiceStopped()", new Object[0]);
        pushServiceManager.isServiceStarted.set(false);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        Log.v("PushService.onStartCommand(%s)", intent);
        super.onStartCommand(intent, i, i2);
        if (intent == null) {
            if (Build.VERSION.SDK_INT < 31) {
                startForeground();
            } else {
                try {
                    startForeground();
                } catch (ForegroundServiceStartNotAllowedException e) {
                    Log.e(e, "Ignoring ForegroundServiceStartNotAllowedException during automatic restart.", new Object[0]);
                }
            }
            ((PushController) this.pushController$delegate.getValue()).init();
        } else {
            startForeground();
        }
        PushServiceManager pushServiceManager = (PushServiceManager) this.pushServiceManager$delegate.getValue();
        pushServiceManager.getClass();
        Log.v("PushServiceManager.setServiceStarted()", new Object[0]);
        pushServiceManager.isServiceStarted.set(true);
        return 1;
    }

    public final void startForeground() {
        Notification createNotification;
        ((PushNotificationManager) this.pushNotificationManager$delegate.getValue()).getClass();
        PushNotificationManager pushNotificationManager = (PushNotificationManager) this.pushNotificationManager$delegate.getValue();
        synchronized (pushNotificationManager) {
            pushNotificationManager.isForegroundServiceStarted = true;
            createNotification = pushNotificationManager.createNotification();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            startForeground(1, createNotification, 1073741824);
        } else if (i >= 29) {
            startForeground(1, createNotification, 1);
        } else {
            startForeground(1, createNotification);
        }
    }
}
