package com.fsck.k9.ui.messagelist;

import com.fsck.k9.ui.messagelist.MessageListViewItem;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListAdapter$calculateSelectionCount$$inlined$filterIsInstance$1 implements Function1 {
    public static final MessageListAdapter$calculateSelectionCount$$inlined$filterIsInstance$1 INSTANCE = new MessageListAdapter$calculateSelectionCount$$inlined$filterIsInstance$1();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(obj instanceof MessageListViewItem.Message);
    }
}
