package org.schabi.newpipe.extractor.services.youtube;

import androidx.core.app.NotificationCompat$Style;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.Cookie;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.parser.TokenData;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRadioExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeCommentsExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeFeedExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeMixPlaylistExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeMusicSearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeSearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeSubscriptionExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeSuggestionExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.kiosk.YoutubeLiveExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.kiosk.YoutubeTrendingMoviesAndShowsTrailersExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.kiosk.YoutubeTrendingMusicExtractor;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeLiveLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeSearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.subscription.SubscriptionExtractor$ContentSource;
import org.schabi.newpipe.extractor.utils.JavaScript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeService extends StreamingService {
    public static final List SUPPORTED_COUNTRIES;
    public static final List SUPPORTED_LANGUAGES;

    static {
        ArrayList arrayList = new ArrayList();
        String str = new String[]{"en-GB"}[0];
        arrayList.add((Localization) JavaScript.forLanguageTag(str).map(new Nodes$$ExternalSyntheticLambda0(21)).orElseThrow(new StringUtil$$ExternalSyntheticLambda1(str, 2)));
        SUPPORTED_LANGUAGES = DesugarCollections.unmodifiableList(arrayList);
        String[] strArr = {"DZ", "AR", "AU", "AT", "AZ", "BH", "BD", "BY", "BE", "BO", "BA", "BR", "BG", "KH", "CA", "CL", "CO", "CR", "HR", "CY", "CZ", "DK", "DO", "EC", "EG", "SV", "EE", "FI", "FR", "GE", "DE", "GH", "GR", "GT", "HN", "HK", "HU", "IS", "IN", "ID", "IQ", "IE", "IL", "IT", "JM", "JP", "JO", "KZ", "KE", "KW", "LA", "LV", "LB", "LY", "LI", "LT", "LU", "MY", "MT", "MX", "ME", "MA", "NP", "NL", "NZ", "NI", "NG", "MK", "NO", "OM", "PK", "PA", "PG", "PY", "PE", "PH", "PL", "PT", "PR", "QA", "RO", "RU", "SA", "SN", "RS", "SG", "SK", "SI", "ZA", "KR", "ES", "LK", "SE", "CH", "TW", "TZ", "TH", "TN", "TR", "UG", "UA", "AE", "GB", "US", "UY", "VE", "VN", "YE", "ZW"};
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < 109; i++) {
            arrayList2.add(new ContentCountry(strArr[i]));
        }
        SUPPORTED_COUNTRIES = DesugarCollections.unmodifiableList(arrayList2);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListExtractor getChannelExtractor(ListLinkHandler listLinkHandler) {
        return new YoutubeChannelExtractor(this, listLinkHandler, 1);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getChannelLHFactory() {
        return YoutubeChannelLinkHandlerFactory.INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getChannelTabExtractor(ListLinkHandler listLinkHandler) {
        return listLinkHandler instanceof ReadyChannelTabListLinkHandler ? ((ReadyChannelTabListLinkHandler) listLinkHandler).getChannelTabExtractor(this) : new YoutubeChannelTabExtractor(this, listLinkHandler, 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getChannelTabLHFactory() {
        return YoutubeLiveLinkHandlerFactory.INSTANCE$1;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getCommentsExtractor(ListLinkHandler listLinkHandler) {
        return new YoutubeCommentsExtractor(this, listLinkHandler, 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getCommentsLHFactory() {
        return YoutubeLiveLinkHandlerFactory.INSTANCE$2;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final YoutubeFeedExtractor getFeedExtractor(String str) {
        return new YoutubeFeedExtractor(this, YoutubeChannelLinkHandlerFactory.INSTANCE.fromUrl(str), 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final TokenData getKioskList() {
        TokenData tokenData = new TokenData(this);
        YoutubeLiveLinkHandlerFactory youtubeLiveLinkHandlerFactory = YoutubeLiveLinkHandlerFactory.INSTANCE$5;
        YoutubeLiveLinkHandlerFactory youtubeLiveLinkHandlerFactory2 = YoutubeLiveLinkHandlerFactory.INSTANCE;
        YoutubeLiveLinkHandlerFactory youtubeLiveLinkHandlerFactory3 = YoutubeLiveLinkHandlerFactory.INSTANCE$8;
        YoutubeLiveLinkHandlerFactory youtubeLiveLinkHandlerFactory4 = YoutubeLiveLinkHandlerFactory.INSTANCE$4;
        YoutubeLiveLinkHandlerFactory youtubeLiveLinkHandlerFactory5 = YoutubeLiveLinkHandlerFactory.INSTANCE$6;
        YoutubeLiveLinkHandlerFactory youtubeLiveLinkHandlerFactory6 = YoutubeLiveLinkHandlerFactory.INSTANCE$7;
        try {
            final int i = 0;
            tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeService$$ExternalSyntheticLambda0
                public final /* synthetic */ YoutubeService f$0;

                {
                    this.f$0 = this;
                }

                @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                public final KioskExtractor createNewKiosk(String str, String str2) {
                    int i2 = i;
                    YoutubeService youtubeService = this.f$0;
                    switch (i2) {
                        case 0:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE.fromUrl(str), str2, "UC4R8DWoMoI7CAwX8_LjQHig", "EgdsaXZldGFikgEDCKEK");
                        case 1:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$8.fromUrl(str), str2, "FEpodcasts_destination", "qgcCCAM%3D");
                        case 2:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$4.fromUrl(str), str2, "UCOpNcN46UbXVtpKMrmU4Abg", "Egh0cmVuZGluZw%3D%3D");
                        case 3:
                            return new YoutubeTrendingMoviesAndShowsTrailersExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$6.fromUrl(str), str2, "TRENDING_MOVIES");
                        case 4:
                            return new YoutubeTrendingMusicExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$7.fromUrl(str), str2, "TRENDING_VIDEOS");
                        default:
                            return new BandcampRadioExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$5.fromUrl(str), str2, 3);
                    }
                }
            }, youtubeLiveLinkHandlerFactory2, "live");
            final int i2 = 1;
            tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeService$$ExternalSyntheticLambda0
                public final /* synthetic */ YoutubeService f$0;

                {
                    this.f$0 = this;
                }

                @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                public final KioskExtractor createNewKiosk(String str, String str2) {
                    int i22 = i2;
                    YoutubeService youtubeService = this.f$0;
                    switch (i22) {
                        case 0:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE.fromUrl(str), str2, "UC4R8DWoMoI7CAwX8_LjQHig", "EgdsaXZldGFikgEDCKEK");
                        case 1:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$8.fromUrl(str), str2, "FEpodcasts_destination", "qgcCCAM%3D");
                        case 2:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$4.fromUrl(str), str2, "UCOpNcN46UbXVtpKMrmU4Abg", "Egh0cmVuZGluZw%3D%3D");
                        case 3:
                            return new YoutubeTrendingMoviesAndShowsTrailersExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$6.fromUrl(str), str2, "TRENDING_MOVIES");
                        case 4:
                            return new YoutubeTrendingMusicExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$7.fromUrl(str), str2, "TRENDING_VIDEOS");
                        default:
                            return new BandcampRadioExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$5.fromUrl(str), str2, 3);
                    }
                }
            }, youtubeLiveLinkHandlerFactory3, "trending_podcasts_episodes");
            final int i3 = 2;
            tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeService$$ExternalSyntheticLambda0
                public final /* synthetic */ YoutubeService f$0;

                {
                    this.f$0 = this;
                }

                @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                public final KioskExtractor createNewKiosk(String str, String str2) {
                    int i22 = i3;
                    YoutubeService youtubeService = this.f$0;
                    switch (i22) {
                        case 0:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE.fromUrl(str), str2, "UC4R8DWoMoI7CAwX8_LjQHig", "EgdsaXZldGFikgEDCKEK");
                        case 1:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$8.fromUrl(str), str2, "FEpodcasts_destination", "qgcCCAM%3D");
                        case 2:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$4.fromUrl(str), str2, "UCOpNcN46UbXVtpKMrmU4Abg", "Egh0cmVuZGluZw%3D%3D");
                        case 3:
                            return new YoutubeTrendingMoviesAndShowsTrailersExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$6.fromUrl(str), str2, "TRENDING_MOVIES");
                        case 4:
                            return new YoutubeTrendingMusicExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$7.fromUrl(str), str2, "TRENDING_VIDEOS");
                        default:
                            return new BandcampRadioExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$5.fromUrl(str), str2, 3);
                    }
                }
            }, youtubeLiveLinkHandlerFactory4, "trending_gaming");
            final int i4 = 3;
            tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeService$$ExternalSyntheticLambda0
                public final /* synthetic */ YoutubeService f$0;

                {
                    this.f$0 = this;
                }

                @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                public final KioskExtractor createNewKiosk(String str, String str2) {
                    int i22 = i4;
                    YoutubeService youtubeService = this.f$0;
                    switch (i22) {
                        case 0:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE.fromUrl(str), str2, "UC4R8DWoMoI7CAwX8_LjQHig", "EgdsaXZldGFikgEDCKEK");
                        case 1:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$8.fromUrl(str), str2, "FEpodcasts_destination", "qgcCCAM%3D");
                        case 2:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$4.fromUrl(str), str2, "UCOpNcN46UbXVtpKMrmU4Abg", "Egh0cmVuZGluZw%3D%3D");
                        case 3:
                            return new YoutubeTrendingMoviesAndShowsTrailersExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$6.fromUrl(str), str2, "TRENDING_MOVIES");
                        case 4:
                            return new YoutubeTrendingMusicExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$7.fromUrl(str), str2, "TRENDING_VIDEOS");
                        default:
                            return new BandcampRadioExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$5.fromUrl(str), str2, 3);
                    }
                }
            }, youtubeLiveLinkHandlerFactory5, "trending_movies_and_shows");
            final int i5 = 4;
            tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeService$$ExternalSyntheticLambda0
                public final /* synthetic */ YoutubeService f$0;

                {
                    this.f$0 = this;
                }

                @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                public final KioskExtractor createNewKiosk(String str, String str2) {
                    int i22 = i5;
                    YoutubeService youtubeService = this.f$0;
                    switch (i22) {
                        case 0:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE.fromUrl(str), str2, "UC4R8DWoMoI7CAwX8_LjQHig", "EgdsaXZldGFikgEDCKEK");
                        case 1:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$8.fromUrl(str), str2, "FEpodcasts_destination", "qgcCCAM%3D");
                        case 2:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$4.fromUrl(str), str2, "UCOpNcN46UbXVtpKMrmU4Abg", "Egh0cmVuZGluZw%3D%3D");
                        case 3:
                            return new YoutubeTrendingMoviesAndShowsTrailersExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$6.fromUrl(str), str2, "TRENDING_MOVIES");
                        case 4:
                            return new YoutubeTrendingMusicExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$7.fromUrl(str), str2, "TRENDING_VIDEOS");
                        default:
                            return new BandcampRadioExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$5.fromUrl(str), str2, 3);
                    }
                }
            }, youtubeLiveLinkHandlerFactory6, "trending_music");
            final int i6 = 5;
            tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeService$$ExternalSyntheticLambda0
                public final /* synthetic */ YoutubeService f$0;

                {
                    this.f$0 = this;
                }

                @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                public final KioskExtractor createNewKiosk(String str, String str2) {
                    int i22 = i6;
                    YoutubeService youtubeService = this.f$0;
                    switch (i22) {
                        case 0:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE.fromUrl(str), str2, "UC4R8DWoMoI7CAwX8_LjQHig", "EgdsaXZldGFikgEDCKEK");
                        case 1:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$8.fromUrl(str), str2, "FEpodcasts_destination", "qgcCCAM%3D");
                        case 2:
                            return new YoutubeLiveExtractor(this.f$0, YoutubeLiveLinkHandlerFactory.INSTANCE$4.fromUrl(str), str2, "UCOpNcN46UbXVtpKMrmU4Abg", "Egh0cmVuZGluZw%3D%3D");
                        case 3:
                            return new YoutubeTrendingMoviesAndShowsTrailersExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$6.fromUrl(str), str2, "TRENDING_MOVIES");
                        case 4:
                            return new YoutubeTrendingMusicExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$7.fromUrl(str), str2, "TRENDING_VIDEOS");
                        default:
                            return new BandcampRadioExtractor(youtubeService, YoutubeLiveLinkHandlerFactory.INSTANCE$5.fromUrl(str), str2, 3);
                    }
                }
            }, youtubeLiveLinkHandlerFactory, "Trending");
            tokenData.value = "live";
            return tokenData;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getPlaylistExtractor(ListLinkHandler listLinkHandler) {
        String id = listLinkHandler.getId();
        String str = YoutubeParsingHelper.clientVersion;
        return id.startsWith("RD") ? new YoutubeMixPlaylistExtractor(this, listLinkHandler, 0) : new YoutubePlaylistExtractor(this, listLinkHandler, 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getPlaylistLHFactory() {
        return YoutubeLiveLinkHandlerFactory.INSTANCE$3;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getSearchExtractor(SearchQueryHandler searchQueryHandler) {
        List contentFilters = searchQueryHandler.getContentFilters();
        return (contentFilters.isEmpty() || !((String) contentFilters.get(0)).startsWith("music_")) ? new YoutubeSearchExtractor(this, searchQueryHandler) : new YoutubeMusicSearchExtractor(this, searchQueryHandler, 0);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchQueryHandlerFactory getSearchQHFactory() {
        return YoutubeSearchQueryHandlerFactory.INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListExtractor getStreamExtractor(LinkHandler linkHandler) {
        YoutubeStreamExtractor youtubeStreamExtractor = new YoutubeStreamExtractor(this, linkHandler, 2);
        youtubeStreamExtractor.ageLimit = -1;
        return youtubeStreamExtractor;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final Cookie.Companion getStreamLHFactory() {
        return YoutubeStreamLinkHandlerFactory.INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final NotificationCompat$Style getSubscriptionExtractor() {
        return new YoutubeSubscriptionExtractor(this, Collections.singletonList(SubscriptionExtractor$ContentSource.INPUT_STREAM));
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final Logger getSuggestionExtractor() {
        return new YoutubeSuggestionExtractor(this);
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final List getSupportedCountries() {
        return SUPPORTED_COUNTRIES;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final List getSupportedLocalizations() {
        return SUPPORTED_LANGUAGES;
    }
}
