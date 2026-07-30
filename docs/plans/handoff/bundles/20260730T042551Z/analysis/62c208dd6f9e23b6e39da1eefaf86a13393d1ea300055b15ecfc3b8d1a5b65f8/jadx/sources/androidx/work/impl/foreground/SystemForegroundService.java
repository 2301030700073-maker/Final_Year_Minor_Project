package androidx.work.impl.foreground;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleService;
import androidx.work.impl.foreground.Cdo;
import defpackage.AbstractC0614Xq;
import defpackage.GM;
import defpackage.HM;
import defpackage.N6;
import defpackage.RunnableC3557qG;
import java.util.UUID;

/* loaded from: classes.dex */
public class SystemForegroundService extends LifecycleService implements Cdo.InterfaceC0050do {

    /* renamed from: do, reason: not valid java name */
    public NotificationManager f8209do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Handler f8210do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f8211do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8212do;

    static {
        AbstractC0614Xq.m2870try("SystemFgService");
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4752do() {
        this.f8210do = new Handler(Looper.getMainLooper());
        this.f8209do = (NotificationManager) getApplicationContext().getSystemService("notification");
        Cdo cdo = new Cdo(getApplicationContext());
        this.f8211do = cdo;
        if (cdo.f8217do != null) {
            AbstractC0614Xq.m2869for().mo2873if(new Throwable[0]);
        } else {
            cdo.f8217do = this;
        }
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        m4752do();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        Cdo cdo = this.f8211do;
        cdo.f8217do = null;
        synchronized (cdo.f8218do) {
            cdo.f8222do.m8387new();
        }
        cdo.f8215do.f1174do.m1363case(cdo);
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f8212do) {
            AbstractC0614Xq.m2869for().mo2874new(new Throwable[0]);
            Cdo cdo = this.f8211do;
            cdo.f8217do = null;
            synchronized (cdo.f8218do) {
                cdo.f8222do.m8387new();
            }
            cdo.f8215do.f1174do.m1363case(cdo);
            m4752do();
            this.f8212do = false;
        }
        if (intent == null) {
            return 3;
        }
        Cdo cdo2 = this.f8211do;
        cdo2.getClass();
        String action = intent.getAction();
        boolean equals = "ACTION_START_FOREGROUND".equals(action);
        int i3 = Cdo.f8213for;
        GM gm = cdo2.f8215do;
        if (equals) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Started foreground service %s", intent);
            m2869for.mo2874new(new Throwable[0]);
            ((HM) cdo2.f8216do).m852do(new RunnableC3557qG(cdo2, gm.f1178do, intent.getStringExtra("KEY_WORKSPEC_ID")));
            cdo2.m4755case(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            cdo2.m4755case(intent);
            return 3;
        }
        if ("ACTION_CANCEL_WORK".equals(action)) {
            AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
            String.format("Stopping foreground work for %s", intent);
            m2869for2.mo2874new(new Throwable[0]);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
                return 3;
            }
            UUID fromString = UUID.fromString(stringExtra);
            gm.getClass();
            ((HM) gm.f1173do).m852do(new N6(gm, fromString));
            return 3;
        }
        if (!"ACTION_STOP_FOREGROUND".equals(action)) {
            return 3;
        }
        AbstractC0614Xq.m2869for().mo2874new(new Throwable[0]);
        Cdo.InterfaceC0050do interfaceC0050do = cdo2.f8217do;
        if (interfaceC0050do == null) {
            return 3;
        }
        SystemForegroundService systemForegroundService = (SystemForegroundService) interfaceC0050do;
        systemForegroundService.f8212do = true;
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            systemForegroundService.stopForeground(true);
        }
        systemForegroundService.stopSelf();
        return 3;
    }
}
