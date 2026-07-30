package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import java.io.IOException;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
final class zzys extends Handler implements Runnable {
    final /* synthetic */ zzyy zza;
    private final zzyt zzb;
    private final long zzc;
    private zzyq zzd;
    private IOException zze;
    private int zzf;
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzys(zzyy zzyyVar, Looper looper, zzyt zzytVar, zzyq zzyqVar, int i, long j) {
        super(looper);
        this.zza = zzyyVar;
        this.zzb = zzytVar;
        this.zzd = zzyqVar;
        this.zzc = j;
    }

    private final void zzd() {
        zzzg zzzgVar;
        zzys zzysVar;
        SystemClock.elapsedRealtime();
        this.zzd.getClass();
        this.zze = null;
        zzyy zzyyVar = this.zza;
        zzzgVar = zzyyVar.zzc;
        zzysVar = zzyyVar.zzd;
        zzysVar.getClass();
        zzzgVar.execute(zzysVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        long j;
        if (this.zzi) {
            return;
        }
        int i4 = message.what;
        if (i4 == 1) {
            zzd();
            return;
        }
        if (i4 == 4) {
            throw ((Error) message.obj);
        }
        this.zza.zzd = null;
        long j2 = this.zzc;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j3 = elapsedRealtime - j2;
        zzyq zzyqVar = this.zzd;
        zzyqVar.getClass();
        if (this.zzh) {
            zzyqVar.zzJ(this.zzb, elapsedRealtime, j3, false);
            return;
        }
        int i5 = message.what;
        if (i5 == 2) {
            try {
                zzyqVar.zzK(this.zzb, elapsedRealtime, j3);
                return;
            } catch (RuntimeException e) {
                zzdo.zzd("LoadTask", "Unexpected exception handling load completed", e);
                this.zza.zze = new zzyw(e);
                return;
            }
        }
        if (i5 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.zze = iOException;
        int i6 = this.zzf + 1;
        this.zzf = i6;
        zzyr zzu = zzyqVar.zzu(this.zzb, elapsedRealtime, j3, iOException, i6);
        i = zzu.zza;
        if (i == 3) {
            this.zza.zze = this.zze;
            return;
        }
        i2 = zzu.zza;
        if (i2 != 2) {
            i3 = zzu.zza;
            if (i3 == 1) {
                this.zzf = 1;
            }
            j = zzu.zzb;
            zzc(j != -9223372036854775807L ? zzu.zzb : Math.min((this.zzf - 1) * 1000, 5000));
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = !this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (z) {
                Trace.beginSection("load:".concat(this.zzb.getClass().getSimpleName()));
                try {
                    this.zzb.zzh();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            if (!this.zzi) {
                zzdo.zzd("LoadTask", "Unexpected error loading stream", e2);
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (Exception e3) {
            if (this.zzi) {
                return;
            }
            zzdo.zzd("LoadTask", "Unexpected exception loading stream", e3);
            obtainMessage(3, new zzyw(e3)).sendToTarget();
        } catch (OutOfMemoryError e4) {
            if (this.zzi) {
                return;
            }
            zzdo.zzd("LoadTask", "OutOfMemory error loading stream", e4);
            obtainMessage(3, new zzyw(e4)).sendToTarget();
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zze = null;
        if (hasMessages(1)) {
            this.zzh = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                this.zzh = true;
                this.zzb.zzg();
                Thread thread = this.zzg;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            this.zza.zzd = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zzyq zzyqVar = this.zzd;
            zzyqVar.getClass();
            zzyqVar.zzJ(this.zzb, elapsedRealtime, elapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i) {
        IOException iOException = this.zze;
        if (iOException != null && this.zzf > i) {
            throw iOException;
        }
    }

    public final void zzc(long j) {
        zzys zzysVar;
        zzysVar = this.zza.zzd;
        zzcw.zzf(zzysVar == null);
        this.zza.zzd = this;
        if (j > 0) {
            sendEmptyMessageDelayed(1, j);
        } else {
            zzd();
        }
    }
}
