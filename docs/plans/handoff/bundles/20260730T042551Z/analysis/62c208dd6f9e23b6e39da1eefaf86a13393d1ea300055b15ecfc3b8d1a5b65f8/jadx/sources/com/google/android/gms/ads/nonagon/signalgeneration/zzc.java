package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.pm.PackageInfo;
import com.google.android.gms.internal.ads.zzche;
import com.google.android.gms.internal.ads.zzher;
import com.google.android.gms.internal.ads.zzhfj;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzc implements zzher {

    /* renamed from: do, reason: not valid java name */
    public final zzhfj f10053do;

    /* renamed from: for, reason: not valid java name */
    public final zzhfj f10054for;

    /* renamed from: if, reason: not valid java name */
    public final zzhfj f10055if;

    /* renamed from: new, reason: not valid java name */
    public final zzhfj f10056new;

    /* renamed from: try, reason: not valid java name */
    public final zzhfj f10057try;

    public zzc(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4, zzhfj zzhfjVar5) {
        this.f10053do = zzhfjVar;
        this.f10055if = zzhfjVar2;
        this.f10054for = zzhfjVar3;
        this.f10056new = zzhfjVar4;
        this.f10057try = zzhfjVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzb(((zzche) this.f10053do).zza(), ((Long) this.f10055if.zzb()).longValue(), (PackageInfo) this.f10054for.zzb(), (zzd) this.f10056new.zzb(), (ScheduledExecutorService) this.f10057try.zzb());
    }
}
