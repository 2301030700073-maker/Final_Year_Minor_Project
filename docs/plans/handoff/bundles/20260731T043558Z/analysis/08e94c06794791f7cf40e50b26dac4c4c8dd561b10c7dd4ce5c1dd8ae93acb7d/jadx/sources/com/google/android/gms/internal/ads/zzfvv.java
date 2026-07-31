package com.google.android.gms.internal.ads;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfvv extends ContinuationImpl {
    long zza;
    Object zzb;
    /* synthetic */ Object zzc;
    final /* synthetic */ zzfwo zzd;
    int zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfvv(zzfwo zzfwoVar, Continuation continuation) {
        super(continuation);
        this.zzd = zzfwoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object zzu;
        this.zzc = obj;
        this.zze |= Integer.MIN_VALUE;
        zzu = this.zzd.zzu(0L, this);
        return zzu;
    }
}
