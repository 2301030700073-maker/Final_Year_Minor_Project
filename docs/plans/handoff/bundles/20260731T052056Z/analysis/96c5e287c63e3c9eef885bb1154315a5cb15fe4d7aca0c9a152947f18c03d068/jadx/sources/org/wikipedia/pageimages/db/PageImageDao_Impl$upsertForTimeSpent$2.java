package org.wikipedia.pageimages.db;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.Service;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageImageDao_Impl$upsertForTimeSpent$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ HistoryEntry $entry;
    public final /* synthetic */ int $timeSpent;
    public int label;
    public final /* synthetic */ PageImageDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageImageDao_Impl$upsertForTimeSpent$2(PageImageDao_Impl pageImageDao_Impl, HistoryEntry historyEntry, int i, Continuation continuation) {
        super(1, continuation);
        this.this$0 = pageImageDao_Impl;
        this.$entry = historyEntry;
        this.$timeSpent = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        HistoryEntry historyEntry = this.$entry;
        int i = this.$timeSpent;
        return new PageImageDao_Impl$upsertForTimeSpent$2(this.this$0, historyEntry, i, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (Service.CC.upsertForTimeSpent$suspendImpl(this.this$0, this.$entry, this.$timeSpent, this) == coroutineSingletons) {
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
