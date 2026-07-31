package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfkd {
    public static final zzfkj zza(ListenableFuture listenableFuture, Object obj, zzfkk zzfkkVar) {
        ListenableFuture listenableFuture2;
        listenableFuture2 = zzfkk.zza;
        return new zzfkj(zzfkkVar, obj, null, listenableFuture2, Collections.emptyList(), listenableFuture, null);
    }

    public static final zzfkj zzb(Callable callable, Object obj, zzfkk zzfkkVar) {
        return zzc(callable, zzfkkVar.zze(), obj, zzfkkVar);
    }

    public static final zzfkj zzc(Callable callable, zzgus zzgusVar, Object obj, zzfkk zzfkkVar) {
        ListenableFuture listenableFuture;
        listenableFuture = zzfkk.zza;
        return new zzfkj(zzfkkVar, obj, null, listenableFuture, Collections.emptyList(), zzgusVar.submit(callable), null);
    }

    public static final zzfkj zzd(final zzfjy zzfjyVar, zzgus zzgusVar, Object obj, zzfkk zzfkkVar) {
        return zzc(new Callable() { // from class: com.google.android.gms.internal.ads.zzfkc
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzfjy.this.zza();
                return null;
            }
        }, zzgusVar, obj, zzfkkVar);
    }
}
