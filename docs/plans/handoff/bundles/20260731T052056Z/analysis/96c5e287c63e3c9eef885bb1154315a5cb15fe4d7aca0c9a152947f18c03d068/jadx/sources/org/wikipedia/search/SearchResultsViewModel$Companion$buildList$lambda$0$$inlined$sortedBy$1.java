package org.wikipedia.search;

import androidx.work.Operation$State;
import java.util.Comparator;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1 implements Comparator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                return Operation$State.compareValues(Integer.valueOf(((MwQueryPage) obj).index), Integer.valueOf(((MwQueryPage) obj2).index));
            case 1:
                return Operation$State.compareValues(Long.valueOf(((MwQueryResult.RecentChange) obj).curRev), Long.valueOf(((MwQueryResult.RecentChange) obj2).curRev));
            default:
                return Operation$State.compareValues(((MwQueryResult.WatchlistItem) obj2).getDate(), ((MwQueryResult.WatchlistItem) obj).getDate());
        }
    }
}
