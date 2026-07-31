package org.wikipedia.readinglist;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListFragmentViewModel$updateList$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Throwable $throwable;
    public int label;
    public final /* synthetic */ ReadingListFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReadingListFragmentViewModel$updateList$1$1(ReadingListFragmentViewModel readingListFragmentViewModel, Throwable th, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = readingListFragmentViewModel;
        this.$throwable = th;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Throwable th = this.$throwable;
        ReadingListFragmentViewModel readingListFragmentViewModel = this.this$0;
        switch (i) {
            case 0:
                return new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, continuation, 0);
            case 1:
                return new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, continuation, 1);
            case 2:
                return new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, continuation, 2);
            default:
                return new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, continuation, 3);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((ReadingListFragmentViewModel$updateList$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Throwable th = this.$throwable;
        ReadingListFragmentViewModel readingListFragmentViewModel = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SharedFlowImpl sharedFlowImpl = readingListFragmentViewModel._updateListFlow;
                Resource.Error error = new Resource.Error(th);
                this.label = 1;
                return sharedFlowImpl.emit(error, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SharedFlowImpl sharedFlowImpl2 = readingListFragmentViewModel._deleteSelectedPagesFlow;
                Resource.Error error2 = new Resource.Error(th);
                this.label = 1;
                return sharedFlowImpl2.emit(error2, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SharedFlowImpl sharedFlowImpl3 = readingListFragmentViewModel._saveReadingListFlow;
                Resource.Error error3 = new Resource.Error(th);
                this.label = 1;
                return sharedFlowImpl3.emit(error3, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            default:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SharedFlowImpl sharedFlowImpl4 = readingListFragmentViewModel._updateListByIdFlow;
                Resource.Error error4 = new Resource.Error(th);
                this.label = 1;
                return sharedFlowImpl4.emit(error4, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
        }
    }
}
