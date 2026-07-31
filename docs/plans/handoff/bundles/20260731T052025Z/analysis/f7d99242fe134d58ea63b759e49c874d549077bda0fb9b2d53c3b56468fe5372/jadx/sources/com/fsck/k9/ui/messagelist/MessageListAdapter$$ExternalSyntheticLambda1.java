package com.fsck.k9.ui.messagelist;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListAdapter$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListAdapter f$0;

    public /* synthetic */ MessageListAdapter$$ExternalSyntheticLambda1(MessageListAdapter messageListAdapter, int i) {
        this.$r8$classId = i;
        this.f$0 = messageListAdapter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MessageListAdapter messageListAdapter = this.f$0;
        switch (i) {
            case 0:
                MessageListItem messageListItem = (MessageListItem) obj;
                messageListItem.getClass();
                return Boolean.valueOf(messageListAdapter.selected.contains(Long.valueOf(messageListItem.uniqueId)));
            case 1:
                Long l = (Long) obj;
                l.getClass();
                return (MessageListItem) messageListAdapter.messagesMap.get(l);
            case 2:
                MessageListItem messageListItem2 = (MessageListItem) obj;
                messageListItem2.getClass();
                return messageListAdapter.getPosition(messageListItem2);
            case 3:
                MessageListItem messageListItem3 = (MessageListItem) obj;
                messageListItem3.getClass();
                messageListAdapter.listItemListener.onMessageClicked(messageListItem3);
                return unit;
            case 4:
                MessageListItem messageListItem4 = (MessageListItem) obj;
                messageListItem4.getClass();
                LegacyMessageListFragment legacyMessageListFragment = messageListAdapter.listItemListener;
                legacyMessageListFragment.getClass();
                legacyMessageListFragment.toggleMessageSelect(messageListItem4);
                return unit;
            case 5:
                MessageListItem messageListItem5 = (MessageListItem) obj;
                messageListItem5.getClass();
                messageListAdapter.listItemListener.onToggleMessageFlag(messageListItem5);
                return unit;
            case 6:
                MessageListItem messageListItem6 = (MessageListItem) obj;
                messageListItem6.getClass();
                LegacyMessageListFragment legacyMessageListFragment2 = messageListAdapter.listItemListener;
                legacyMessageListFragment2.getClass();
                legacyMessageListFragment2.toggleMessageSelect(messageListItem6);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Long l2 = (Long) obj;
                l2.getClass();
                return (MessageListItem) messageListAdapter.messagesMap.get(l2);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MessageListItem messageListItem7 = (MessageListItem) obj;
                messageListItem7.getClass();
                return messageListAdapter.getPosition(messageListItem7);
            default:
                ((Long) obj).getClass();
                return Boolean.valueOf(!messageListAdapter.selected.contains(r3));
        }
    }
}
