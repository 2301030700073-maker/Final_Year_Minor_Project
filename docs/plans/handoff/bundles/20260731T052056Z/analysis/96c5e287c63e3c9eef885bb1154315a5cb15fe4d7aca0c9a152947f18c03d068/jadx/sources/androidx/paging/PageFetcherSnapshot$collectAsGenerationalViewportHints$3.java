package androidx.paging;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcherSnapshot$collectAsGenerationalViewportHints$3 extends SuspendLambda implements Function3 {
    public final /* synthetic */ LoadType $loadType;
    public /* synthetic */ GenerationalViewportHint L$0;
    public /* synthetic */ GenerationalViewportHint L$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$collectAsGenerationalViewportHints$3(LoadType loadType, Continuation continuation) {
        super(3, continuation);
        this.$loadType = loadType;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        PageFetcherSnapshot$collectAsGenerationalViewportHints$3 pageFetcherSnapshot$collectAsGenerationalViewportHints$3 = new PageFetcherSnapshot$collectAsGenerationalViewportHints$3(this.$loadType, (Continuation) obj3);
        pageFetcherSnapshot$collectAsGenerationalViewportHints$3.L$0 = (GenerationalViewportHint) obj;
        pageFetcherSnapshot$collectAsGenerationalViewportHints$3.L$1 = (GenerationalViewportHint) obj2;
        return pageFetcherSnapshot$collectAsGenerationalViewportHints$3.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        GenerationalViewportHint generationalViewportHint = this.L$0;
        GenerationalViewportHint generationalViewportHint2 = this.L$1;
        generationalViewportHint2.getClass();
        generationalViewportHint.getClass();
        LoadType loadType = this.$loadType;
        loadType.getClass();
        int i = generationalViewportHint2.generationId;
        int i2 = generationalViewportHint.generationId;
        return i > i2 ? true : i < i2 ? false : FlowExtKt.shouldPrioritizeOver(generationalViewportHint2.hint, generationalViewportHint.hint, loadType) ? generationalViewportHint2 : generationalViewportHint;
    }
}
