package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.C;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaaw implements zzbt {
    private final Context zza;
    private final zzbs zzb;
    private final SparseArray zzc;
    private final boolean zzd;
    private final zzabx zze;
    private final zzdc zzf;
    private final CopyOnWriteArraySet zzg;
    private final long zzh;
    private final zzabb zzi;
    private zzel zzj = new zzel(10);
    private zzv zzk;
    private zzdm zzl;
    private Pair zzm;
    private int zzn;
    private int zzo;
    private long zzp;
    private long zzq;
    private int zzr;

    /* synthetic */ zzaaw(zzaao zzaaoVar, byte[] bArr) {
        this.zza = zzaaoVar.zze();
        zzbs zzg = zzaaoVar.zzg();
        zzg.getClass();
        this.zzb = zzg;
        this.zzc = new SparseArray();
        zzgpe.zzi();
        this.zzd = zzaaoVar.zzh();
        zzdc zzi = zzaaoVar.zzi();
        this.zzf = zzi;
        this.zzh = zzaaoVar.zzj() != C.TIME_UNSET ? -zzaaoVar.zzj() : -9223372036854775807L;
        zzabb zzk = zzaaoVar.zzk();
        this.zzi = zzk;
        this.zze = new zzaab(zzaaoVar.zzf(), zzk, zzi);
        new zzaan(this);
        this.zzg = new CopyOnWriteArraySet();
        this.zzk = new zzt().zzM();
        this.zzp = C.TIME_UNSET;
        this.zzq = C.TIME_UNSET;
        this.zzr = -1;
        this.zzo = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final zzi zzC(zzi zziVar) {
        return (zziVar == null || !zziVar.zzf()) ? zzi.zza : zziVar;
    }

    final /* synthetic */ void zzA(long j) {
        this.zzq = j;
    }

    public final void zza(int i) {
        this.zzr = 1;
    }

    public final zzabx zzb(int i) {
        SparseArray sparseArray = this.zzc;
        if (zzep.zza(sparseArray, 0)) {
            return (zzabx) sparseArray.get(0);
        }
        zzaaq zzaaqVar = new zzaaq(this, this.zza, 0);
        this.zzg.add(zzaaqVar);
        sparseArray.put(0, zzaaqVar);
        return zzaaqVar;
    }

    public final void zzc(Surface surface, zzeh zzehVar) {
        Pair pair = this.zzm;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((zzeh) this.zzm.second).equals(zzehVar)) {
            return;
        }
        this.zzm = Pair.create(surface, zzehVar);
        zzehVar.zza();
        zzehVar.zzb();
    }

    public final void zzd() {
        zzeh zzehVar = zzeh.zza;
        zzehVar.zza();
        zzehVar.zzb();
        this.zzm = null;
    }

    public final void zze() {
        this.zze.zza();
    }

    public final void zzf() {
        this.zze.zzb();
    }

    public final void zzg() {
        if (this.zzo == 2) {
            return;
        }
        zzdm zzdmVar = this.zzl;
        if (zzdmVar != null) {
            zzdmVar.zzl(null);
        }
        this.zzm = null;
        this.zzo = 2;
    }

    final /* synthetic */ void zzh() {
        this.zzn--;
    }

    final /* synthetic */ boolean zzi(zzv zzvVar, int i) {
        zzgmd.zzh(this.zzo == 0);
        zzi zzC = zzC(zzvVar.zzE);
        try {
            int i2 = zzC.zzd;
            try {
                if (i2 == 7) {
                    if (Build.VERSION.SDK_INT < 34 && zzdk.zzd()) {
                        zzh zzd = zzC.zzd();
                        zzd.zzc(6);
                        zzC = zzd.zzg();
                        zzi zziVar = zzC;
                        zzdc zzdcVar = this.zzf;
                        Looper myLooper = Looper.myLooper();
                        myLooper.getClass();
                        this.zzl = zzdcVar.zzd(myLooper, null);
                        zzbs zzbsVar = this.zzb;
                        Context context = this.zza;
                        zzl zzlVar = zzl.zzb;
                        final zzdm zzdmVar = this.zzl;
                        Objects.requireNonNull(zzdmVar);
                        zzbsVar.zza(context, zziVar, zzlVar, this, new Executor() { // from class: com.google.android.gms.internal.ads.zzaap
                            @Override // java.util.concurrent.Executor
                            public final /* synthetic */ void execute(Runnable runnable) {
                                zzdm.this.zzm(runnable);
                            }
                        }, 0L, false);
                        throw null;
                    }
                    i2 = 7;
                }
                if (!zzdk.zzc(i2) && Build.VERSION.SDK_INT >= 29) {
                    Object[] objArr = {Integer.valueOf(i2)};
                    String str = zzep.zza;
                    zzdt.zzc("PlaybackVidGraphWrapper", String.format(Locale.US, "Color transfer %d is not supported. Falling back to OpenGl tone mapping.", objArr));
                    zzC = zzi.zza;
                    zzi zziVar2 = zzC;
                    zzdc zzdcVar2 = this.zzf;
                    Looper myLooper2 = Looper.myLooper();
                    myLooper2.getClass();
                    this.zzl = zzdcVar2.zzd(myLooper2, null);
                    zzbs zzbsVar2 = this.zzb;
                    Context context2 = this.zza;
                    zzl zzlVar2 = zzl.zzb;
                    final zzdm zzdmVar2 = this.zzl;
                    Objects.requireNonNull(zzdmVar2);
                    zzbsVar2.zza(context2, zziVar2, zzlVar2, this, new Executor() { // from class: com.google.android.gms.internal.ads.zzaap
                        @Override // java.util.concurrent.Executor
                        public final /* synthetic */ void execute(Runnable runnable) {
                            zzdm.this.zzm(runnable);
                        }
                    }, 0L, false);
                    throw null;
                }
                zzbs zzbsVar22 = this.zzb;
                Context context22 = this.zza;
                zzl zzlVar22 = zzl.zzb;
                final zzdm zzdmVar22 = this.zzl;
                Objects.requireNonNull(zzdmVar22);
                zzbsVar22.zza(context22, zziVar2, zzlVar22, this, new Executor() { // from class: com.google.android.gms.internal.ads.zzaap
                    @Override // java.util.concurrent.Executor
                    public final /* synthetic */ void execute(Runnable runnable) {
                        zzdm.this.zzm(runnable);
                    }
                }, 0L, false);
                throw null;
            } catch (zzbo e) {
                throw new zzabw(e, zzvVar);
            }
            if (i2 == 2 || i2 == 10) {
                zzC = zzi.zza;
            }
            zzi zziVar22 = zzC;
            zzdc zzdcVar22 = this.zzf;
            Looper myLooper22 = Looper.myLooper();
            myLooper22.getClass();
            this.zzl = zzdcVar22.zzd(myLooper22, null);
        } catch (zzdj e2) {
            throw new zzabw(e2, zzvVar);
        }
    }

    final /* synthetic */ boolean zzj(boolean z) {
        return this.zze.zzh(false);
    }

    final /* synthetic */ void zzk() {
        this.zze.zzi();
    }

    final /* synthetic */ void zzl(long j, long j2) {
        this.zze.zzv(j, j2);
    }

    final /* synthetic */ void zzm(boolean z) {
        if (this.zzo == 1) {
            this.zzn++;
            zzabx zzabxVar = this.zze;
            zzabxVar.zzg(z);
            while (this.zzj.zzc() > 1) {
                this.zzj.zzd();
            }
            if (this.zzj.zzc() == 1) {
                zzaav zzaavVar = (zzaav) this.zzj.zzd();
                zzaavVar.getClass();
                zzabxVar.zzs(1, this.zzk, zzaavVar.zza, zzaavVar.zzb, zzgpe.zzi());
            }
            this.zzp = C.TIME_UNSET;
            this.zzq = C.TIME_UNSET;
            zzdm zzdmVar = this.zzl;
            zzdmVar.getClass();
            zzdmVar.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaar
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzaaw.this.zzh();
                }
            });
        }
    }

    final /* synthetic */ void zzn(boolean z) {
        this.zze.zzw(z);
    }

    final /* synthetic */ void zzo() {
        this.zze.zzt();
    }

    final /* synthetic */ void zzp(zzaax zzaaxVar) {
        this.zze.zzl(zzaaxVar);
    }

    final /* synthetic */ void zzq(float f) {
        this.zzi.zzc(f);
        this.zze.zzm(f);
    }

    final /* synthetic */ void zzr(int i) {
        this.zze.zzr(i);
    }

    final /* synthetic */ boolean zzs() {
        int i = this.zzr;
        return i != -1 && i == 0;
    }

    final /* synthetic */ boolean zzt() {
        return this.zzd;
    }

    final /* synthetic */ long zzu() {
        return this.zzh;
    }

    final /* synthetic */ zzabb zzv() {
        return this.zzi;
    }

    final /* synthetic */ zzel zzw() {
        return this.zzj;
    }

    final /* synthetic */ void zzx(zzel zzelVar) {
        this.zzj = zzelVar;
    }

    final /* synthetic */ long zzy() {
        return this.zzp;
    }

    final /* synthetic */ long zzz() {
        return this.zzq;
    }
}
