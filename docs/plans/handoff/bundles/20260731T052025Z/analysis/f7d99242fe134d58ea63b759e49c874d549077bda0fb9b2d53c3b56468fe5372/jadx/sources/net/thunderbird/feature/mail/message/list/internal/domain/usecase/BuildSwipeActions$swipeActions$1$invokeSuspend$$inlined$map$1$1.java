package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* loaded from: classes.dex */
public final class BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ FlowUtil$createFlow$$inlined$map$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1(FlowUtil$createFlow$$inlined$map$1 flowUtil$createFlow$$inlined$map$1, Continuation continuation) {
        super(continuation);
        this.this$0 = flowUtil$createFlow$$inlined$map$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
