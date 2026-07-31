package org.schabi.newpipe.extractor.feed;

import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeFeedExtractor;
import org.schabi.newpipe.extractor.utils.JavaScript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedInfo extends ListInfo {
    public static FeedInfo getInfo(YoutubeFeedExtractor youtubeFeedExtractor) {
        youtubeFeedExtractor.fetchPage();
        FeedInfo feedInfo = new FeedInfo(youtubeFeedExtractor.service.serviceId, youtubeFeedExtractor.getId(), youtubeFeedExtractor.getUrl(), youtubeFeedExtractor.linkHandler.getOriginalUrl(), youtubeFeedExtractor.getName());
        ListExtractor.InfoItemsPage itemsPageOrLogError = JavaScript.getItemsPageOrLogError(feedInfo, youtubeFeedExtractor);
        feedInfo.setRelatedItems(itemsPageOrLogError.itemsList);
        feedInfo.setNextPage(itemsPageOrLogError.nextPage);
        return feedInfo;
    }
}
