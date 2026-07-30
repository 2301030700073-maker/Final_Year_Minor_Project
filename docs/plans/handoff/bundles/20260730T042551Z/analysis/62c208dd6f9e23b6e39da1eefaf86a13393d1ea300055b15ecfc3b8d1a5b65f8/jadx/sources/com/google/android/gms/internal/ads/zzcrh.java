package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcrh implements zzegr {
    public final List zza;

    public zzcrh(zzcqz zzcqzVar) {
        this.zza = Collections.singletonList(zzgch.zzh(zzcqzVar));
    }

    public zzcrh(List list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzegr
    public final void zzr() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            zzgch.zzr((InterfaceFutureC3942wq) it.next(), new zzcrg(this), zzgcz.zzc());
        }
    }
}
