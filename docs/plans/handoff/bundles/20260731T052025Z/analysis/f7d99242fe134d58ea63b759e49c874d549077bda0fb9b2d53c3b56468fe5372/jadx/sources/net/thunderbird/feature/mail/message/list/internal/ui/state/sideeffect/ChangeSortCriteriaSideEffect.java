package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect;

import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import java.util.Set;
import kotlin.coroutines.Continuation;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetSortCriteriaPerAccount;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeSortCriteriaSideEffect extends MessageListStateSideEffectHandler {
    public final /* synthetic */ int $r8$classId = 0;
    public final Logger logger;
    public final Object updateSortCriteria;

    public ChangeSortCriteriaSideEffect(ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Logger logger, LegacyUpdateSortCriteria legacyUpdateSortCriteria) {
        super(logger, composableLambdaImpl$invoke$1);
        this.logger = logger;
        this.updateSortCriteria = legacyUpdateSortCriteria;
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
                return (messageListEvent instanceof MessageListEvent.ChangeSortCriteria) && !messageListState.equals(messageListState2);
            default:
                MessageListEvent messageListEvent2 = (MessageListEvent) obj;
                messageListEvent2.getClass();
                ((MessageListState) obj2).getClass();
                ((MessageListState) obj3).getClass();
                return messageListEvent2.equals(MessageListEvent.LoadConfigurations.INSTANCE);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
    
        if (r15 == r3) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object consume(net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent r12, net.thunderbird.feature.mail.message.list.ui.state.MessageListState r13, net.thunderbird.feature.mail.message.list.ui.state.MessageListState r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.ChangeSortCriteriaSideEffect.consume(net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent, net.thunderbird.feature.mail.message.list.ui.state.MessageListState, net.thunderbird.feature.mail.message.list.ui.state.MessageListState, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public ChangeSortCriteriaSideEffect(Set set, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Logger logger, GetSortCriteriaPerAccount getSortCriteriaPerAccount) {
        super(logger, composableLambdaImpl$invoke$1);
        this.logger = logger;
        this.updateSortCriteria = getSortCriteriaPerAccount;
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final /* bridge */ /* synthetic */ Object consume(Object obj, Object obj2, Object obj3, MutatorMutex$mutate$2 mutatorMutex$mutate$2) {
        switch (this.$r8$classId) {
        }
        return consume((MessageListEvent) obj, (MessageListState) obj2, (MessageListState) obj3, (Continuation) mutatorMutex$mutate$2);
    }
}
