package com.fsck.k9.ui.messagelist;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListContract$ViewModel $this_observeWithoutEffect;

    public /* synthetic */ MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1(MessageListContract$ViewModel messageListContract$ViewModel, int i) {
        this.$r8$classId = i;
        this.$this_observeWithoutEffect = messageListContract$ViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MessageListContract$ViewModel messageListContract$ViewModel = this.$this_observeWithoutEffect;
        switch (i) {
            case 0:
                messageListContract$ViewModel.event(obj);
                break;
            default:
                messageListContract$ViewModel.event(obj);
                break;
        }
        return unit;
    }
}
