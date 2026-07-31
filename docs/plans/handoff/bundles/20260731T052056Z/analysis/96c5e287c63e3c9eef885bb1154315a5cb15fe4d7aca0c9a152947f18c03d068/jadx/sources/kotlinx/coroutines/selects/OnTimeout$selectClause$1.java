package kotlinx.coroutines.selects;

import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements Function3 {
    public static final OnTimeout$selectClause$1 INSTANCE = new OnTimeout$selectClause$1(3, OnTimeout.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        OnTimeout onTimeout = (OnTimeout) obj;
        SelectImplementation selectImplementation = (SelectImplementation) obj2;
        long j = onTimeout.timeMillis;
        Unit unit = Unit.INSTANCE;
        if (j <= 0) {
            selectImplementation.internalResult = unit;
            return unit;
        }
        Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda2 = new Processor$$ExternalSyntheticLambda2(17, selectImplementation, onTimeout);
        selectImplementation.getClass();
        CoroutineContext coroutineContext = selectImplementation.context;
        selectImplementation.disposableHandleOrSegment = AwaitKt.getDelay(coroutineContext).invokeOnTimeout(j, processor$$ExternalSyntheticLambda2, coroutineContext);
        return unit;
    }
}
