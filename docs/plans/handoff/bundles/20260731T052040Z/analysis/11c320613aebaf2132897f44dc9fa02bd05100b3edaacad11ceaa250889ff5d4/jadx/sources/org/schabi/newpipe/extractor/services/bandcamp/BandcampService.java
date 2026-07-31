package org.schabi.newpipe.extractor.services.bandcamp;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.app.NotificationCompat$Style;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
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
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.BandcampService;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampChannelExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampChannelTabExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampCommentsExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampPlaylistExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRadioExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRadioStreamExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampSearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampSuggestionExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.linkHandler.BandcampChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.bandcamp.linkHandler.BandcampSearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.services.bandcamp.linkHandler.BandcampStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCConferenceExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCParsingHelper;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCRecentKiosk;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCSearchExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCStreamExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.linkHandler.MediaCCCLiveListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.media_ccc.linkHandler.MediaCCCSearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.services.media_ccc.linkHandler.MediaCCCStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeAccountExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeChannelTabExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubePlaylistExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.extractors.SoundcloudCommentsExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.extractors.SoundcloudSearchExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.extractors.SoundcloudStreamExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.extractors.SoundcloudSubscriptionExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.linkHandler.SoundcloudChartsLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.linkHandler.SoundcloudSearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.linkHandler.SoundcloudStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.subscription.SubscriptionExtractor$ContentSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampService extends StreamingService {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BandcampService(int i, String str, EnumSet enumSet, int i2) {
        super(i, str, enumSet);
        this.$r8$classId = i2;
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListExtractor getChannelExtractor(ListLinkHandler listLinkHandler) {
        switch (this.$r8$classId) {
            case 0:
                return new BandcampChannelExtractor(this, listLinkHandler, 1);
            case 1:
                return new MediaCCCConferenceExtractor(this, listLinkHandler, 1);
            default:
                return new PeertubeAccountExtractor(this, listLinkHandler);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getChannelLHFactory() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampChannelLinkHandlerFactory.INSTANCE;
            case 1:
                return MediaCCCLiveListLinkHandlerFactory.INSTANCE$1;
            default:
                return SoundcloudChartsLinkHandlerFactory.INSTANCE$1;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getChannelTabExtractor(ListLinkHandler listLinkHandler) {
        switch (this.$r8$classId) {
            case 0:
                return listLinkHandler instanceof ReadyChannelTabListLinkHandler ? ((ReadyChannelTabListLinkHandler) listLinkHandler).getChannelTabExtractor(this) : new BandcampChannelTabExtractor(this, listLinkHandler);
            case 1:
                return listLinkHandler instanceof ReadyChannelTabListLinkHandler ? ((ReadyChannelTabListLinkHandler) listLinkHandler).getChannelTabExtractor(this) : new PeertubeChannelTabExtractor(this, listLinkHandler, null);
            default:
                return new PeertubeChannelTabExtractor(this, listLinkHandler);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getChannelTabLHFactory() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampChannelLinkHandlerFactory.INSTANCE$1;
            case 1:
                return MediaCCCLiveListLinkHandlerFactory.INSTANCE$1;
            default:
                return SoundcloudChartsLinkHandlerFactory.INSTANCE$2;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getCommentsExtractor(ListLinkHandler listLinkHandler) {
        switch (this.$r8$classId) {
            case 0:
                return new BandcampCommentsExtractor(this, listLinkHandler, 0);
            case 1:
                return null;
            default:
                return new SoundcloudCommentsExtractor(this, listLinkHandler, 0);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getCommentsLHFactory() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampChannelLinkHandlerFactory.INSTANCE$2;
            case 1:
                return null;
            default:
                return SoundcloudChartsLinkHandlerFactory.INSTANCE$3;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final TokenData getKioskList() {
        final int i = 1;
        final int i2 = 0;
        switch (this.$r8$classId) {
            case 0:
                TokenData tokenData = new TokenData(this);
                BandcampChannelLinkHandlerFactory bandcampChannelLinkHandlerFactory = BandcampChannelLinkHandlerFactory.INSTANCE$3;
                try {
                    tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.bandcamp.BandcampService$$ExternalSyntheticLambda0
                        public final /* synthetic */ BandcampService f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                        public final KioskExtractor createNewKiosk(String str, String str2) {
                            int i3 = i2;
                            BandcampService bandcampService = this.f$0;
                            switch (i3) {
                                case 0:
                                    return new BandcampRadioExtractor(bandcampService, BandcampChannelLinkHandlerFactory.INSTANCE$3.fromUrl("https://bandcamp.com/api/mobile/24/bootstrap_data"), str2, 1);
                                default:
                                    BandcampRadioExtractor bandcampRadioExtractor = new BandcampRadioExtractor(bandcampService, BandcampChannelLinkHandlerFactory.INSTANCE$3.fromUrl("https://bandcamp.com/api/bcweekly/3/list"), str2, 0);
                                    bandcampRadioExtractor.json = null;
                                    return bandcampRadioExtractor;
                            }
                        }
                    }, bandcampChannelLinkHandlerFactory, "Featured");
                    tokenData.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.bandcamp.BandcampService$$ExternalSyntheticLambda0
                        public final /* synthetic */ BandcampService f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                        public final KioskExtractor createNewKiosk(String str, String str2) {
                            int i3 = i;
                            BandcampService bandcampService = this.f$0;
                            switch (i3) {
                                case 0:
                                    return new BandcampRadioExtractor(bandcampService, BandcampChannelLinkHandlerFactory.INSTANCE$3.fromUrl("https://bandcamp.com/api/mobile/24/bootstrap_data"), str2, 1);
                                default:
                                    BandcampRadioExtractor bandcampRadioExtractor = new BandcampRadioExtractor(bandcampService, BandcampChannelLinkHandlerFactory.INSTANCE$3.fromUrl("https://bandcamp.com/api/bcweekly/3/list"), str2, 0);
                                    bandcampRadioExtractor.json = null;
                                    return bandcampRadioExtractor;
                            }
                        }
                    }, bandcampChannelLinkHandlerFactory, "Radio");
                    tokenData.value = "Featured";
                    return tokenData;
                } catch (Exception e) {
                    throw new ExtractionException(e);
                }
            case 1:
                TokenData tokenData2 = new TokenData(this);
                MediaCCCLiveListLinkHandlerFactory mediaCCCLiveListLinkHandlerFactory = MediaCCCLiveListLinkHandlerFactory.INSTANCE$2;
                MediaCCCLiveListLinkHandlerFactory mediaCCCLiveListLinkHandlerFactory2 = MediaCCCLiveListLinkHandlerFactory.INSTANCE$3;
                MediaCCCLiveListLinkHandlerFactory mediaCCCLiveListLinkHandlerFactory3 = MediaCCCLiveListLinkHandlerFactory.INSTANCE;
                try {
                    tokenData2.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.media_ccc.MediaCCCService$$ExternalSyntheticLambda0
                        public final /* synthetic */ BandcampService f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                        public final KioskExtractor createNewKiosk(String str, String str2) {
                            int i3 = i2;
                            BandcampService bandcampService = this.f$0;
                            switch (i3) {
                                case 0:
                                    return new BandcampRadioExtractor(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE$2.fromUrl(str), str2, 2);
                                case 1:
                                    return new MediaCCCRecentKiosk(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE$3.fromUrl(str), str2);
                                default:
                                    return new BandcampRadioExtractor(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE.fromUrl(str), str2, 4);
                            }
                        }
                    }, mediaCCCLiveListLinkHandlerFactory, "conferences");
                    tokenData2.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.media_ccc.MediaCCCService$$ExternalSyntheticLambda0
                        public final /* synthetic */ BandcampService f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                        public final KioskExtractor createNewKiosk(String str, String str2) {
                            int i3 = i;
                            BandcampService bandcampService = this.f$0;
                            switch (i3) {
                                case 0:
                                    return new BandcampRadioExtractor(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE$2.fromUrl(str), str2, 2);
                                case 1:
                                    return new MediaCCCRecentKiosk(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE$3.fromUrl(str), str2);
                                default:
                                    return new BandcampRadioExtractor(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE.fromUrl(str), str2, 4);
                            }
                        }
                    }, mediaCCCLiveListLinkHandlerFactory2, "recent");
                    final int i3 = 2;
                    tokenData2.addKioskEntry(new KioskList$KioskExtractorFactory(this) { // from class: org.schabi.newpipe.extractor.services.media_ccc.MediaCCCService$$ExternalSyntheticLambda0
                        public final /* synthetic */ BandcampService f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
                        public final KioskExtractor createNewKiosk(String str, String str2) {
                            int i32 = i3;
                            BandcampService bandcampService = this.f$0;
                            switch (i32) {
                                case 0:
                                    return new BandcampRadioExtractor(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE$2.fromUrl(str), str2, 2);
                                case 1:
                                    return new MediaCCCRecentKiosk(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE$3.fromUrl(str), str2);
                                default:
                                    return new BandcampRadioExtractor(bandcampService, MediaCCCLiveListLinkHandlerFactory.INSTANCE.fromUrl(str), str2, 4);
                            }
                        }
                    }, mediaCCCLiveListLinkHandlerFactory3, "live");
                    tokenData2.value = "recent";
                    return tokenData2;
                } catch (Exception e2) {
                    throw new ExtractionException(e2);
                }
            default:
                TokenData tokenData3 = new TokenData(this);
                try {
                    tokenData3.addKioskEntry(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 10), SoundcloudChartsLinkHandlerFactory.INSTANCE, "New & hot");
                    tokenData3.value = "New & hot";
                    return tokenData3;
                } catch (Exception e3) {
                    throw new ExtractionException(e3);
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getPlaylistExtractor(ListLinkHandler listLinkHandler) {
        switch (this.$r8$classId) {
            case 0:
                return new BandcampPlaylistExtractor(this, listLinkHandler, 0);
            case 1:
                return null;
            default:
                return new PeertubePlaylistExtractor(this, listLinkHandler, 1);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListLinkHandlerFactory getPlaylistLHFactory() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampChannelLinkHandlerFactory.INSTANCE$4;
            case 1:
                return null;
            default:
                return SoundcloudChartsLinkHandlerFactory.INSTANCE$4;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchExtractor getSearchExtractor(SearchQueryHandler searchQueryHandler) {
        switch (this.$r8$classId) {
            case 0:
                return new BandcampSearchExtractor(this, searchQueryHandler, 0);
            case 1:
                String str = "conferences";
                MediaCCCSearchExtractor mediaCCCSearchExtractor = new MediaCCCSearchExtractor(this, searchQueryHandler, 0);
                try {
                    mediaCCCSearchExtractor.conferenceKiosk = new BandcampRadioExtractor(this, MediaCCCLiveListLinkHandlerFactory.INSTANCE$2.fromId("conferences"), str, 2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return mediaCCCSearchExtractor;
            default:
                return new SoundcloudSearchExtractor(this, searchQueryHandler, 0);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final SearchQueryHandlerFactory getSearchQHFactory() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampSearchQueryHandlerFactory.INSTANCE;
            case 1:
                return MediaCCCSearchQueryHandlerFactory.INSTANCE;
            default:
                return SoundcloudSearchQueryHandlerFactory.INSTANCE;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final ListExtractor getStreamExtractor(LinkHandler linkHandler) {
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                int i2 = 0;
                return BandcampExtractorHelper.isRadioUrl(linkHandler.getUrl()) ? new BandcampRadioStreamExtractor(this, linkHandler, i2) : new BandcampStreamExtractor(this, linkHandler, i2);
            case 1:
                if (!MediaCCCParsingHelper.LIVE_STREAM_ID_PATTERN.matcher(linkHandler.getId()).find()) {
                    return new MediaCCCStreamExtractor(this, linkHandler, 2);
                }
                BandcampStreamExtractor bandcampStreamExtractor = new BandcampStreamExtractor(this, linkHandler, i);
                bandcampStreamExtractor.albumJson = null;
                bandcampStreamExtractor.document = "";
                bandcampStreamExtractor.current = null;
                return bandcampStreamExtractor;
            default:
                SoundcloudStreamExtractor soundcloudStreamExtractor = new SoundcloudStreamExtractor(this, linkHandler, 2);
                soundcloudStreamExtractor.isAvailable = true;
                return soundcloudStreamExtractor;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final Cookie.Companion getStreamLHFactory() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampStreamLinkHandlerFactory.INSTANCE;
            case 1:
                return MediaCCCStreamLinkHandlerFactory.INSTANCE;
            default:
                return SoundcloudStreamLinkHandlerFactory.INSTANCE;
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final NotificationCompat$Style getSubscriptionExtractor() {
        switch (this.$r8$classId) {
            case 0:
            case 1:
                return null;
            default:
                return new SoundcloudSubscriptionExtractor(this, Collections.singletonList(SubscriptionExtractor$ContentSource.CHANNEL_URL));
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public final Logger getSuggestionExtractor() {
        switch (this.$r8$classId) {
            case 0:
                return new BandcampSuggestionExtractor(this, 0);
            case 1:
                return null;
            default:
                return new BandcampSuggestionExtractor(this, 2);
        }
    }

    @Override // org.schabi.newpipe.extractor.StreamingService
    public List getSupportedCountries() {
        switch (this.$r8$classId) {
            case 2:
                String[] strArr = {"AU", "CA", "DE", "FR", "GB", "IE", "NL", "NZ", "US"};
                ContentCountry contentCountry = ContentCountry.DEFAULT;
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < 9; i++) {
                    arrayList.add(new ContentCountry(strArr[i]));
                }
                return DesugarCollections.unmodifiableList(arrayList);
            default:
                return super.getSupportedCountries();
        }
    }
}
