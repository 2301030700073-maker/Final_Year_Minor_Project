package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzdee;

/* loaded from: classes.dex */
public final class zzbm implements zzdee {

    /* renamed from: break, reason: not valid java name */
    public final String f10047break;

    /* renamed from: do, reason: not valid java name */
    public final zzb f10048do;

    /* renamed from: for, reason: not valid java name */
    public final int f10049for;

    public zzbm(zzb zzbVar, int i, String str) {
        this.f10048do = zzbVar;
        this.f10049for = i;
        this.f10047break = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zze(final zzbk zzbkVar) {
        if (zzbkVar == null || this.f10049for != 2 || TextUtils.isEmpty(this.f10047break)) {
            return;
        }
        com.google.android.gms.ads.internal.util.zzs.zzh(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbl
            @Override // java.lang.Runnable
            public final void run() {
                zzbm zzbmVar = zzbm.this;
                zzbmVar.f10048do.zzd(zzbmVar.f10047break, zzbkVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zzf(String str) {
    }
}
