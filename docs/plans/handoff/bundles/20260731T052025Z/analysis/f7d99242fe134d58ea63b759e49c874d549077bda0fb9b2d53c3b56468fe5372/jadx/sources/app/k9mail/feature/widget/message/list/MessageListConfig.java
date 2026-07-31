package app.k9mail.feature.widget.message.list;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListConfig {
    public final LocalMessageSearch search;
    public final boolean showingThreadedList;

    public MessageListConfig(LocalMessageSearch localMessageSearch, boolean z) {
        localMessageSearch.getClass();
        this.search = localMessageSearch;
        this.showingThreadedList = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListConfig)) {
            return false;
        }
        MessageListConfig messageListConfig = (MessageListConfig) obj;
        return Intrinsics.areEqual(this.search, messageListConfig.search) && this.showingThreadedList == messageListConfig.showingThreadedList;
    }

    public final int hashCode() {
        return ((((SortType.SORT_DATE.hashCode() + (((this.search.hashCode() * 31) + (this.showingThreadedList ? 1231 : 1237)) * 31)) * 31) + 1237) * 31) + 1237;
    }

    public final String toString() {
        return "MessageListConfig(search=" + this.search + ", showingThreadedList=" + this.showingThreadedList + ", sortType=" + SortType.SORT_DATE + ", sortAscending=false, sortDateAscending=false)";
    }
}
