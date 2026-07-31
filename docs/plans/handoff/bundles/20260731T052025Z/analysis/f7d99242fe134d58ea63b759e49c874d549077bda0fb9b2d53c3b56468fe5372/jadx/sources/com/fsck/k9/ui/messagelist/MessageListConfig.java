package com.fsck.k9.ui.messagelist;

import app.k9mail.legacy.message.controller.MessageReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListConfig {
    public final MessageReference activeMessage;
    public final LocalMessageSearch search;
    public final boolean showingThreadedList;
    public final boolean sortAscending;
    public final boolean sortDateAscending;
    public final Map sortOverrides;
    public final SortType sortType;

    public MessageListConfig(LocalMessageSearch localMessageSearch, boolean z, SortType sortType, boolean z2, boolean z3, MessageReference messageReference, Map map) {
        sortType.getClass();
        this.search = localMessageSearch;
        this.showingThreadedList = z;
        this.sortType = sortType;
        this.sortAscending = z2;
        this.sortDateAscending = z3;
        this.activeMessage = messageReference;
        this.sortOverrides = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageListConfig) {
            MessageListConfig messageListConfig = (MessageListConfig) obj;
            if (this.search == messageListConfig.search && this.showingThreadedList == messageListConfig.showingThreadedList && this.sortType == messageListConfig.sortType && this.sortAscending == messageListConfig.sortAscending && this.sortDateAscending == messageListConfig.sortDateAscending && Intrinsics.areEqual(this.activeMessage, messageListConfig.activeMessage) && this.sortOverrides.equals(messageListConfig.sortOverrides)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((this.sortType.hashCode() + (((this.search.hashCode() * 31) + (this.showingThreadedList ? 1231 : 1237)) * 31)) * 31) + (this.sortAscending ? 1231 : 1237)) * 31) + (this.sortDateAscending ? 1231 : 1237)) * 31;
        MessageReference messageReference = this.activeMessage;
        return this.sortOverrides.hashCode() + ((hashCode + (messageReference == null ? 0 : messageReference.hashCode())) * 31);
    }

    public final String toString() {
        return "MessageListConfig(search=" + this.search + ", showingThreadedList=" + this.showingThreadedList + ", sortType=" + this.sortType + ", sortAscending=" + this.sortAscending + ", sortDateAscending=" + this.sortDateAscending + ", activeMessage=" + this.activeMessage + ", sortOverrides=" + this.sortOverrides + ")";
    }
}
