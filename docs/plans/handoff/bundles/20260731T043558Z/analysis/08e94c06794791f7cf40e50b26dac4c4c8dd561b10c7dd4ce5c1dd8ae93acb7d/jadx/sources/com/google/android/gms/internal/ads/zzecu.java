package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzecu implements zzgtq {
    static final /* synthetic */ zzecu zza = new zzecu();

    private /* synthetic */ zzecu() {
    }

    @Override // com.google.android.gms.internal.ads.zzgtq
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        ExecutionException executionException = (ExecutionException) obj;
        Throwable cause = executionException.getCause();
        Throwable th = executionException;
        if (cause != null) {
            th = executionException.getCause();
        }
        return zzgui.zzc(th);
    }
}
