package com.google.android.gms.internal.ads;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfwb extends SuspendLambda implements Function2 {
    /* synthetic */ Object zza;
    final /* synthetic */ zzfvg zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfwb(zzfvg zzfvgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzfvgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfwb zzfwbVar = new zzfwb(this.zzb, continuation);
        zzfwbVar.zza = obj;
        return zzfwbVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfwb) create((zzfvk) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzfvm zza = zzfvl.zza((zzfvi) ((zzfvk) this.zza).zzcc());
        zzhzs zzb = zza.zzb();
        zzfvg zzfvgVar = this.zzb;
        String zza2 = zzfvgVar.zza();
        Intrinsics.checkNotNullExpressionValue(zza2, "getGwsQueryId(...)");
        zza.zzc(zzb, zza2, zzfvgVar);
        return zza.zza();
    }
}
