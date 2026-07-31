package org.wikipedia.suggestededits;

import androidx.work.Operation$State;
import java.util.Comparator;
import org.wikipedia.dataclient.mwapi.MwQueryResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$$inlined$sortedByDescending$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Operation$State.compareValues(((MwQueryResult.RecentChange) obj2).getParsedDateTime(), ((MwQueryResult.RecentChange) obj).getParsedDateTime());
    }
}
