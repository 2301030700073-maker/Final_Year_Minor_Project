package org.schabi.newpipe.extractor.services.youtube.extractors;

import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeChannelExtractor$$ExternalSyntheticLambda13 implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder, Serializable {
    @Override // org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder
    public final SearchExtractor build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return new YoutubeChannelTabPlaylistExtractor(streamingService, listLinkHandler);
    }
}
