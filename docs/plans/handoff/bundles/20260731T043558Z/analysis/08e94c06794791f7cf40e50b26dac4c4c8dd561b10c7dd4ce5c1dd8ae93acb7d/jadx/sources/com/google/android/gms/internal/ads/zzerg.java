package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzerg implements zzglu {
    static final /* synthetic */ zzerg zza = new zzerg();

    private /* synthetic */ zzerg() {
    }

    @Override // com.google.android.gms.internal.ads.zzglu
    public final /* synthetic */ Object apply(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        if (true == arrayList.isEmpty()) {
            arrayList = null;
        }
        return new zzeri(arrayList);
    }
}
