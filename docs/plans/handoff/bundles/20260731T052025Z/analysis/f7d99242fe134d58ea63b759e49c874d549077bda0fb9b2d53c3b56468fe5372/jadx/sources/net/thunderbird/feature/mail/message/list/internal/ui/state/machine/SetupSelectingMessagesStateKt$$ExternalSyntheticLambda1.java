package net.thunderbird.feature.mail.message.list.internal.ui.state.machine;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.InvalidationTracker$implementation$1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InvalidationTracker$implementation$1 f$0;
    public final /* synthetic */ InvalidationTracker$implementation$1 f$1;

    public /* synthetic */ SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, InvalidationTracker$implementation$1 invalidationTracker$implementation$12, int i) {
        this.$r8$classId = i;
        this.f$0 = invalidationTracker$implementation$1;
        this.f$1 = invalidationTracker$implementation$12;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = this.f$1;
        InvalidationTracker$implementation$1 invalidationTracker$implementation$12 = this.f$0;
        MessageListState.SelectingMessages selectingMessages = (MessageListState.SelectingMessages) obj;
        switch (i) {
            case 0:
                MessageItemEvent$ToggleSelectMessages messageItemEvent$ToggleSelectMessages = (MessageItemEvent$ToggleSelectMessages) obj2;
                selectingMessages.getClass();
                messageItemEvent$ToggleSelectMessages.getClass();
                return NodeUtils.toggleSelectMessages(selectingMessages, messageItemEvent$ToggleSelectMessages.messages, invalidationTracker$implementation$12, invalidationTracker$implementation$1);
            default:
                MessageItemEvent$OnMessageClick messageItemEvent$OnMessageClick = (MessageItemEvent$OnMessageClick) obj2;
                selectingMessages.getClass();
                messageItemEvent$OnMessageClick.getClass();
                return NodeUtils.toggleSelectMessages(selectingMessages, IntOffsetKt.listOf(messageItemEvent$OnMessageClick.message), invalidationTracker$implementation$12, invalidationTracker$implementation$1);
        }
    }
}
