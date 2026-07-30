package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzfqw;

/* loaded from: classes.dex */
public final class zzbt {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HandlerThread f9783do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzfqw f9784do = null;

    /* renamed from: do, reason: not valid java name */
    public int f9782do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9785do = new Object();

    public final Handler zza() {
        return this.f9784do;
    }

    public final Looper zzb() {
        Looper looper;
        synchronized (this.f9785do) {
            if (this.f9782do != 0) {
                Preconditions.checkNotNull(this.f9783do, "Invalid state: handlerThread should already been initialized.");
            } else if (this.f9783do == null) {
                zze.zza("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.f9783do = handlerThread;
                handlerThread.start();
                this.f9784do = new zzfqw(this.f9783do.getLooper());
                zze.zza("Looper thread started.");
            } else {
                zze.zza("Resuming the looper thread");
                this.f9785do.notifyAll();
            }
            this.f9782do++;
            looper = this.f9783do.getLooper();
        }
        return looper;
    }
}
