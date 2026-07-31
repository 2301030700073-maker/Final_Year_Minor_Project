package org.wikipedia.readinglist.recommended;

import androidx.work.Operation$State;
import java.util.Comparator;
import org.wikipedia.dataclient.mwapi.MwQueryPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListHelper$getRecommendedPage$$inlined$sortedBy$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Operation$State.compareValues(Integer.valueOf(((MwQueryPage) obj).index), Integer.valueOf(((MwQueryPage) obj2).index));
    }
}
