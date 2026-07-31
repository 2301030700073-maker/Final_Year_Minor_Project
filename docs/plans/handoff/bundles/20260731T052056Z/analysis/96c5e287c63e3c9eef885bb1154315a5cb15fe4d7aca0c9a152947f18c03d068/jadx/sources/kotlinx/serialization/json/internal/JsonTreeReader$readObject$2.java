package kotlinx.serialization.json.internal;

import java.util.LinkedHashMap;
import kotlin.DeepRecursiveScopeImpl;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonTreeReader$readObject$2 extends ContinuationImpl {
    public int I$0;
    public DeepRecursiveScopeImpl L$0;
    public PriorityQueue L$1;
    public LinkedHashMap L$2;
    public String L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ PriorityQueue this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readObject$2(PriorityQueue priorityQueue, BaseContinuationImpl baseContinuationImpl) {
        super(baseContinuationImpl);
        this.this$0 = priorityQueue;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.readObject(null, this);
    }
}
