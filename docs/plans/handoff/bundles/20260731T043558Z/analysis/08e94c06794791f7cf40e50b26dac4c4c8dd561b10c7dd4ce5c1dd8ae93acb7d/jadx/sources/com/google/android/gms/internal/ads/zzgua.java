package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class zzgua extends zzguj {
    zzgua() {
    }

    public static zzgua zzw(ListenableFuture listenableFuture) {
        return listenableFuture instanceof zzgua ? (zzgua) listenableFuture : new zzgub(listenableFuture);
    }
}
