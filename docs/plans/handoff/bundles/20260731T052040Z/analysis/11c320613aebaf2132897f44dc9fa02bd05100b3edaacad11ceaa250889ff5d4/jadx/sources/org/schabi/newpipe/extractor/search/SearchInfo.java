package org.schabi.newpipe.extractor.search;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.utils.JavaScript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SearchInfo extends ListInfo {
    private boolean isCorrectedSearch;
    private List<MetaInfo> metaInfo;
    private final String searchString;
    private String searchSuggestion;

    public SearchInfo(int i, SearchQueryHandler searchQueryHandler, String str) {
        super(i, searchQueryHandler, "Search");
        this.metaInfo = Collections.EMPTY_LIST;
        this.searchString = str;
    }

    public static SearchInfo getInfo(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        SearchExtractor searchExtractor = streamingService.getSearchExtractor(searchQueryHandler);
        searchExtractor.fetchPage();
        SearchInfo searchInfo = new SearchInfo(searchExtractor.service.serviceId, searchExtractor.getLinkHandler(), searchExtractor.getLinkHandler().getSearchString());
        try {
            searchInfo.setOriginalUrl(searchExtractor.linkHandler.getOriginalUrl());
        } catch (Exception e) {
            searchInfo.addError(e);
        }
        try {
            searchInfo.searchSuggestion = searchExtractor.getSearchSuggestion();
        } catch (Exception e2) {
            searchInfo.addError(e2);
        }
        try {
            searchInfo.isCorrectedSearch = searchExtractor.isCorrectedSearch();
        } catch (Exception e3) {
            searchInfo.addError(e3);
        }
        try {
            searchInfo.metaInfo = searchExtractor.getMetaInfo();
        } catch (Exception e4) {
            searchInfo.addError(e4);
        }
        ListExtractor.InfoItemsPage itemsPageOrLogError = JavaScript.getItemsPageOrLogError(searchInfo, searchExtractor);
        searchInfo.setRelatedItems(itemsPageOrLogError.itemsList);
        searchInfo.setNextPage(itemsPageOrLogError.nextPage);
        return searchInfo;
    }

    public final List getMetaInfo() {
        return this.metaInfo;
    }

    public final String getSearchSuggestion() {
        return this.searchSuggestion;
    }

    public final boolean isCorrectedSearch() {
        return this.isCorrectedSearch;
    }
}
