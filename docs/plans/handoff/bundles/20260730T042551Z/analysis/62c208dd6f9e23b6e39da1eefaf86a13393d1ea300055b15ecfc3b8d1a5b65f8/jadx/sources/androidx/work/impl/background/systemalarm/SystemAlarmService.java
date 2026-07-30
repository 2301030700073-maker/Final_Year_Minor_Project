package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.lifecycle.LifecycleService;
import androidx.work.impl.background.systemalarm.Cnew;
import defpackage.AbstractC0614Xq;
import defpackage.LL;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SystemAlarmService extends LifecycleService implements Cnew.Cfor {

    /* renamed from: do, reason: not valid java name */
    public Cnew f8163do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8164do;

    static {
        AbstractC0614Xq.m2870try("SystemAlarmService");
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4736do() {
        Cnew cnew = new Cnew(this);
        this.f8163do = cnew;
        if (cnew.f8191do != null) {
            AbstractC0614Xq.m2869for().mo2873if(new Throwable[0]);
        } else {
            cnew.f8191do = this;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4737new() {
        this.f8164do = true;
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = LL.f1946do;
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap2 = LL.f1946do;
        synchronized (weakHashMap2) {
            hashMap.putAll(weakHashMap2);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                String.format("WakeLock held for %s", hashMap.get(wakeLock));
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                WeakHashMap<PowerManager.WakeLock, String> weakHashMap3 = LL.f1946do;
                m2869for.mo2871case(new Throwable[0]);
            }
        }
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        m4736do();
        this.f8164do = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f8164do = true;
        this.f8163do.m4750try();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f8164do) {
            AbstractC0614Xq.m2869for().mo2874new(new Throwable[0]);
            this.f8163do.m4750try();
            m4736do();
            this.f8164do = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f8163do.m4746do(i2, intent);
        return 3;
    }
}
