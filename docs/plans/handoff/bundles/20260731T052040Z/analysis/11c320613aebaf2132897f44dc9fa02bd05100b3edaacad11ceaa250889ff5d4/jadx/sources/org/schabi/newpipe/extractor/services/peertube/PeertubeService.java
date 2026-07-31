package org.schabi.newpipe.extractor.services.peertube;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.app.NotificationCompat$Style;
import java.util.List;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampCommentsExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampSuggestionExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeAccountExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeChannelTabExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubePlaylistExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeSearchExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeStreamExtractor;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeSearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeTrendingLinkHandlerFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeService extends StreamingService {
    public PeertubeInstance instance;

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListExtractor getChannelExtractor(ListLinkHandler listLinkHandler) {
        return listLinkHandler.getUrl().contains("/video-channels/") ? new PeertubeAccountExtractor(this, listLinkHandler, 1) : new PeertubeAccountExtractor(this, listLinkHandler, 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getChannelLHFactory() {
        return PeertubeChannelLinkHandlerFactory.INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getChannelTabExtractor(ListLinkHandler listLinkHandler) {
        return new PeertubeChannelTabExtractor(this, listLinkHandler);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getChannelTabLHFactory() {
        return PeertubeChannelLinkHandlerFactory.INSTANCE$1;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getCommentsExtractor(ListLinkHandler listLinkHandler) {
        BandcampCommentsExtractor bandcampCommentsExtractor = new BandcampCommentsExtractor(this, listLinkHandler, 1);
        bandcampCommentsExtractor.document = null;
        return bandcampCommentsExtractor;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getCommentsLHFactory() {
        return PeertubeChannelLinkHandlerFactory.INSTANCE$2;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final TokenData getKioskList() {
        PeertubeTrendingLinkHandlerFactory peertubeTrendingLinkHandlerFactory = PeertubeTrendingLinkHandlerFactory.INSTANCE;
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this);
        TokenData tokenData = new TokenData(this);
        try {
            tokenData.addKioskEntry(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, peertubeTrendingLinkHandlerFactory, "Trending");
            tokenData.addKioskEntry(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, peertubeTrendingLinkHandlerFactory, "Most liked");
            tokenData.addKioskEntry(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, peertubeTrendingLinkHandlerFactory, "Recently added");
            tokenData.addKioskEntry(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, peertubeTrendingLinkHandlerFactory, "Local");
            tokenData.value = "Trending";
            return tokenData;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getPlaylistExtractor(ListLinkHandler listLinkHandler) {
        return new PeertubePlaylistExtractor(this, listLinkHandler, 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getPlaylistLHFactory() {
        return PeertubeChannelLinkHandlerFactory.INSTANCE$3;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getSearchExtractor(SearchQueryHandler searchQueryHandler) {
        List contentFilters = searchQueryHandler.getContentFilters();
        boolean z = false;
        if (!contentFilters.isEmpty() && ((String) contentFilters.get(0)).startsWith("sepia_")) {
            z = true;
        }
        return new PeertubeSearchExtractor(this, searchQueryHandler, z);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchQueryHandlerFactory getSearchQHFactory() {
        return PeertubeSearchQueryHandlerFactory.INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListExtractor getStreamExtractor(LinkHandler linkHandler) {
        return new PeertubeStreamExtractor(this, linkHandler);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final Cookie.Companion getStreamLHFactory() {
        return PeertubeStreamLinkHandlerFactory.INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final NotificationCompat$Style getSubscriptionExtractor() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final Logger getSuggestionExtractor() {
        return new BandcampSuggestionExtractor(this, 1);
    }
}
