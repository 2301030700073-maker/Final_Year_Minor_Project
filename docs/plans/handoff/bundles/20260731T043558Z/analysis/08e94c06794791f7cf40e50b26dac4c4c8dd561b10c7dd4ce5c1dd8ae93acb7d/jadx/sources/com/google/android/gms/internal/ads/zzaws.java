package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.media3.common.PlaybackException;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaws implements zzawv {
    private static zzaws zzb;
    private final Context zzc;
    private final zzftc zzd;
    private final zzftj zze;
    private final zzftl zzf;
    private final zzaxx zzg;
    private final zzfrs zzh;
    private final Executor zzi;
    private final zzbaa zzj;
    private final zzfti zzk;
    private final zzaym zzm;
    private final zzaye zzn;
    private final zzaxv zzo;
    private volatile boolean zzq;
    private volatile boolean zzr;
    volatile long zza = 0;
    private final Object zzp = new Object();
    private final CountDownLatch zzl = new CountDownLatch(1);

    zzaws(Context context, zzfrs zzfrsVar, zzftc zzftcVar, zzftj zzftjVar, zzftl zzftlVar, zzaxx zzaxxVar, Executor executor, zzfrn zzfrnVar, zzbaa zzbaaVar, zzaym zzaymVar, zzaye zzayeVar, zzaxv zzaxvVar) {
        this.zzr = false;
        this.zzc = context;
        this.zzh = zzfrsVar;
        this.zzd = zzftcVar;
        this.zze = zzftjVar;
        this.zzf = zzftlVar;
        this.zzg = zzaxxVar;
        this.zzi = executor;
        this.zzj = zzbaaVar;
        this.zzm = zzaymVar;
        this.zzn = zzayeVar;
        this.zzo = zzaxvVar;
        this.zzr = false;
        this.zzk = new zzawq(this, zzfrnVar);
    }

    public static synchronized zzaws zza(Context context, zzate zzateVar, boolean z) {
        zzaws zzs;
        synchronized (zzaws.class) {
            zzfrt zzh = zzfru.zzh();
            zzh.zza(zzateVar.zza());
            zzh.zzb(zzateVar.zzb());
            zzs = zzs(context, Executors.newCachedThreadPool(), zzh.zzh(), z);
        }
        return zzs;
    }

    private static synchronized zzaws zzs(Context context, Executor executor, zzfru zzfruVar, boolean z) {
        zzaws zzawsVar;
        zzfru zzfruVar2;
        zzaxv zzaxvVar;
        synchronized (zzaws.class) {
            if (zzb == null) {
                zzfrs zza = zzfrs.zza(context, executor, z);
                zzaxg zza2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdS)).booleanValue() ? zzaxg.zza(context) : null;
                zzaym zza3 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdT)).booleanValue() ? zzaym.zza(context, executor) : null;
                zzaye zzayeVar = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdb)).booleanValue() ? new zzaye() : null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdk)).booleanValue()) {
                    zzaxvVar = new zzaxv();
                    zzfruVar2 = zzfruVar;
                } else {
                    zzfruVar2 = zzfruVar;
                    zzaxvVar = null;
                }
                zzfsi zza4 = zzfsi.zza(context, executor, zza, zzfruVar2);
                zzaxw zzaxwVar = new zzaxw(context);
                zzaxx zzaxxVar = new zzaxx(zzfruVar, zza4, new zzayk(context, zzaxwVar), zzaxwVar, zza2, zza3, zzayeVar, zzaxvVar);
                zzbaa zzb2 = zzfsp.zzb(context, zza);
                zzfrn zzfrnVar = new zzfrn();
                zzaws zzawsVar2 = new zzaws(context, zza, new zzftc(context, zzb2), new zzftj(context, zzb2, new zzawp(zza), ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcL)).booleanValue()), new zzftl(context, zzaxxVar, zza, zzfrnVar, false), zzaxxVar, executor, zzfrnVar, zzb2, zza3, zzayeVar, zzaxvVar);
                zzb = zzawsVar2;
                zzawsVar2.zzc();
                zzb.zzm();
            }
            zzawsVar = zzb;
        }
        return zzawsVar;
    }

    private final void zzt() {
        zzaym zzaymVar = this.zzm;
        if (zzaymVar != null) {
            zzaymVar.zzb();
        }
    }

    private final zzftb zzu(int i) {
        if (zzfsp.zza(this.zzj)) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcJ)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzb(1);
        }
        return null;
    }

    public final synchronized boolean zzb() {
        return this.zzr;
    }

    final synchronized void zzc() {
        long currentTimeMillis = System.currentTimeMillis();
        zzftb zzu = zzu(1);
        if (zzu == null) {
            this.zzh.zzb(4013, System.currentTimeMillis() - currentTimeMillis);
        } else if (this.zzf.zza(zzu)) {
            this.zzr = true;
            this.zzl.countDown();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzd(MotionEvent motionEvent) {
        zzfrv zzb2 = this.zzf.zzb();
        if (zzb2 != null) {
            try {
                zzb2.zzd(null, motionEvent);
            } catch (zzftk e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zze(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmX)).booleanValue() || (displayMetrics = this.zzc.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f = i;
        float f2 = i2;
        MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzd(obtain);
        obtain.recycle();
        MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzd(obtain2);
        obtain2.recycle();
        MotionEvent obtain3 = MotionEvent.obtain(0L, i3, 1, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzd(obtain3);
        obtain3.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzf(Context context, String str, View view, Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdb)).booleanValue()) {
            this.zzn.zzc();
        }
        zzm();
        zzfrv zzb2 = this.zzf.zzb();
        if (zzb2 == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzc = zzb2.zzc(context, null, str, view, activity);
        this.zzh.zzd(5000, System.currentTimeMillis() - currentTimeMillis, zzc, null);
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzg(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzh(View view) {
        this.zzg.zza(view);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        zzaxv zzaxvVar = this.zzo;
        if (zzaxvVar != null) {
            zzaxvVar.zza(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzj(Context context, View view, Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdb)).booleanValue()) {
            this.zzn.zzb(context, view);
        }
        zzm();
        zzfrv zzb2 = this.zzf.zzb();
        if (zzb2 == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzb3 = zzb2.zzb(context, null, view, activity);
        this.zzh.zzd(PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED, System.currentTimeMillis() - currentTimeMillis, zzb3, null);
        return zzb3;
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzk(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzl(Context context) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdb)).booleanValue()) {
            this.zzn.zza();
        }
        zzm();
        zzfrv zzb2 = this.zzf.zzb();
        if (zzb2 == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zza = zzb2.zza(context, null);
        this.zzh.zzd(PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED, System.currentTimeMillis() - currentTimeMillis, zza, null);
        return zza;
    }

    public final void zzm() {
        if (this.zzq) {
            return;
        }
        synchronized (this.zzp) {
            if (!this.zzq) {
                if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                    return;
                }
                zzftb zzc = this.zzf.zzc();
                if ((zzc == null || zzc.zze(3600L)) && zzfsp.zza(this.zzj)) {
                    this.zzi.execute(new zzawr(this));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x009d, code lost:
    
        if (r3.zza().zzb().equals(r5.zzb()) == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ void zzn() {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaws.zzn():void");
    }

    final /* synthetic */ zzfrs zzo() {
        return this.zzh;
    }

    final /* synthetic */ Object zzp() {
        return this.zzp;
    }

    final /* synthetic */ boolean zzq() {
        return this.zzq;
    }

    final /* synthetic */ void zzr(boolean z) {
        this.zzq = z;
    }
}
