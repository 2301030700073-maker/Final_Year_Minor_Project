package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfco implements zzfdm {
    private zzcxv zza;
    private final Executor zzb = zzguz.zza();

    public final zzcxv zza() {
        return this.zza;
    }

    public final ListenableFuture zzb(zzfdn zzfdnVar, zzfdl zzfdlVar, zzcxv zzcxvVar) {
        zzcxu zza = zzfdlVar.zza(zzfdnVar.zzb);
        zza.zzj(new zzfdq(true));
        zzcxv zzcxvVar2 = (zzcxv) zza.zzh();
        this.zza = zzcxvVar2;
        final zzcus zza2 = zzcxvVar2.zza();
        final zzfil zzfilVar = new zzfil();
        zzgua zzw = zzgua.zzw(zza2.zzb());
        zzgtq zzgtqVar = new zzgtq(this) { // from class: com.google.android.gms.internal.ads.zzfcn
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                zzfgf zzfgfVar = (zzfgf) obj;
                zzfilVar.zzb = zzfgfVar;
                Iterator it = zzfgfVar.zzb.zza.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        Iterator it2 = ((zzffu) it.next()).zza.iterator();
                        while (it2.hasNext()) {
                            if (!((String) it2.next()).contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z = true;
                        }
                    } else if (z) {
                        return zza2.zzc(zzgui.zza(zzfgfVar));
                    }
                }
                return zzgui.zza(null);
            }
        };
        Executor executor = this.zzb;
        return (zzgua) zzgui.zzk((zzgua) zzgui.zzj(zzw, zzgtqVar, executor), new zzglu() { // from class: com.google.android.gms.internal.ads.zzfcm
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                zzfil zzfilVar2 = zzfil.this;
                zzfilVar2.zzc = (zzcto) obj;
                return zzfilVar2;
            }
        }, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzfdm
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzfdn zzfdnVar, zzfdl zzfdlVar, Object obj) {
        return zzb(zzfdnVar, zzfdlVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfdm
    public final /* synthetic */ Object zzd() {
        return this.zza;
    }
}
