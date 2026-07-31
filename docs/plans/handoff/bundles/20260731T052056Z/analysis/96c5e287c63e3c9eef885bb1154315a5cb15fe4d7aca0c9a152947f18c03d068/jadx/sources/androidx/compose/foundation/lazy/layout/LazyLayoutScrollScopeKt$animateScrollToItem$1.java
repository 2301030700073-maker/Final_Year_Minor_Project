package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutScrollScopeKt$animateScrollToItem$1 extends ContinuationImpl {
    public float F$0;
    public float F$1;
    public float F$2;
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public PagerScrollScopeKt$LazyLayoutScrollScope$1 L$0;
    public Ref$BooleanRef L$1;
    public Ref$ObjectRef L$2;
    public Ref$IntRef L$3;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return LazyLayoutKt.animateScrollToItem(null, 0, 0, 0, null, this);
    }
}
