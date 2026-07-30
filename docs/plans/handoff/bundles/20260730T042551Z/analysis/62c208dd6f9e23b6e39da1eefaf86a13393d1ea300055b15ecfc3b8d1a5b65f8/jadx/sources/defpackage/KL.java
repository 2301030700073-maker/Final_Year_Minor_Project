package defpackage;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.firebase.messaging.Cfor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class KL {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static IL f1798do;

    /* renamed from: do, reason: not valid java name */
    public static final long f1797do = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f1799do = new Object();

    /* renamed from: do, reason: not valid java name */
    public static void m1146do(Context context) {
        if (f1798do == null) {
            IL il = new IL(context);
            f1798do = il;
            synchronized (il.f1503do) {
                il.f1510do = true;
            }
        }
    }

    @SuppressLint({"TaskMainThread"})
    /* renamed from: for, reason: not valid java name */
    public static void m1147for(Context context, Cfor cfor, final Intent intent) {
        synchronized (f1799do) {
            m1146do(context);
            boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
            intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
            if (!booleanExtra) {
                f1798do.m925do(f1797do);
            }
            cfor.m6101if(intent).mo599if(new InterfaceC0399Nv() { // from class: JL
                @Override // defpackage.InterfaceC0399Nv
                public final void onComplete(FG fg) {
                    KL.m1148if(intent);
                }
            });
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1148if(Intent intent) {
        synchronized (f1799do) {
            if (f1798do != null && intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false)) {
                intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                f1798do.m926for();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ComponentName m1149new(Context context, Intent intent) {
        synchronized (f1799do) {
            m1146do(context);
            boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
            intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            if (!booleanExtra) {
                f1798do.m925do(f1797do);
            }
            return startService;
        }
    }
}
