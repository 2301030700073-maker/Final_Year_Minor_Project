package defpackage;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class YH implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public static Boolean f4716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f4717do = new Object();

    /* renamed from: if, reason: not valid java name */
    public static Boolean f4718if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f4719do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final XH f4720do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0660Zs f4721do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4722do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PowerManager.WakeLock f4723do;

    /* renamed from: YH$do, reason: invalid class name */
    public class Cdo extends BroadcastReceiver {

        /* renamed from: do, reason: not valid java name */
        public YH f4724do;

        public Cdo(YH yh, YH yh2) {
            this.f4724do = yh2;
        }

        @Override // android.content.BroadcastReceiver
        public final synchronized void onReceive(Context context, Intent intent) {
            YH yh = this.f4724do;
            if (yh == null) {
                return;
            }
            if (yh.m2911for()) {
                Object obj = YH.f4717do;
                YH yh2 = this.f4724do;
                yh2.f4720do.f4492do.schedule(yh2, 0L, TimeUnit.SECONDS);
                context.unregisterReceiver(this);
                this.f4724do = null;
            }
        }
    }

    public YH(XH xh, Context context, C0660Zs c0660Zs, long j) {
        this.f4720do = xh;
        this.f4722do = context;
        this.f4719do = j;
        this.f4721do = c0660Zs;
        this.f4723do = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m2909do(Context context) {
        boolean booleanValue;
        synchronized (f4717do) {
            Boolean bool = f4718if;
            Boolean valueOf = Boolean.valueOf(bool == null ? bool != null ? bool.booleanValue() : context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 : bool.booleanValue());
            f4718if = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m2910if(Context context) {
        boolean booleanValue;
        synchronized (f4717do) {
            Boolean bool = f4716do;
            Boolean valueOf = Boolean.valueOf(bool == null ? bool != null ? bool.booleanValue() : context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0 : bool.booleanValue());
            f4716do = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized boolean m2911for() {
        boolean z;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f4722do.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        if (activeNetworkInfo != null) {
            z = activeNetworkInfo.isConnected();
        }
        return z;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public final void run() {
        XH xh = this.f4720do;
        Context context = this.f4722do;
        boolean m2910if = m2910if(context);
        PowerManager.WakeLock wakeLock = this.f4723do;
        if (m2910if) {
            wakeLock.acquire(C3867va.f16095do);
        }
        try {
            try {
                synchronized (xh) {
                    xh.f4493do = true;
                }
            } catch (Throwable th) {
                if (m2910if(context)) {
                    try {
                        wakeLock.release();
                    } catch (RuntimeException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            e.getMessage();
            xh.m2822try(false);
            if (!m2910if(context)) {
                return;
            }
        }
        if (!this.f4721do.m3077new()) {
            xh.m2822try(false);
            if (m2910if(context)) {
                try {
                    wakeLock.release();
                    return;
                } catch (RuntimeException unused2) {
                    return;
                }
            }
            return;
        }
        if (m2909do(context) && !m2911for()) {
            context.registerReceiver(new Cdo(this, this), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            if (m2910if(context)) {
                try {
                    wakeLock.release();
                    return;
                } catch (RuntimeException unused3) {
                    return;
                }
            }
            return;
        }
        if (xh.m2817case()) {
            xh.m2822try(false);
        } else {
            xh.m2818else(this.f4719do);
        }
        if (!m2910if(context)) {
            return;
        }
        try {
            wakeLock.release();
        } catch (RuntimeException unused4) {
        }
    }
}
