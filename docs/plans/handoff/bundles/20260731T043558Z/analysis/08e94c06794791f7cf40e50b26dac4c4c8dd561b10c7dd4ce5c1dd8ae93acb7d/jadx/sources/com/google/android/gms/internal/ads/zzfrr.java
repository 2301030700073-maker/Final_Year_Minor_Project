package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzfrr implements Continuation {
    static final /* synthetic */ zzfrr zza = new zzfrr();

    private /* synthetic */ zzfrr() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(Task task) {
        return new Boolean(task.isSuccessful());
    }
}
