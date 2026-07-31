package org.wikipedia.feed.random;

import androidx.work.Operation$State;
import java.util.Comparator;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RandomClient$getRandomPages$$inlined$sortedBy$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        String str;
        String str2;
        PageTitle pageTitle = (PageTitle) obj;
        boolean z = true;
        Boolean valueOf = Boolean.valueOf(pageTitle.thumbUrl == null || (str2 = pageTitle.extract) == null || str2.length() == 0);
        PageTitle pageTitle2 = (PageTitle) obj2;
        if (pageTitle2.thumbUrl != null && (str = pageTitle2.extract) != null && str.length() != 0) {
            z = false;
        }
        return Operation$State.compareValues(valueOf, Boolean.valueOf(z));
    }
}
