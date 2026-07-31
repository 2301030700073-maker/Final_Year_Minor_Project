package net.thunderbird.feature.mail.message.list.internal.ui.component.template;

import androidx.compose.ui.focus.CancelIndicatingFocusBoundaryScope;
import androidx.compose.ui.focus.FocusProperties;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusEnter;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListKt$MessageList$1$1$2$1$2$1 implements Function1 {
    public final /* synthetic */ Function1 $dispatchEvent;
    public final /* synthetic */ MessageItemUi $message;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MessageListKt$MessageList$1$1$2$1$2$1(Function1 function1, MessageItemUi messageItemUi, int i) {
        this.$r8$classId = i;
        this.$dispatchEvent = function1;
        this.$message = messageItemUi;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final MessageItemUi messageItemUi = this.$message;
        Function1 function1 = this.$dispatchEvent;
        switch (i) {
            case 0:
                FocusProperties focusProperties = (FocusProperties) obj;
                focusProperties.getClass();
                focusProperties.setOnEnter(new MessageListKt$MessageList$1$1$2$1$2$1(function1, messageItemUi, 1));
                focusProperties.setOnExit(new MessageListKt$MessageList$1$1$2$1$2$1(function1, messageItemUi, 2));
                break;
            case 1:
                ((CancelIndicatingFocusBoundaryScope) obj).getClass();
                function1.invoke(new MessageItemEvent$OnFocusEnter(messageItemUi));
                break;
            default:
                ((CancelIndicatingFocusBoundaryScope) obj).getClass();
                function1.invoke(new MessageListEvent(messageItemUi) { // from class: net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusExit
                    public final MessageItemUi message;

                    {
                        this.message = messageItemUi;
                    }

                    public final boolean equals(Object obj2) {
                        if (this == obj2) {
                            return true;
                        }
                        return (obj2 instanceof MessageItemEvent$OnFocusExit) && this.message.equals(((MessageItemEvent$OnFocusExit) obj2).message);
                    }

                    public final int hashCode() {
                        return this.message.hashCode();
                    }

                    public final String toString() {
                        return "OnFocusExit(message=" + this.message + ")";
                    }
                });
                break;
        }
        return unit;
    }
}
