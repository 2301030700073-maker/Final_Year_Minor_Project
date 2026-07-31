package org.schabi.newpipe.extractor.linkhandler;

import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ListLinkHandler extends LinkHandler {
    protected final List<String> contentFilters;
    protected final String sortFilter;

    public ListLinkHandler(ListLinkHandler listLinkHandler) {
        this(listLinkHandler.originalUrl, listLinkHandler.url, listLinkHandler.id, listLinkHandler.contentFilters, listLinkHandler.sortFilter);
    }

    public final List getContentFilters() {
        return this.contentFilters;
    }

    public final String getSortFilter() {
        return this.sortFilter;
    }

    public ListLinkHandler(String str, String str2, String str3, List list, String str4) {
        super(str, str2, str3);
        this.contentFilters = DesugarCollections.unmodifiableList(list);
        this.sortFilter = str4;
    }

    public ListLinkHandler(LinkHandler linkHandler) {
        this(linkHandler.originalUrl, linkHandler.url, linkHandler.id, Collections.EMPTY_LIST, "");
    }
}
