package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbyy;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzcuw;
import com.google.android.gms.internal.ads.zzcux;
import com.google.android.gms.internal.ads.zzcvk;
import com.google.android.gms.internal.ads.zzdeh;
import com.google.android.gms.internal.ads.zzdre;
import com.google.android.gms.internal.ads.zzfgh;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzgch;
import com.google.android.gms.internal.ads.zzher;
import com.google.android.gms.internal.ads.zzhez;
import com.google.android.gms.internal.ads.zzhfj;
import defpackage.GP;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzbg implements zzher {

    /* renamed from: case, reason: not valid java name */
    public final zzhfj f10033case;

    /* renamed from: do, reason: not valid java name */
    public final zzhfj f10034do;

    /* renamed from: else, reason: not valid java name */
    public final zzhfj f10035else;

    /* renamed from: for, reason: not valid java name */
    public final zzhfj f10036for;

    /* renamed from: goto, reason: not valid java name */
    public final zzhfj f10037goto;

    /* renamed from: if, reason: not valid java name */
    public final zzhfj f10038if;

    /* renamed from: new, reason: not valid java name */
    public final zzhfj f10039new;

    /* renamed from: this, reason: not valid java name */
    public final zzhfj f10040this;

    /* renamed from: try, reason: not valid java name */
    public final zzhfj f10041try;

    public zzbg(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4, zzhfj zzhfjVar5, zzhfj zzhfjVar6, zzhfj zzhfjVar7, zzhfj zzhfjVar8, zzhfj zzhfjVar9) {
        this.f10034do = zzhfjVar;
        this.f10038if = zzhfjVar2;
        this.f10036for = zzhfjVar3;
        this.f10039new = zzhfjVar4;
        this.f10041try = zzhfjVar5;
        this.f10033case = zzhfjVar6;
        this.f10035else = zzhfjVar7;
        this.f10037goto = zzhfjVar8;
        this.f10040this = zzhfjVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        InterfaceFutureC3942wq zza;
        zzau zzauVar = (zzau) this.f10034do.zzb();
        zzfgn zzfgnVar = (zzfgn) this.f10038if.zzb();
        zzbi zzb = ((zzbj) this.f10036for).zzb();
        zzcuw zzb2 = ((zzcux) this.f10039new).zzb();
        zzdeh zzdehVar = (zzdeh) this.f10041try.zzb();
        zzb zzbVar = (zzb) this.f10033case.zzb();
        zzbyy zzbyyVar = (zzbyy) this.f10035else.zzb();
        int intValue = ((Integer) this.f10037goto.zzb()).intValue();
        Bundle bundle = ((zzcvk) this.f10040this).zza().zzs;
        zzbk zzbkVar = null;
        if (intValue == 1 && zzbyyVar != null) {
            V1.m2496class(bundle, zzdre.READ_FROM_DISK_START.zza());
            zzbkVar = zzbVar.zza(zzbyyVar, zzauVar, bundle);
            V1.m2496class(bundle, zzdre.READ_FROM_DISK_END.zza());
        }
        if (zzbkVar != null) {
            zzdehVar.zza(zzbkVar);
            zza = zzgch.zzh(zzbkVar);
        } else {
            zza = zzfgnVar.zzb(zzfgh.GENERATE_SIGNALS, zzb2.zzc()).zzf(zzb).zzi(((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfy)).intValue(), TimeUnit.SECONDS).zza();
            zzgch.zzr(zza, new GP(zzdehVar), zzbzw.zza);
        }
        zzhez.zzb(zza);
        return zza;
    }
}
