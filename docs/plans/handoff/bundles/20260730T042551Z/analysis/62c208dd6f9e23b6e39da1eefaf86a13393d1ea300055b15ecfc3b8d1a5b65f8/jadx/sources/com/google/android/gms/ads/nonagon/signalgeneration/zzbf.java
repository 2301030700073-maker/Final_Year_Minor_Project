package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzddk;
import com.google.android.gms.internal.ads.zzdee;
import com.google.android.gms.internal.ads.zzffh;
import com.google.android.gms.internal.ads.zzgcs;
import com.google.android.gms.internal.ads.zzher;
import com.google.android.gms.internal.ads.zzhfj;

/* loaded from: classes.dex */
public final class zzbf implements zzher {

    /* renamed from: do, reason: not valid java name */
    public final zzhfj f10030do;

    /* renamed from: for, reason: not valid java name */
    public final zzhfj f10031for;

    /* renamed from: if, reason: not valid java name */
    public final zzhfj f10032if;

    public zzbf(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4) {
        this.f10030do = zzhfjVar;
        this.f10032if = zzhfjVar2;
        this.f10031for = zzhfjVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdee zzdeeVar = (zzw) this.f10030do.zzb();
        zzdee zzdeeVar2 = (zzbm) this.f10032if.zzb();
        zzgcs zzc = zzffh.zzc();
        if (((Integer) this.f10031for.zzb()).intValue() == 2) {
            zzdeeVar = zzdeeVar2;
        }
        return new zzddk(zzdeeVar, zzc);
    }
}
