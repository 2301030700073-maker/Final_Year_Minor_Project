package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.ui;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OpenMessageSideEffect$consume$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ OpenMessageSideEffect this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenMessageSideEffect$consume$1(OpenMessageSideEffect openMessageSideEffect, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = openMessageSideEffect;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.consume((MessageListEvent) null, (MessageListState) null, (MessageListState) null, this);
    }
}
