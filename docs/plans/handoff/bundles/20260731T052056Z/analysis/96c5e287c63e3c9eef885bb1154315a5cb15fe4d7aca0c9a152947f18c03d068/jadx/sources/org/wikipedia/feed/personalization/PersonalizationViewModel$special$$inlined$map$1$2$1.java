package org.wikipedia.feed.personalization;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.feed.HomeViewModel$special$$inlined$map$1$2;

/* loaded from: classes.dex */
public final class PersonalizationViewModel$special$$inlined$map$1$2$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ HomeViewModel$special$$inlined$map$1$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalizationViewModel$special$$inlined$map$1$2$1(HomeViewModel$special$$inlined$map$1$2 homeViewModel$special$$inlined$map$1$2, Continuation continuation) {
        super(continuation);
        this.this$0 = homeViewModel$special$$inlined$map$1$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
