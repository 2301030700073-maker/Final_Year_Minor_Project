package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.zzd;
import com.google.android.gms.internal.cloudmessaging.zza;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class TA {

    /* renamed from: do, reason: not valid java name */
    public static int f3604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static PendingIntent f3605do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Pattern f3606do = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final YV f3607do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f3608do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzd f3610do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledThreadPoolExecutor f3612do;

    /* renamed from: if, reason: not valid java name */
    public Messenger f3613if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2680eE f3611do = new C2680eE();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Messenger f3609do = new Messenger(new UO(this, Looper.getMainLooper()));

    public TA(Context context) {
        this.f3608do = context;
        this.f3607do = new YV(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f3612do = scheduledThreadPoolExecutor;
    }

    /* renamed from: for, reason: not valid java name */
    public static synchronized void m2223for(Context context, Intent intent) {
        synchronized (TA.class) {
            if (f3605do == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f3605do = PendingIntent.getBroadcast(context, 0, intent2, zza.zza);
            }
            intent.putExtra("app", f3605do);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static synchronized String m2224if() {
        String num;
        synchronized (TA.class) {
            int i = f3604do;
            f3604do = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    /* renamed from: do, reason: not valid java name */
    public final XV m2225do(Bundle bundle) {
        final String m2224if = m2224if();
        GG gg = new GG();
        synchronized (this.f3611do) {
            this.f3611do.put(m2224if, gg);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f3607do.m2940if() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        m2223for(this.f3608do, intent);
        intent.putExtra("kid", "|ID|" + m2224if + "|");
        if (Log.isLoggable("Rpc", 3)) {
            "Sending ".concat(String.valueOf(intent.getExtras()));
        }
        intent.putExtra("google.messenger", this.f3609do);
        if (this.f3613if != null || this.f3610do != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f3613if;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    Messenger messenger2 = this.f3610do.f10175do;
                    messenger2.getClass();
                    messenger2.send(obtain);
                }
            } catch (RemoteException unused) {
            }
            final ScheduledFuture<?> schedule = this.f3612do.schedule(new PR(gg, 1), 30L, TimeUnit.SECONDS);
            gg.f1160do.mo597for(ExecutorC0697aW.f4962do, new InterfaceC0399Nv() { // from class: RO
                @Override // defpackage.InterfaceC0399Nv
                public final void onComplete(FG fg) {
                    TA ta = TA.this;
                    String str = m2224if;
                    ScheduledFuture scheduledFuture = schedule;
                    synchronized (ta.f3611do) {
                        ta.f3611do.remove(str);
                    }
                    scheduledFuture.cancel(false);
                }
            });
            return gg.f1160do;
        }
        if (this.f3607do.m2940if() == 2) {
            this.f3608do.sendBroadcast(intent);
        } else {
            this.f3608do.startService(intent);
        }
        final ScheduledFuture schedule2 = this.f3612do.schedule(new PR(gg, 1), 30L, TimeUnit.SECONDS);
        gg.f1160do.mo597for(ExecutorC0697aW.f4962do, new InterfaceC0399Nv() { // from class: RO
            @Override // defpackage.InterfaceC0399Nv
            public final void onComplete(FG fg) {
                TA ta = TA.this;
                String str = m2224if;
                ScheduledFuture scheduledFuture = schedule2;
                synchronized (ta.f3611do) {
                    ta.f3611do.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return gg.f1160do;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m2226new(Bundle bundle, String str) {
        synchronized (this.f3611do) {
            GG gg = (GG) this.f3611do.remove(str);
            if (gg == null) {
                return;
            }
            gg.m721if(bundle);
        }
    }
}
