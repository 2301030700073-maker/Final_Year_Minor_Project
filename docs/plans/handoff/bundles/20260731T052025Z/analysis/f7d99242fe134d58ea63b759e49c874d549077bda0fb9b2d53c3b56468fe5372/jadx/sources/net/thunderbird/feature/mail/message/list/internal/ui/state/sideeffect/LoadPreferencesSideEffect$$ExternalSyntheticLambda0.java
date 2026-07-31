package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect;

import kotlin.jvm.functions.Function0;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LoadPreferencesSideEffect$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListState f$0;
    public final /* synthetic */ MessageListState f$1;

    public /* synthetic */ LoadPreferencesSideEffect$$ExternalSyntheticLambda0(MessageListState messageListState, MessageListState messageListState2, int i) {
        this.$r8$classId = i;
        this.f$0 = messageListState;
        this.f$1 = messageListState2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        MessageListState messageListState = this.f$1;
        MessageListState messageListState2 = this.f$0;
        switch (i) {
            case 0:
                return "LoadPreferencesSideEffect.handle() called with: oldState = " + messageListState2 + ", newState = " + messageListState;
            case 1:
                return "ChangeSortCriteriaSideEffect.handle() called with: oldState = " + messageListState2 + ", newState = " + messageListState;
            case 2:
                return "LoadFolderInformationSideEffect.handle() called with: oldState = " + messageListState2 + ", newState = " + messageListState;
            case 3:
                return "LoadSortCriteriaStateSideEffectHandler.handle() called with: oldState = " + messageListState2 + ", newState = " + messageListState;
            default:
                return "LoadSwipeActionsSideEffectHandler.handle() called with: oldState = " + messageListState2 + ", newState = " + messageListState;
        }
    }
}
