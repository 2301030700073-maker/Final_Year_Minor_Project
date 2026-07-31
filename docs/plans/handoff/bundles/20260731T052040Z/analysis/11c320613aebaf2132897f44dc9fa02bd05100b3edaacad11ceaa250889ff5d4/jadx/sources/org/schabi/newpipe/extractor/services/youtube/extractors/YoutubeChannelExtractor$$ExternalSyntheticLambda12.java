package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonObject;
import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeChannelExtractor$$ExternalSyntheticLambda12 implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder, Serializable {
    public final /* synthetic */ JsonObject f$0;
    public final /* synthetic */ YoutubeChannelHelper$ChannelHeader f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ String f$4;

    public /* synthetic */ YoutubeChannelExtractor$$ExternalSyntheticLambda12(JsonObject jsonObject, YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader, String str, String str2, String str3) {
        this.f$0 = jsonObject;
        this.f$1 = youtubeChannelHelper$ChannelHeader;
        this.f$2 = str;
        this.f$3 = str2;
        this.f$4 = str3;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder
    public final SearchExtractor build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return new YoutubeChannelTabExtractor.VideosTabExtractor(streamingService, listLinkHandler, this.f$0, this.f$1, this.f$2, this.f$3, this.f$4);
    }
}
