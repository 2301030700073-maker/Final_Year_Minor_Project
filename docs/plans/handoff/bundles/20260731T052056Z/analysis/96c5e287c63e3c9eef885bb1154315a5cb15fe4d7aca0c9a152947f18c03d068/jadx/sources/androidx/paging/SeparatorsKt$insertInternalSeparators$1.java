package androidx.paging;

import java.util.ArrayList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SeparatorsKt$insertInternalSeparators$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public TransformablePage L$0;
    public Function3 L$1;
    public ArrayList L$2;
    public ArrayList L$3;
    public Object L$4;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowExtKt.insertInternalSeparators(null, null, this);
    }
}
