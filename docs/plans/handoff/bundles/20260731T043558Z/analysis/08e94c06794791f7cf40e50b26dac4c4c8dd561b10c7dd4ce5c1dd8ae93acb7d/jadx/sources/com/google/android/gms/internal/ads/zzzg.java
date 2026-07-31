package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzzg implements zzdg {
    static final /* synthetic */ zzzg zza = new zzzg();

    private /* synthetic */ zzzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final /* synthetic */ void zza(Object obj) {
        ((ExecutorService) obj).shutdown();
    }
}
