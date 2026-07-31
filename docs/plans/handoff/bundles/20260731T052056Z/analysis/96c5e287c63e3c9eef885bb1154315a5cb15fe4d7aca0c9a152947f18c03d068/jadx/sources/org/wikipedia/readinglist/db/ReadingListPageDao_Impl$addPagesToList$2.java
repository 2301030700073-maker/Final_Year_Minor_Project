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
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListPageDao_Impl$addPagesToList$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ ReadingList $list;
    public final /* synthetic */ List $pages;
    public final /* synthetic */ boolean $queueForSync;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ReadingListPageDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReadingListPageDao_Impl$addPagesToList$2(ReadingListPageDao_Impl readingListPageDao_Impl, ReadingList readingList, List list, boolean z, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = readingListPageDao_Impl;
        this.$list = readingList;
        this.$pages = list;
        this.$queueForSync = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                return new ReadingListPageDao_Impl$addPagesToList$2(this.this$0, this.$list, this.$pages, this.$queueForSync, continuation, 0).invokeSuspend(unit);
            default:
                return new ReadingListPageDao_Impl$addPagesToList$2(this.this$0, this.$list, this.$pages, this.$queueForSync, continuation, 1).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = this.$queueForSync;
        List list = this.$pages;
        ReadingList readingList = this.$list;
        ReadingListPageDao_Impl readingListPageDao_Impl = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return Service.CC.addPagesToList$suspendImpl(readingListPageDao_Impl, readingList, list, z, this) == coroutineSingletons ? coroutineSingletons : unit;
                }
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return Service.CC.markPagesForDeletion$suspendImpl(readingListPageDao_Impl, readingList, list, z, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
                }
                if (i3 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
