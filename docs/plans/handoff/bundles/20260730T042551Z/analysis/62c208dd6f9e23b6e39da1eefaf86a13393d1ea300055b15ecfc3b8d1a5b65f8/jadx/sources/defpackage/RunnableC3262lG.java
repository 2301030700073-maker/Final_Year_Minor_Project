package defpackage;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: lG, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3262lG implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final long f14125do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PowerManager.WakeLock f14126do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FirebaseMessaging f14127do;

    /* renamed from: lG$do, reason: invalid class name */
    public static class Cdo extends BroadcastReceiver {

        /* renamed from: do, reason: not valid java name */
        public RunnableC3262lG f14128do;

        public Cdo(RunnableC3262lG runnableC3262lG) {
            this.f14128do = runnableC3262lG;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            RunnableC3262lG runnableC3262lG = this.f14128do;
            if (runnableC3262lG != null && runnableC3262lG.m7359do()) {
                RunnableC3262lG runnableC3262lG2 = this.f14128do;
                runnableC3262lG2.f14127do.getClass();
                FirebaseMessaging.m6083if(runnableC3262lG2, 0L);
                this.f14128do.f14127do.f11896do.unregisterReceiver(this);
                this.f14128do = null;
            }
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    public RunnableC3262lG(FirebaseMessaging firebaseMessaging, long j) {
        new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));
        this.f14127do = firebaseMessaging;
        this.f14125do = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) firebaseMessaging.f11896do.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f14126do = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7359do() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f14127do.f11896do.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m7360if() {
        boolean z = true;
        try {
            return this.f14127do.m6087do() != null;
        } catch (IOException e) {
            String message = e.getMessage();
            if (!"SERVICE_NOT_AVAILABLE".equals(message) && !"INTERNAL_SERVER_ERROR".equals(message) && !"InternalServerError".equals(message)) {
                z = false;
            }
            if (z) {
                e.getMessage();
                return false;
            }
            if (e.getMessage() == null) {
                return false;
            }
            throw e;
        } catch (SecurityException unused) {
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"WakelockTimeout"})
    public final void run() {
        C3729tC m8222do = C3729tC.m8222do();
        FirebaseMessaging firebaseMessaging = this.f14127do;
        boolean m8223for = m8222do.m8223for(firebaseMessaging.f11896do);
        PowerManager.WakeLock wakeLock = this.f14126do;
        if (m8223for) {
            wakeLock.acquire();
        }
        try {
            try {
                synchronized (firebaseMessaging) {
                    firebaseMessaging.f11900do = true;
                }
            } catch (IOException e) {
                e.getMessage();
                firebaseMessaging.m6088else(false);
                if (!C3729tC.m8222do().m8223for(firebaseMessaging.f11896do)) {
                    return;
                }
            }
            if (!firebaseMessaging.f11894do.m3077new()) {
                firebaseMessaging.m6088else(false);
                if (C3729tC.m8222do().m8223for(firebaseMessaging.f11896do)) {
                    wakeLock.release();
                    return;
                }
                return;
            }
            if (!C3729tC.m8222do().m8224if(firebaseMessaging.f11896do) || m7359do()) {
                if (m7360if()) {
                    firebaseMessaging.m6088else(false);
                } else {
                    firebaseMessaging.m6084break(this.f14125do);
                }
                if (!C3729tC.m8222do().m8223for(firebaseMessaging.f11896do)) {
                    return;
                }
                wakeLock.release();
                return;
            }
            Cdo cdo = new Cdo(this);
            cdo.f14128do.f14127do.f11896do.registerReceiver(cdo, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            if (C3729tC.m8222do().m8223for(firebaseMessaging.f11896do)) {
                wakeLock.release();
            }
        } catch (Throwable th) {
            if (C3729tC.m8222do().m8223for(firebaseMessaging.f11896do)) {
                wakeLock.release();
            }
            throw th;
        }
    }
}
