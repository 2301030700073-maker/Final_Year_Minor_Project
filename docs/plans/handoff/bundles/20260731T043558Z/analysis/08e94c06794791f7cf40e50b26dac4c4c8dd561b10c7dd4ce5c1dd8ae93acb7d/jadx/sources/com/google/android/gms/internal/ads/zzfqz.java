package com.google.android.gms.internal.ads;

import android.os.Handler;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfqz implements Runnable {
    zzfqz() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        handler = zzfrc.zzc;
        if (handler != null) {
            handler2 = zzfrc.zzc;
            runnable = zzfrc.zzk;
            handler2.post(runnable);
            handler3 = zzfrc.zzc;
            runnable2 = zzfrc.zzl;
            handler3.postDelayed(runnable2, 200L);
        }
    }
}
