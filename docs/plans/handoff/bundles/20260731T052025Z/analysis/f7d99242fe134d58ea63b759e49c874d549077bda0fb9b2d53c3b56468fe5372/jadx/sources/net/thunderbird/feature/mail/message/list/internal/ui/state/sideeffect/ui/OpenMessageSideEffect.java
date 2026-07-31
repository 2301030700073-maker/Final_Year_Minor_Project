package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.ui;

import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SetMessageActive;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OpenMessageSideEffect extends MessageListStateSideEffectHandler {
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory implements MessageListStateSideEffectHandlerFactory {
        public final /* synthetic */ int $r8$classId;
        public final Logger logger;

        public /* synthetic */ Factory(Logger logger, int i) {
            this.$r8$classId = i;
            this.logger = logger;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory
        public final MessageListStateSideEffectHandler create(CloseableCoroutineScope closeableCoroutineScope, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$12) {
            int i = this.$r8$classId;
            Logger logger = this.logger;
            switch (i) {
                case 0:
                    return new OpenMessageSideEffect(logger, composableLambdaImpl$invoke$1, composableLambdaImpl$invoke$12, 0);
                case 1:
                    return new OpenMessageSideEffect(logger, composableLambdaImpl$invoke$1, 1);
                case 2:
                    return new OpenMessageSideEffect(logger, composableLambdaImpl$invoke$1, composableLambdaImpl$invoke$12, 2);
                default:
                    return new OpenMessageSideEffect(logger, composableLambdaImpl$invoke$1, 3);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OpenMessageSideEffect(Logger logger, Function2 function2, int i) {
        super(logger, function2);
        this.$r8$classId = i;
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final boolean accept(Object obj, Object obj2, Object obj3) {
        switch (this.$r8$classId) {
            case 0:
                MessageListEvent messageListEvent = (MessageListEvent) obj;
                MessageListState messageListState = (MessageListState) obj2;
                MessageListState messageListState2 = (MessageListState) obj3;
                messageListEvent.getClass();
                messageListState.getClass();
                messageListState2.getClass();
                if ((messageListEvent instanceof MessageItemEvent$OnMessageClick) && (messageListState instanceof MessageListState.LoadedMessages) && (messageListState2 instanceof MessageListState.LoadedMessages)) {
                    break;
                }
                break;
            case 1:
                MessageListState messageListState3 = (MessageListState) obj2;
                MessageListState messageListState4 = (MessageListState) obj3;
                ((MessageListEvent) obj).getClass();
                messageListState3.getClass();
                messageListState4.getClass();
                if (!messageListState3.equals(messageListState4) && (messageListState4 instanceof MessageListState.WarmingUp) && ((MessageListState.WarmingUp) messageListState4).isReady()) {
                    break;
                }
                break;
            case 2:
                MessageListEvent messageListEvent2 = (MessageListEvent) obj;
                MessageListState messageListState5 = (MessageListState) obj3;
                messageListEvent2.getClass();
                ((MessageListState) obj2).getClass();
                messageListState5.getClass();
                if ((messageListEvent2 instanceof MessageItemEvent$SetMessageActive) && (messageListState5 instanceof MessageListState.LoadedMessages)) {
                    break;
                }
                break;
            default:
                MessageListEvent messageListEvent3 = (MessageListEvent) obj;
                MessageListState messageListState6 = (MessageListState) obj2;
                MessageListState messageListState7 = (MessageListState) obj3;
                messageListEvent3.getClass();
                messageListState6.getClass();
                messageListState7.getClass();
                if ((messageListEvent3 instanceof MessageItemEvent$OnMessageClick) && (messageListState6 instanceof MessageListState.SelectingMessages) && (messageListState7 instanceof MessageListState.SelectingMessages)) {
                    break;
                }
                break;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object consume(net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent r10, net.thunderbird.feature.mail.message.list.ui.state.MessageListState r11, net.thunderbird.feature.mail.message.list.ui.state.MessageListState r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.ui.OpenMessageSideEffect.consume(net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent, net.thunderbird.feature.mail.message.list.ui.state.MessageListState, net.thunderbird.feature.mail.message.list.ui.state.MessageListState, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OpenMessageSideEffect(Logger logger, Function2 function2, Function2 function22, int i) {
        super(logger, function2, function22);
        this.$r8$classId = i;
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final /* bridge */ /* synthetic */ Object consume(Object obj, Object obj2, Object obj3, MutatorMutex$mutate$2 mutatorMutex$mutate$2) {
        switch (this.$r8$classId) {
        }
        return consume((MessageListEvent) obj, (MessageListState) obj2, (MessageListState) obj3, (Continuation) mutatorMutex$mutate$2);
    }
}
