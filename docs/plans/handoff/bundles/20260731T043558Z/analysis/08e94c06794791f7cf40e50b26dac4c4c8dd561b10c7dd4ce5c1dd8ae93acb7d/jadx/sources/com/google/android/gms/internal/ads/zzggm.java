package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzggm implements zzggf {
    private final Context zza;
    private final zzifb zzb;
    private final zzggu zzc;
    private final zzgjd zzd;
    private final ExecutorService zze;
    private final zzgfg zzf;
    private final zzfrs zzg;

    zzggm(Context context, zzifb zzifbVar, zzggu zzgguVar, zzgjd zzgjdVar, ExecutorService executorService, zzgfg zzgfgVar, zzfrs zzfrsVar) {
        this.zza = context;
        this.zzb = zzifbVar;
        this.zzc = zzgguVar;
        this.zzd = zzgjdVar;
        this.zze = executorService;
        this.zzf = zzgfgVar;
        this.zzg = zzfrsVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzfzy zzf(int i) {
        zzfzx zzd = zzfzy.zzd();
        zzd.zze(i);
        return (zzfzy) zzd.zzbu();
    }

    @Override // com.google.android.gms.internal.ads.zzggf
    public final ListenableFuture zza() {
        final zzifb zzifbVar = this.zzb;
        Objects.requireNonNull(zzifbVar);
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzggh
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzifb.this.zzb();
            }
        };
        ExecutorService executorService = this.zze;
        zzgua zzguaVar = (zzgua) zzgui.zzg((zzgua) zzgui.zzk((zzgua) zzgui.zzj((zzgua) zzgui.zzk(zzgua.zzw(zzgui.zzd(callable, executorService)), new zzglu() { // from class: com.google.android.gms.internal.ads.zzggl
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                zzggm.this.zzb((zzbaa) obj);
                return new Integer(0);
            }
        }, zzguz.zza()), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzggi
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzggm.this.zzc((Integer) obj);
            }
        }, zzguz.zza()), new zzglu() { // from class: com.google.android.gms.internal.ads.zzggj
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                return zzggm.this.zzd((zzgaa) obj);
            }
        }, executorService), zzggg.class, zzggk.zza, zzguz.zza());
        this.zzd.zze(15202, zzguaVar);
        return zzguaVar;
    }

    final /* synthetic */ int zzb(zzbaa zzbaaVar) {
        if (zzfsp.zza(zzbaaVar)) {
            return 0;
        }
        this.zzd.zzc(15204, zzbaaVar.name());
        throw new zzggg(null);
    }

    final /* synthetic */ ListenableFuture zzc(Integer num) {
        return this.zzc.zza();
    }

    final /* synthetic */ zzfzy zzd(zzgaa zzgaaVar) {
        String zza = zzgaaVar.zza().zza();
        String zzb = zzgaaVar.zza().zzb();
        zzgjb zza2 = this.zzd.zza(15203);
        try {
            zza2.zza();
            zzftg zza3 = zzfsb.zza(this.zza, 1, (zzbaa) this.zzb.zzb(), zza, zzb, "1", this.zzg);
            zza2.zzc();
            int i = 2;
            if (zza3.zzc == 2) {
                this.zzd.zzb(15208);
                return zzf(4);
            }
            byte[] bArr = zza3.zzb;
            if (bArr == null || bArr.length == 0) {
                this.zzd.zzb(5010);
                return zzf(8);
            }
            try {
                zzbac zze = zzbac.zze(bArr, zzhvy.zzb());
                if (zze.zza().zza().isEmpty() || zze.zza().zzb().isEmpty() || zze.zzc().zzv().length == 0) {
                    this.zzd.zzb(15207);
                } else {
                    if (zzgaaVar.equals(zzgaa.zze()) || !TextUtils.equals(zzgaaVar.zza().zza(), zze.zza().zza()) || !TextUtils.equals(zzgaaVar.zza().zzb(), zze.zza().zzb())) {
                        int i2 = zza3.zzc;
                        if (i2 == 4) {
                            if (!this.zzf.zza(zze.zzb().zzv())) {
                                this.zzd.zzb(15206);
                                return zzf(12);
                            }
                            i2 = 4;
                        }
                        zzfzx zzd = zzfzy.zzd();
                        if (i2 == 2) {
                            i = 4;
                        } else if (i2 != 3) {
                            i = i2 != 4 ? i2 != 6 ? 1 : 5 : 3;
                        }
                        zzd.zze(i);
                        zzfzz zzd2 = zzgaa.zzd();
                        zzd2.zza(zze.zza());
                        zzd2.zzc((zzbaa) this.zzb.zzb());
                        zzd.zza((zzgaa) zzd2.zzbu());
                        zzd.zzd(zze.zzb());
                        zzd.zzc(zze.zzc());
                        return (zzfzy) zzd.zzbu();
                    }
                    this.zzd.zzb(15209);
                }
                return zzf(11);
            } catch (zzhxd e) {
                this.zzd.zzd(15205, e);
                return zzf(9);
            } catch (NullPointerException unused) {
                this.zzd.zzb(15210);
                return zzf(10);
            }
        } catch (Throwable th) {
            try {
                zza2.zzb(th);
                throw th;
            } catch (Throwable th2) {
                zza2.zzc();
                throw th2;
            }
        }
    }
}
