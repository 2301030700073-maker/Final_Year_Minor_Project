package org.schabi.newpipe.extractor.comments;

import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.JavaScript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CommentsInfo extends ListInfo {
    private int commentsCount;
    private boolean commentsDisabled;

    public static CommentsInfo getInfo(StreamingService streamingService, String str) {
        ListLinkHandlerFactory commentsLHFactory = streamingService.getCommentsLHFactory();
        SearchExtractor commentsExtractor = commentsLHFactory == null ? null : streamingService.getCommentsExtractor(commentsLHFactory.fromUrl(str));
        if (commentsExtractor == null) {
            return null;
        }
        commentsExtractor.fetchPage();
        CommentsInfo commentsInfo = new CommentsInfo(commentsExtractor.service.serviceId, (ListLinkHandler) commentsExtractor.linkHandler, "Comments");
        commentsInfo.commentsDisabled = false;
        ListExtractor.InfoItemsPage itemsPageOrLogError = JavaScript.getItemsPageOrLogError(commentsInfo, commentsExtractor);
        commentsInfo.commentsDisabled = commentsExtractor.isCommentsDisabled();
        commentsInfo.setRelatedItems(itemsPageOrLogError.itemsList);
        try {
            commentsInfo.commentsCount = commentsExtractor.getCommentsCount();
        } catch (Exception e) {
            commentsInfo.addError(e);
        }
        commentsInfo.setNextPage(itemsPageOrLogError.nextPage);
        return commentsInfo;
    }

    public final boolean isCommentsDisabled() {
        return this.commentsDisabled;
    }
}
