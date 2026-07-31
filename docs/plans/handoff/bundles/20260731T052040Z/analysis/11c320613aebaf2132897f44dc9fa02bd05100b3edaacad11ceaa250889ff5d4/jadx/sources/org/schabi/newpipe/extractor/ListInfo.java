package org.schabi.newpipe.extractor;

import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListInfo extends Info {
    private final List<String> contentFilters;
    private Page nextPage;
    private List<InfoItem> relatedItems;
    private final String sortFilter;

    public ListInfo(int i, ListLinkHandler listLinkHandler, String str) {
        super(i, listLinkHandler.getId(), listLinkHandler.getUrl(), listLinkHandler.getOriginalUrl(), str);
        this.nextPage = null;
        this.contentFilters = listLinkHandler.getContentFilters();
        this.sortFilter = listLinkHandler.getSortFilter();
    }

    public final Page getNextPage() {
        return this.nextPage;
    }

    public final List getRelatedItems() {
        return this.relatedItems;
    }

    public final boolean hasNextPage() {
        return Page.isValid(this.nextPage);
    }

    public final void setNextPage(Page page) {
        this.nextPage = page;
    }

    public final void setRelatedItems(List list) {
        this.relatedItems = list;
    }

    public ListInfo(int i, String str, String str2, String str3, String str4) {
        super(i, str, str2, str3, str4);
        this.nextPage = null;
        this.contentFilters = null;
        this.sortFilter = null;
    }
}
