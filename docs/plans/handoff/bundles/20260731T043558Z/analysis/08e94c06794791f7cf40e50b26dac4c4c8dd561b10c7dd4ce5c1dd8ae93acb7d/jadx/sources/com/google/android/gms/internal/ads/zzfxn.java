package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfxn {
    private final zzfzl zza;
    private final zzgam zzb;
    private final zzghy zzc;
    private final zzgjd zzd;
    private final long zze;
    private final zzifb zzf;
    private final long zzg;
    private final long zzh = System.currentTimeMillis();
    private final boolean zzi;
    private final long zzj;

    zzfxn(zzfzl zzfzlVar, zzgam zzgamVar, zzghy zzghyVar, zzgjd zzgjdVar, zzifb zzifbVar, zzfxt zzfxtVar) {
        this.zza = zzfzlVar;
        this.zzb = zzgamVar;
        this.zzc = zzghyVar;
        this.zzd = zzgjdVar;
        this.zze = zzfxtVar.zzh();
        this.zzf = zzifbVar;
        this.zzg = zzfxtVar.zzg();
        this.zzi = zzfxtVar.zzq();
        this.zzj = zzfxtVar.zzp();
    }

    public final ListenableFuture zza() {
        return this.zza.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String zzb(Context context) {
        String zza;
        boolean z = false;
        if (this.zzi) {
            if (System.currentTimeMillis() - this.zzh <= this.zzj) {
                z = true;
            }
        }
        zzgjb zza2 = this.zzd.zza(3);
        try {
            try {
                try {
                    zza2.zza();
                    zza = (String) zzgui.zzj(this.zza.zzb(), new zzfxk(this, context), zzguz.zza()).get(z ? this.zzg : this.zze, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    zza2.zzb(e);
                    zza = "";
                } catch (ExecutionException e2) {
                    e = e2;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    zza2.zzb(e);
                    zza = Integer.toString(3);
                }
            } catch (TimeoutException e3) {
                zza2.zzb(e3);
                zza = z ? ((zzgdo) this.zzf.zzb()).zza(true, this.zzh) : Integer.toString(17);
            } catch (Throwable th) {
                zza2.zzb(th);
                throw th;
            }
            zza2.zzc();
            return zza;
        } catch (Throwable th2) {
            zza2.zzc();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String zzc(Context context, String str, View view, Activity activity) {
        String num;
        zzgjb zza = this.zzd.zza(4);
        try {
            try {
                try {
                    try {
                        try {
                            zza.zza();
                            num = (String) zzgui.zzj(this.zza.zzb(), new zzfxl(this, context, null, view, activity), zzguz.zza()).get(this.zze, TimeUnit.MILLISECONDS);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            zza.zzb(e);
                            num = "";
                        }
                    } catch (TimeoutException e2) {
                        zza.zzb(e2);
                        num = Integer.toString(17);
                    }
                } catch (ExecutionException e3) {
                    e = e3;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    zza.zzb(e);
                    num = Integer.toString(3);
                }
                zza.zzc();
                return num;
            } catch (Throwable th) {
                zza.zzb(th);
                throw th;
            }
        } catch (Throwable th2) {
            zza.zzc();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String zzd(Context context, String str, View view, Activity activity) {
        String num;
        zzgjb zza = this.zzd.zza(5);
        try {
            try {
                try {
                    try {
                        try {
                            zza.zza();
                            num = (String) zzgui.zzj(this.zza.zzb(), new zzfxm(this, context, str, view, null), zzguz.zza()).get(this.zze, TimeUnit.MILLISECONDS);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            zza.zzb(e);
                            num = "";
                        }
                    } catch (TimeoutException e2) {
                        zza.zzb(e2);
                        num = Integer.toString(17);
                    }
                } catch (ExecutionException e3) {
                    e = e3;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    zza.zzb(e);
                    num = Integer.toString(3);
                }
                zza.zzc();
                return num;
            } catch (Throwable th) {
                zza.zzb(th);
                throw th;
            }
        } catch (Throwable th2) {
            zza.zzc();
            throw th2;
        }
    }

    public final void zze(List list) {
        this.zzc.zza(list);
    }

    public final void zzf(InputEvent inputEvent) {
        this.zzb.zze(inputEvent);
    }

    final /* synthetic */ zzgam zzg() {
        return this.zzb;
    }

    public final int zzh() {
        return this.zzb.zzh();
    }
}
