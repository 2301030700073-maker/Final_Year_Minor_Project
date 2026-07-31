package org.schabi.newpipe.extractor;

import androidx.core.app.NotificationCompat$Style;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeFeedExtractor;
import org.schabi.newpipe.extractor.utils.Utils;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StreamingService {
    public final int serviceId;
    public final ServiceInfo serviceInfo;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LinkType {
        public static final /* synthetic */ LinkType[] $VALUES;
        public static final LinkType CHANNEL;
        public static final LinkType NONE;
        public static final LinkType PLAYLIST;
        public static final LinkType STREAM;

        static {
            LinkType linkType = new LinkType("NONE", 0);
            NONE = linkType;
            LinkType linkType2 = new LinkType("STREAM", 1);
            STREAM = linkType2;
            LinkType linkType3 = new LinkType("CHANNEL", 2);
            CHANNEL = linkType3;
            LinkType linkType4 = new LinkType("PLAYLIST", 3);
            PLAYLIST = linkType4;
            $VALUES = new LinkType[]{linkType, linkType2, linkType3, linkType4};
        }

        public static LinkType valueOf(String str) {
            return (LinkType) Enum.valueOf(LinkType.class, str);
        }

        public static LinkType[] values() {
            return (LinkType[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ServiceInfo {
        public final Set mediaCapabilities;
        public final String name;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class MediaCapability {
            public static final /* synthetic */ MediaCapability[] $VALUES;
            public static final MediaCapability AUDIO;
            public static final MediaCapability COMMENTS;
            public static final MediaCapability LIVE;
            public static final MediaCapability VIDEO;

            static {
                MediaCapability mediaCapability = new MediaCapability("AUDIO", 0);
                AUDIO = mediaCapability;
                MediaCapability mediaCapability2 = new MediaCapability("VIDEO", 1);
                VIDEO = mediaCapability2;
                MediaCapability mediaCapability3 = new MediaCapability("LIVE", 2);
                LIVE = mediaCapability3;
                MediaCapability mediaCapability4 = new MediaCapability("COMMENTS", 3);
                COMMENTS = mediaCapability4;
                $VALUES = new MediaCapability[]{mediaCapability, mediaCapability2, mediaCapability3, mediaCapability4};
            }

            public static MediaCapability valueOf(String str) {
                return (MediaCapability) Enum.valueOf(MediaCapability.class, str);
            }

            public static MediaCapability[] values() {
                return (MediaCapability[]) $VALUES.clone();
            }
        }

        public ServiceInfo(String str, Set set) {
            this.name = str;
            this.mediaCapabilities = set;
        }
    }

    public StreamingService(int i, String str, EnumSet enumSet) {
        this.serviceId = i;
        this.serviceInfo = new ServiceInfo(str, enumSet);
    }

    public abstract ListExtractor getChannelExtractor(ListLinkHandler listLinkHandler);

    public abstract ListLinkHandlerFactory getChannelLHFactory();

    public abstract SearchExtractor getChannelTabExtractor(ListLinkHandler listLinkHandler);

    public abstract ListLinkHandlerFactory getChannelTabLHFactory();

    public abstract SearchExtractor getCommentsExtractor(ListLinkHandler listLinkHandler);

    public abstract ListLinkHandlerFactory getCommentsLHFactory();

    public final ContentCountry getContentCountry() {
        ContentCountry contentCountry = Utility.preferredContentCountry;
        if (contentCountry == null) {
            contentCountry = ContentCountry.DEFAULT;
        }
        return getSupportedCountries().contains(contentCountry) ? contentCountry : ContentCountry.DEFAULT;
    }

    public YoutubeFeedExtractor getFeedExtractor(String str) {
        return null;
    }

    public abstract TokenData getKioskList();

    public final LinkType getLinkTypeByUrl(String str) {
        String followGoogleRedirectIfNeeded = Utils.followGoogleRedirectIfNeeded(str);
        Cookie.Companion streamLHFactory = getStreamLHFactory();
        ListLinkHandlerFactory channelLHFactory = getChannelLHFactory();
        ListLinkHandlerFactory playlistLHFactory = getPlaylistLHFactory();
        return (streamLHFactory == null || !streamLHFactory.onAcceptUrl(followGoogleRedirectIfNeeded)) ? channelLHFactory.onAcceptUrl(followGoogleRedirectIfNeeded) ? LinkType.CHANNEL : (playlistLHFactory == null || !playlistLHFactory.onAcceptUrl(followGoogleRedirectIfNeeded)) ? LinkType.NONE : LinkType.PLAYLIST : LinkType.STREAM;
    }

    public final Localization getLocalization() {
        Localization preferredLocalization = Utility.getPreferredLocalization();
        if (getSupportedLocalizations().contains(preferredLocalization)) {
            return preferredLocalization;
        }
        for (Localization localization : getSupportedLocalizations()) {
            if (localization.getLanguageCode().equals(preferredLocalization.getLanguageCode())) {
                return localization;
            }
        }
        return Localization.DEFAULT;
    }

    public abstract SearchExtractor getPlaylistExtractor(ListLinkHandler listLinkHandler);

    public abstract ListLinkHandlerFactory getPlaylistLHFactory();

    public abstract SearchExtractor getSearchExtractor(SearchQueryHandler searchQueryHandler);

    public abstract SearchQueryHandlerFactory getSearchQHFactory();

    public abstract ListExtractor getStreamExtractor(LinkHandler linkHandler);

    public abstract Cookie.Companion getStreamLHFactory();

    public abstract NotificationCompat$Style getSubscriptionExtractor();

    public abstract Logger getSuggestionExtractor();

    public List getSupportedCountries() {
        return Collections.singletonList(ContentCountry.DEFAULT);
    }

    public List getSupportedLocalizations() {
        return Collections.singletonList(Localization.DEFAULT);
    }

    public final String toString() {
        return this.serviceId + ":" + this.serviceInfo.name;
    }
}
