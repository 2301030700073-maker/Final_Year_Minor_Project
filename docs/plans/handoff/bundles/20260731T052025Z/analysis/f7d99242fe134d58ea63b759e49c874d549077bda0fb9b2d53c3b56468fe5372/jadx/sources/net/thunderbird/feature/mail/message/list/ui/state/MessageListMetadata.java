package net.thunderbird.feature.mail.message.list.ui.state;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.collections.immutable.PersistentMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListMetadata {
    public final MessageItemUi activeMessage;
    public final ImmutableSet availablePrimarySortTypes;
    public final ImmutableSet availableSecondarySortTypes;
    public final MessageItemUi focusedMessage;
    public final Folder folder;
    public final MessageListFooter footer;
    public final PaginationUi paging;
    public final boolean showAccountIndicator;
    public final PersistentMap sortCriteriaPerAccount;
    public final PersistentMap swipeActions;

    public MessageListMetadata(Folder folder, PersistentMap persistentMap, PersistentMap persistentMap2, MessageItemUi messageItemUi, MessageItemUi messageItemUi2, ImmutableSet immutableSet, ImmutableSet immutableSet2, MessageListFooter messageListFooter, boolean z, PaginationUi paginationUi) {
        this.folder = folder;
        this.swipeActions = persistentMap;
        this.sortCriteriaPerAccount = persistentMap2;
        this.activeMessage = messageItemUi;
        this.focusedMessage = messageItemUi2;
        this.availablePrimarySortTypes = immutableSet;
        this.availableSecondarySortTypes = immutableSet2;
        this.footer = messageListFooter;
        this.showAccountIndicator = z;
        this.paging = paginationUi;
    }

    public static MessageListMetadata copy$default(MessageListMetadata messageListMetadata, Folder folder, PersistentMap persistentMap, PersistentMap persistentMap2, MessageItemUi messageItemUi, MessageItemUi messageItemUi2, MessageListFooter messageListFooter, boolean z, int i) {
        if ((i & 1) != 0) {
            folder = messageListMetadata.folder;
        }
        Folder folder2 = folder;
        if ((i & 2) != 0) {
            persistentMap = messageListMetadata.swipeActions;
        }
        PersistentMap persistentMap3 = persistentMap;
        PersistentMap persistentMap4 = (i & 4) != 0 ? messageListMetadata.sortCriteriaPerAccount : persistentMap2;
        messageListMetadata.getClass();
        MessageItemUi messageItemUi3 = (i & 16) != 0 ? messageListMetadata.activeMessage : messageItemUi;
        MessageItemUi messageItemUi4 = (i & 32) != 0 ? messageListMetadata.focusedMessage : messageItemUi2;
        ImmutableSet immutableSet = messageListMetadata.availablePrimarySortTypes;
        ImmutableSet immutableSet2 = messageListMetadata.availableSecondarySortTypes;
        MessageListFooter messageListFooter2 = (i & 256) != 0 ? messageListMetadata.footer : messageListFooter;
        boolean z2 = (i & 512) != 0 ? messageListMetadata.showAccountIndicator : z;
        PaginationUi paginationUi = messageListMetadata.paging;
        messageListMetadata.getClass();
        persistentMap3.getClass();
        persistentMap4.getClass();
        return new MessageListMetadata(folder2, persistentMap3, persistentMap4, messageItemUi3, messageItemUi4, immutableSet, immutableSet2, messageListFooter2, z2, paginationUi);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListMetadata)) {
            return false;
        }
        MessageListMetadata messageListMetadata = (MessageListMetadata) obj;
        return Intrinsics.areEqual(this.folder, messageListMetadata.folder) && this.swipeActions.equals(messageListMetadata.swipeActions) && this.sortCriteriaPerAccount.equals(messageListMetadata.sortCriteriaPerAccount) && Intrinsics.areEqual(this.activeMessage, messageListMetadata.activeMessage) && Intrinsics.areEqual(this.focusedMessage, messageListMetadata.focusedMessage) && this.availablePrimarySortTypes.equals(messageListMetadata.availablePrimarySortTypes) && this.availableSecondarySortTypes.equals(messageListMetadata.availableSecondarySortTypes) && this.footer.equals(messageListMetadata.footer) && this.showAccountIndicator == messageListMetadata.showAccountIndicator && this.paging.equals(messageListMetadata.paging);
    }

    public final int hashCode() {
        Folder folder = this.folder;
        int hashCode = (((this.sortCriteriaPerAccount.hashCode() + ((this.swipeActions.hashCode() + ((folder == null ? 0 : folder.hashCode()) * 31)) * 31)) * 31) + 1237) * 31;
        MessageItemUi messageItemUi = this.activeMessage;
        int hashCode2 = (hashCode + (messageItemUi == null ? 0 : messageItemUi.hashCode())) * 31;
        MessageItemUi messageItemUi2 = this.focusedMessage;
        return this.paging.hashCode() + ((((this.footer.hashCode() + ((this.availableSecondarySortTypes.hashCode() + ((this.availablePrimarySortTypes.hashCode() + ((hashCode2 + (messageItemUi2 != null ? messageItemUi2.hashCode() : 0)) * 31)) * 31)) * 31)) * 31) + (this.showAccountIndicator ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        return "MessageListMetadata(folder=" + this.folder + ", swipeActions=" + this.swipeActions + ", sortCriteriaPerAccount=" + this.sortCriteriaPerAccount + ", isActive=false, activeMessage=" + this.activeMessage + ", focusedMessage=" + this.focusedMessage + ", availablePrimarySortTypes=" + this.availablePrimarySortTypes + ", availableSecondarySortTypes=" + this.availableSecondarySortTypes + ", footer=" + this.footer + ", showAccountIndicator=" + this.showAccountIndicator + ", paging=" + this.paging + ")";
    }
}
