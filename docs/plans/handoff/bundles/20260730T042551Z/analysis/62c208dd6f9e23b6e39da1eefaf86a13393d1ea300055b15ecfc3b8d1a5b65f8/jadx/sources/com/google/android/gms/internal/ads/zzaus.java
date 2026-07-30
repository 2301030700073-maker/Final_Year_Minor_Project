package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class zzaus implements zzauv {
    private static zzaus zzb;
    private final Context zzc;
    private final zzfox zzd;
    private final zzfpe zze;
    private final zzfpg zzf;
    private final zzavx zzg;
    private final zzfni zzh;
    private final Executor zzi;
    private final zzfpd zzj;
    private final zzawm zzl;
    private final zzawe zzm;
    private final zzavv zzn;
    private volatile boolean zzp;
    private volatile boolean zzq;
    private final int zzr;
    volatile long zza = 0;
    private final Object zzo = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    public zzaus(Context context, zzfni zzfniVar, zzfox zzfoxVar, zzfpe zzfpeVar, zzfpg zzfpgVar, zzavx zzavxVar, Executor executor, zzfnd zzfndVar, int i, zzawm zzawmVar, zzawe zzaweVar, zzavv zzavvVar) {
        this.zzq = false;
        this.zzc = context;
        this.zzh = zzfniVar;
        this.zzd = zzfoxVar;
        this.zze = zzfpeVar;
        this.zzf = zzfpgVar;
        this.zzg = zzavxVar;
        this.zzi = executor;
        this.zzr = i;
        this.zzl = zzawmVar;
        this.zzm = zzaweVar;
        this.zzn = zzavvVar;
        this.zzq = false;
        this.zzj = new zzauq(this, zzfndVar);
    }

    public static synchronized zzaus zza(Context context, zzarg zzargVar, boolean z) {
        zzaus zzs;
        synchronized (zzaus.class) {
            zzfnj zzc = zzfnk.zzc();
            zzc.zza(zzargVar.zzf());
            zzc.zzg(zzargVar.zzi());
            zzs = zzs(context, Executors.newCachedThreadPool(), zzc.zzh(), z);
        }
        return zzs;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x009a, code lost:
    
        if (r4.zzc().zzj().equals(r5.zzj()) != false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* bridge */ /* synthetic */ void zzj(com.google.android.gms.internal.ads.zzaus r12) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaus.zzj(com.google.android.gms.internal.ads.zzaus):void");
    }

    private static synchronized zzaus zzs(Context context, Executor executor, zzfnk zzfnkVar, boolean z) {
        zzaus zzausVar;
        zzfnk zzfnkVar2;
        zzavv zzavvVar;
        synchronized (zzaus.class) {
            if (zzb == null) {
                zzfni zza = zzfni.zza(context, executor, z);
                zzavg zzc = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdw)).booleanValue() ? zzavg.zzc(context) : null;
                zzawm zzd = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdx)).booleanValue() ? zzawm.zzd(context, executor) : null;
                zzawe zzaweVar = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue() ? new zzawe() : null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcT)).booleanValue()) {
                    zzavvVar = new zzavv();
                    zzfnkVar2 = zzfnkVar;
                } else {
                    zzfnkVar2 = zzfnkVar;
                    zzavvVar = null;
                }
                zzfob zze = zzfob.zze(context, executor, zza, zzfnkVar2);
                zzavw zzavwVar = new zzavw(context);
                zzavx zzavxVar = new zzavx(zzfnkVar, zze, new zzawk(context, zzavwVar), zzavwVar, zzc, zzd, zzaweVar, zzavvVar);
                int zzb2 = zzfok.zzb(context, zza);
                zzfnd zzfndVar = new zzfnd();
                zzaus zzausVar2 = new zzaus(context, zza, new zzfox(context, zzb2), new zzfpe(context, zzb2, new zzaup(zza), ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcw)).booleanValue()), new zzfpg(context, zzavxVar, zza, zzfndVar), zzavxVar, executor, zzfndVar, zzb2, zzd, zzaweVar, zzavvVar);
                zzb = zzausVar2;
                zzausVar2.zzm();
                zzb.zzp();
            }
            zzausVar = zzb;
        }
        return zzausVar;
    }

    private final void zzt() {
        zzawm zzawmVar = this.zzl;
        if (zzawmVar != null) {
            zzawmVar.zzh();
        }
    }

    private final zzfow zzu(int i) {
        if (zzfok.zza(this.zzr)) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcu)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzc(1);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zze(Context context, String str, View view, Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue()) {
            this.zzm.zzi();
        }
        zzp();
        zzfnl zza = this.zzf.zza();
        if (zza == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zza2 = zza.zza(context, null, str, view, activity);
        this.zzh.zzf(5000, System.currentTimeMillis() - currentTimeMillis, zza2, null);
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzf(Context context) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue()) {
            this.zzm.zzj();
        }
        zzp();
        zzfnl zza = this.zzf.zza();
        if (zza == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzc = zza.zzc(context, null);
        this.zzh.zzf(5001, System.currentTimeMillis() - currentTimeMillis, zzc, null);
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzh(Context context, View view, Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzp();
        zzfnl zza = this.zzf.zza();
        if (zza == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzb2 = zza.zzb(context, null, view, activity);
        this.zzh.zzf(5002, System.currentTimeMillis() - currentTimeMillis, zzb2, null);
        return zzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzk(MotionEvent motionEvent) {
        zzfnl zza = this.zzf.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzfpf e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzl(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlP)).booleanValue() || (displayMetrics = this.zzc.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f = i;
        float f2 = displayMetrics.density;
        float f3 = i2;
        MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f * f2, f3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(obtain);
        obtain.recycle();
        float f4 = displayMetrics.density;
        MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f * f4, f3 * f4, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(obtain2);
        obtain2.recycle();
        float f5 = displayMetrics.density;
        MotionEvent obtain3 = MotionEvent.obtain(0L, i3, 1, f * f5, f3 * f5, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(obtain3);
        obtain3.recycle();
    }

    public final synchronized void zzm() {
        long currentTimeMillis = System.currentTimeMillis();
        zzfow zzu = zzu(1);
        if (zzu == null) {
            this.zzh.zzd(4013, System.currentTimeMillis() - currentTimeMillis);
        } else if (this.zzf.zzc(zzu)) {
            this.zzq = true;
            this.zzk.countDown();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzavv zzavvVar = this.zzn;
        if (zzavvVar != null) {
            zzavvVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzo(View view) {
        this.zzg.zzd(view);
    }

    public final void zzp() {
        if (this.zzp) {
            return;
        }
        synchronized (this.zzo) {
            if (!this.zzp) {
                if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                    return;
                }
                zzfow zzb2 = this.zzf.zzb();
                if ((zzb2 == null || zzb2.zzd(3600L)) && zzfok.zza(this.zzr)) {
                    this.zzi.execute(new zzaur(this));
                }
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.zzq;
    }
}
