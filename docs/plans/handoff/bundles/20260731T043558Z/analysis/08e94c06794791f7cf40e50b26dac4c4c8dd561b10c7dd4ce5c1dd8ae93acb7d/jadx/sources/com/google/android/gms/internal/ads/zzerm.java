package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzerm implements zzglu {
    static final /* synthetic */ zzerm zza = new zzerm();

    private /* synthetic */ zzerm() {
    }

    @Override // com.google.android.gms.internal.ads.zzglu
    public final /* synthetic */ Object apply(Object obj) {
        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
        return new zzero(appSetIdInfo.getId(), appSetIdInfo.getScope());
    }
}
