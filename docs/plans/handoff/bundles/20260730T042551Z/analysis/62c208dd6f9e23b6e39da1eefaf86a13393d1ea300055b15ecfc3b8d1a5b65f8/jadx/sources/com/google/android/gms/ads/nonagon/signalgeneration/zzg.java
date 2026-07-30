package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.zzche;
import com.google.android.gms.internal.ads.zzchs;
import com.google.android.gms.internal.ads.zzcki;
import com.google.android.gms.internal.ads.zzepc;
import com.google.android.gms.internal.ads.zzher;
import com.google.android.gms.internal.ads.zzhfj;

/* loaded from: classes.dex */
public final class zzg implements zzher {

    /* renamed from: do, reason: not valid java name */
    public final zzhfj f10069do;

    /* renamed from: if, reason: not valid java name */
    public final zzhfj f10070if;

    public zzg(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4) {
        this.f10069do = zzhfjVar;
        this.f10070if = zzhfjVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzche) this.f10069do).zza();
        zzcki.zza();
        return new zzf(zza, zzepc.zzc(), ((zzchs) this.f10070if).zza());
    }
}
