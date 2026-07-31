package org.schabi.newpipe.extractor.linkhandler;

import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SearchQueryHandlerFactory extends ListLinkHandlerFactory {
    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final SearchQueryHandler fromQuery(String str, String str2, List list) {
        ListLinkHandler fromQuery = super.fromQuery(str, str2, list);
        return new SearchQueryHandler(fromQuery.originalUrl, fromQuery.url, fromQuery.id, fromQuery.contentFilters, fromQuery.sortFilter);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        return "";
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        return false;
    }
}
