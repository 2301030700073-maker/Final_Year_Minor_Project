package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgpc extends zzgnd {
    private final zzgpe zza;

    zzgpc(zzgpe zzgpeVar, int i) {
        super(zzgpeVar.size(), i);
        this.zza = zzgpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgnd
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
