package androidx.paging.compose;

import androidx.paging.ChannelFlowCollector;
import androidx.paging.PageFetcher$flow$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeViewModel$special$$inlined$map$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyPagingItemsKt$collectAsLazyPagingItems$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ LazyPagingItems $lazyPagingItems;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyPagingItemsKt$collectAsLazyPagingItems$1$1(LazyPagingItems lazyPagingItems, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$lazyPagingItems = lazyPagingItems;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new LazyPagingItemsKt$collectAsLazyPagingItems$1$1(this.$lazyPagingItems, continuation, 0);
            default:
                return new LazyPagingItemsKt$collectAsLazyPagingItems$1$1(this.$lazyPagingItems, continuation, 1);
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
        return ((LazyPagingItemsKt$collectAsLazyPagingItems$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        LazyPagingItems lazyPagingItems = this.$lazyPagingItems;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1 || i2 == 2) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object collectLatest = StateFlowKt.collectLatest(lazyPagingItems.flow, new PageFetcher$flow$1(13, lazyPagingItems, continuation), this);
                if (collectLatest != coroutineSingletons) {
                    collectLatest = unit;
                }
                return collectLatest == coroutineSingletons ? coroutineSingletons : unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1 || i3 == 2) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object collect = lazyPagingItems.pagingDataPresenter.loadStateFlow.$$delegate_0.collect(new HomeViewModel$special$$inlined$map$1$2(new ChannelFlowCollector(6, lazyPagingItems), 5), this);
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (collect != coroutineSingletons3) {
                    collect = unit;
                }
                if (collect != coroutineSingletons3) {
                    collect = unit;
                }
                return collect == coroutineSingletons2 ? coroutineSingletons2 : unit;
        }
    }
}
