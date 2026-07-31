package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import java.util.Collections;
import java.util.List;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.search.SearchExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampSearchExtractor extends SearchExtractor {
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return getPage(new Page(this.linkHandler.getUrl()));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getMetaInfo() {
        return Collections.EMPTY_LIST;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ad, code lost:
    
        if (r8.equals("ARTIST") == false) goto L9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage getPage(org.schabi.newpipe.extractor.Page r12) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampSearchExtractor.getPage(org.schabi.newpipe.extractor.Page):org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage");
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final String getSearchSuggestion() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final boolean isCorrectedSearch() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
    }
}
