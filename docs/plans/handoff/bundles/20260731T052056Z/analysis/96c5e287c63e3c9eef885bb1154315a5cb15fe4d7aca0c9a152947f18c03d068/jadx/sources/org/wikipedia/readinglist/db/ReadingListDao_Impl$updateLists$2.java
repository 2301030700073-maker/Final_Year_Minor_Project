package org.wikipedia.readinglist.db;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.Service;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListDao_Impl$updateLists$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ List $lists;
    public final /* synthetic */ boolean $queueForSync;
    public int label;
    public final /* synthetic */ ReadingListDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListDao_Impl$updateLists$2(ReadingListDao_Impl readingListDao_Impl, List list, boolean z, Continuation continuation) {
        super(1, continuation);
        this.this$0 = readingListDao_Impl;
        this.$lists = list;
        this.$queueForSync = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List list = this.$lists;
        boolean z = this.$queueForSync;
        return new ReadingListDao_Impl$updateLists$2(this.this$0, list, z, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (Service.CC.updateLists$suspendImpl(this.this$0, this.$lists, this.$queueForSync, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
