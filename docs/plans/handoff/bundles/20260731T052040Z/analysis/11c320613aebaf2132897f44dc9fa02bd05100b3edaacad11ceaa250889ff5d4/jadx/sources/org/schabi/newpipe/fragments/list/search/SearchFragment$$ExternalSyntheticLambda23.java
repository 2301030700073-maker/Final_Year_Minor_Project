package org.schabi.newpipe.fragments.list.search;

import java.util.Collections;
import java.util.concurrent.Callable;
import org.schabi.newpipe.extractor.ListExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchFragment$$ExternalSyntheticLambda23 implements Callable {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.$r8$classId) {
            case 0:
                return Collections.EMPTY_LIST;
            default:
                return ListExtractor.InfoItemsPage.EMPTY;
        }
    }
}
