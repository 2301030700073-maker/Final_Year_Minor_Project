package net.thunderbird.feature.mail.message.list.ui.state;

import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemUi {
    public final Account account;
    public final boolean active;
    public final boolean answered;
    public final boolean encrypted;
    public final String excerpt;
    public final String formattedReceivedAt;
    public final boolean forwarded;
    public final boolean hasAttachments;
    public final String id;
    public final String messageReference;
    public final boolean selected;
    public final ComposedAddressUi senders;
    public final boolean starred;
    public final State state;
    public final String subject;
    public final int threadCount;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State Read;
        public static final State Unread;

        /* JADX INFO: Fake field, exist only in values array */
        State EF0;

        static {
            State state = new State("New", 0);
            State state2 = new State("Read", 1);
            Read = state2;
            State state3 = new State("Unread", 2);
            Unread = state3;
            $VALUES = new State[]{state, state2, state3};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public MessageItemUi(State state, String str, String str2, Account account, ComposedAddressUi composedAddressUi, String str3, String str4, String str5, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i, boolean z7) {
        str.getClass();
        this.state = state;
        this.id = str;
        this.messageReference = str2;
        this.account = account;
        this.senders = composedAddressUi;
        this.subject = str3;
        this.excerpt = str4;
        this.formattedReceivedAt = str5;
        this.hasAttachments = z;
        this.starred = z2;
        this.encrypted = z3;
        this.answered = z4;
        this.forwarded = z5;
        this.selected = z6;
        this.threadCount = i;
        this.active = z7;
    }

    public static MessageItemUi copy$default(MessageItemUi messageItemUi, State state, ComposedAddressUi composedAddressUi, boolean z, boolean z2, int i) {
        State state2 = (i & 1) != 0 ? messageItemUi.state : state;
        String str = messageItemUi.id;
        String str2 = messageItemUi.messageReference;
        Account account = messageItemUi.account;
        ComposedAddressUi composedAddressUi2 = (i & 16) != 0 ? messageItemUi.senders : composedAddressUi;
        String str3 = messageItemUi.subject;
        String str4 = messageItemUi.excerpt;
        String str5 = messageItemUi.formattedReceivedAt;
        boolean z3 = messageItemUi.hasAttachments;
        boolean z4 = messageItemUi.starred;
        boolean z5 = messageItemUi.encrypted;
        boolean z6 = messageItemUi.answered;
        boolean z7 = messageItemUi.forwarded;
        boolean z8 = (i & 8192) != 0 ? messageItemUi.selected : z;
        int i2 = messageItemUi.threadCount;
        boolean z9 = (i & 32768) != 0 ? messageItemUi.active : z2;
        messageItemUi.getClass();
        str.getClass();
        return new MessageItemUi(state2, str, str2, account, composedAddressUi2, str3, str4, str5, z3, z4, z5, z6, z7, z8, i2, z9);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageItemUi)) {
            return false;
        }
        MessageItemUi messageItemUi = (MessageItemUi) obj;
        return this.state == messageItemUi.state && Intrinsics.areEqual(this.id, messageItemUi.id) && this.messageReference.equals(messageItemUi.messageReference) && this.account.equals(messageItemUi.account) && this.senders.equals(messageItemUi.senders) && this.subject.equals(messageItemUi.subject) && this.excerpt.equals(messageItemUi.excerpt) && this.formattedReceivedAt.equals(messageItemUi.formattedReceivedAt) && this.hasAttachments == messageItemUi.hasAttachments && this.starred == messageItemUi.starred && this.encrypted == messageItemUi.encrypted && this.answered == messageItemUi.answered && this.forwarded == messageItemUi.forwarded && this.selected == messageItemUi.selected && this.threadCount == messageItemUi.threadCount && this.active == messageItemUi.active;
    }

    public final int hashCode() {
        return ((((((((((((((Modifier.CC.m(Modifier.CC.m(Modifier.CC.m((this.senders.hashCode() + ((this.account.hashCode() + Modifier.CC.m(Modifier.CC.m(this.state.hashCode() * 31, this.id, 31), this.messageReference, 31)) * 31)) * 31, this.subject, 31), this.excerpt, 31), this.formattedReceivedAt, 31) + (this.hasAttachments ? 1231 : 1237)) * 31) + (this.starred ? 1231 : 1237)) * 31) + (this.encrypted ? 1231 : 1237)) * 31) + (this.answered ? 1231 : 1237)) * 31) + (this.forwarded ? 1231 : 1237)) * 31) + (this.selected ? 1231 : 1237)) * 31) + this.threadCount) * 31) + (this.active ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MessageItemUi(state=");
        sb.append(this.state);
        sb.append(", id=");
        sb.append(this.id);
        sb.append(", messageReference=");
        sb.append(this.messageReference);
        sb.append(", account=");
        sb.append(this.account);
        sb.append(", senders=");
        sb.append(this.senders);
        sb.append(", subject=");
        sb.append(this.subject);
        sb.append(", excerpt=");
        Modifier.CC.m(sb, this.excerpt, ", formattedReceivedAt=", this.formattedReceivedAt, ", hasAttachments=");
        ViewSizeResolver.CC.m(sb, this.hasAttachments, ", starred=", this.starred, ", encrypted=");
        ViewSizeResolver.CC.m(sb, this.encrypted, ", answered=", this.answered, ", forwarded=");
        ViewSizeResolver.CC.m(sb, this.forwarded, ", selected=", this.selected, ", threadCount=");
        sb.append(this.threadCount);
        sb.append(", active=");
        sb.append(this.active);
        sb.append(")");
        return sb.toString();
    }
}
