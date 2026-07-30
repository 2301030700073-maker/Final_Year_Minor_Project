package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzapi;
import com.google.android.gms.internal.ads.zzapm;
import com.google.android.gms.internal.ads.zzaps;
import com.google.android.gms.internal.ads.zzaqj;
import com.google.android.gms.internal.ads.zzcab;
import defpackage.C4082zB;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbm extends zzapm {

    /* renamed from: do, reason: not valid java name */
    public final com.google.android.gms.ads.internal.util.client.zzl f9778do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzcab f9779do;

    public zzbm(String str, Map map, zzcab zzcabVar) {
        super(0, str, new C4082zB(zzcabVar, 1));
        this.f9779do = zzcabVar;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        this.f9778do = zzlVar;
        zzlVar.zzd(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    public final zzaps zzh(zzapi zzapiVar) {
        return zzaps.zzb(zzapiVar, zzaqj.zzb(zzapiVar));
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    public final /* bridge */ /* synthetic */ void zzo(Object obj) {
        zzapi zzapiVar = (zzapi) obj;
        Map map = zzapiVar.zzc;
        int i = zzapiVar.zza;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = this.f9778do;
        zzlVar.zzf(map, i);
        byte[] bArr = zzapiVar.zzb;
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk() && bArr != null) {
            zzlVar.zzh(bArr);
        }
        this.f9779do.zzc(zzapiVar);
    }
}
