package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzfiq;
import com.google.android.gms.internal.ads.zzfir;

/* loaded from: classes.dex */
public final class zzbw extends zzb {

    /* renamed from: do, reason: not valid java name */
    public final com.google.android.gms.ads.internal.util.client.zzu f9787do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.gms.ads.internal.util.client.zzv f9788do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9789do;

    public zzbw(Context context, String str, String str2, zzfir zzfirVar, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.f9787do = new com.google.android.gms.ads.internal.util.client.zzu(com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str));
        this.f9789do = str2;
        this.f9788do = zzvVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        String str = this.f9789do;
        com.google.android.gms.ads.internal.util.client.zzu zzuVar = this.f9787do;
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.f9788do;
        if (zzvVar != null) {
            new zzfiq(zzvVar.zzb(), zzuVar, zzbzw.zze, null).zzd(str);
        } else {
            zzuVar.zza(str);
        }
    }
}
