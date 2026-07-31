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
public final class ReadingListPageDao_Impl$markPagesForOffline$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ boolean $forcedSave;
    public final /* synthetic */ boolean $offline;
    public final /* synthetic */ List $pages;
    public int label;
    public final /* synthetic */ ReadingListPageDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListPageDao_Impl$markPagesForOffline$2(ReadingListPageDao_Impl readingListPageDao_Impl, List list, boolean z, boolean z2, Continuation continuation) {
        super(1, continuation);
        this.this$0 = readingListPageDao_Impl;
        this.$pages = list;
        this.$offline = z;
        this.$forcedSave = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z = this.$offline;
        boolean z2 = this.$forcedSave;
        return new ReadingListPageDao_Impl$markPagesForOffline$2(this.this$0, this.$pages, z, z2, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (Service.CC.markPagesForOffline$suspendImpl(this.this$0, this.$pages, this.$offline, this.$forcedSave, this) == coroutineSingletons) {
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
