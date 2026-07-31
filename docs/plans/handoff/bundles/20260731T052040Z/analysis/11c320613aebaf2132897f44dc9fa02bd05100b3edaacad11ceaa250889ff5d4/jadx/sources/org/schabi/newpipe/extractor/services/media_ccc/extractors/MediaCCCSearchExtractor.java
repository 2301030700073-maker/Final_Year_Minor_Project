package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRadioExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCSearchExtractor extends SearchExtractor {
    public BandcampRadioExtractor conferenceKiosk;
    public JsonObject doc;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCSearchExtractor$1, reason: invalid class name */
    public final class AnonymousClass1 implements ChannelInfoItemExtractor {
        public final /* synthetic */ int $r8$classId;
        public final Serializable val$item;

        public /* synthetic */ AnonymousClass1(int i, Serializable serializable) {
            this.$r8$classId = i;
            this.val$item = serializable;
        }

        @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
        public final String getDescription() {
            int i = this.$r8$classId;
            Serializable serializable = this.val$item;
            switch (i) {
                case 0:
                    return ((ChannelInfoItem) serializable).getDescription();
                case 1:
                    return "";
                case 2:
                    return ((JsonObject) serializable).getString("description", "");
                default:
                    return null;
            }
        }

        @Override // org.schabi.newpipe.extractor.InfoItemExtractor
        public final String getName() {
            int i = this.$r8$classId;
            Serializable serializable = this.val$item;
            switch (i) {
                case 0:
                    return ((ChannelInfoItem) serializable).getName();
                case 1:
                    return ((JsonObject) serializable).getString("title", null);
                case 2:
                    return ((JsonObject) serializable).getString("username", null);
                default:
                    String textFromObject = YoutubeParsingHelper.getTextFromObject(((JsonObject) serializable).getArray("flexColumns").getObject(0).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text"), false);
                    if (!Utils.isNullOrEmpty(textFromObject)) {
                        return textFromObject;
                    }
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
                    return null;
            }
        }

        @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
        public final long getStreamCount() {
            int i = this.$r8$classId;
            Serializable serializable = this.val$item;
            switch (i) {
                case 0:
                    return ((ChannelInfoItem) serializable).getStreamCount();
                case 1:
                    return -1L;
                case 2:
                    return ((JsonObject) serializable).getLong("track_count", 0L);
                default:
                    return -1L;
            }
        }

        @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
        public final long getSubscriberCount() {
            int i = this.$r8$classId;
            Serializable serializable = this.val$item;
            switch (i) {
                case 0:
                    return ((ChannelInfoItem) serializable).getSubscriberCount();
                case 1:
                    return -1L;
                case 2:
                    return ((JsonObject) serializable).getLong("followers_count", 0L);
                default:
                    String string = ((JsonObject) serializable).getArray("flexColumns").getObject(r4.size() - 1).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text").getArray("runs").getObject(r4.size() - 1).getString("text", null);
                    if (Utils.isNullOrEmpty(string)) {
                        Utils$$ExternalSyntheticBUOutline0.m("Could not get subscriber count");
                        return 0L;
                    }
                    try {
                        return Utils.mixedNumberWordToLong(string);
                    } catch (Parser.RegexException unused) {
                        return 0L;
                    }
            }
        }

        @Override // org.schabi.newpipe.extractor.InfoItemExtractor
        public final List getThumbnails() {
            int i = this.$r8$classId;
            Serializable serializable = this.val$item;
            switch (i) {
                case 0:
                    return ((ChannelInfoItem) serializable).getThumbnails();
                case 1:
                    return MediaCCCParsingHelper.getImageListFromLogoImageUrl(((JsonObject) serializable).getString("logo_url", null));
                case 2:
                    return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(((JsonObject) serializable).getString("avatar_url", null));
                default:
                    try {
                        return YoutubeParsingHelper.getImagesFromThumbnailsArray(((JsonObject) serializable).getObject("thumbnail").getObject("musicThumbnailRenderer").getObject("thumbnail").getArray("thumbnails"));
                    } catch (Exception e) {
                        Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails", e);
                        return null;
                    }
            }
        }

        @Override // org.schabi.newpipe.extractor.InfoItemExtractor
        public final String getUrl() {
            int i = this.$r8$classId;
            Serializable serializable = this.val$item;
            switch (i) {
                case 0:
                    return ((ChannelInfoItem) serializable).getUrl();
                case 1:
                    return ((JsonObject) serializable).getString("url", null);
                case 2:
                    return Utils.replaceHttpWithHttps(((JsonObject) serializable).getString("permalink_url", null));
                default:
                    String urlFromNavigationEndpoint = YoutubeParsingHelper.getUrlFromNavigationEndpoint(((JsonObject) serializable).getObject("navigationEndpoint"));
                    if (!Utils.isNullOrEmpty(urlFromNavigationEndpoint)) {
                        return urlFromNavigationEndpoint;
                    }
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get URL");
                    return null;
            }
        }

        @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
        public final boolean isVerified() {
            switch (this.$r8$classId) {
                case 0:
                    return false;
                case 1:
                    return false;
                case 2:
                    return ((JsonObject) this.val$item).getBoolean("verified");
                default:
                    return true;
            }
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
        int i = 0;
        if (getLinkHandler().getContentFilters().contains("conferences") || getLinkHandler().getContentFilters().contains(TtmlNode.COMBINE_ALL) || getLinkHandler().getContentFilters().isEmpty()) {
            String searchString = getLinkHandler().getSearchString();
            for (ChannelInfoItem channelInfoItem : this.conferenceKiosk.getInitialPage().itemsList) {
                if (channelInfoItem.getName().toUpperCase().contains(searchString.toUpperCase())) {
                    multiInfoItemsCollector.commit(new AnonymousClass1(i, channelInfoItem));
                }
            }
        }
        if (getLinkHandler().getContentFilters().contains("events") || getLinkHandler().getContentFilters().contains(TtmlNode.COMBINE_ALL) || getLinkHandler().getContentFilters().isEmpty()) {
            JsonArray array = this.doc.getArray("events");
            while (i < array.size()) {
                if (array.getObject(i).getString("release_date", null) != null) {
                    multiInfoItemsCollector.commit(new YoutubeReelInfoItemExtractor(array.getObject(i), 2));
                }
                i++;
            }
        }
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, null);
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getMetaInfo() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        return ListExtractor.InfoItemsPage.EMPTY;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final String getSearchSuggestion() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final boolean isCorrectedSearch() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        if (getLinkHandler().getContentFilters().contains("events") || getLinkHandler().getContentFilters().contains(TtmlNode.COMBINE_ALL) || getLinkHandler().getContentFilters().isEmpty()) {
            try {
                this.doc = (JsonObject) JsonParser.object().from((String) closeableKt.get(this.linkHandler.getUrl(), null, this.service.getLocalization()).mHiddenViews);
            } catch (JsonParserException e) {
                throw new ExtractionException("Could not parse JSON.", e);
            }
        }
        if (getLinkHandler().getContentFilters().contains("conferences") || getLinkHandler().getContentFilters().contains(TtmlNode.COMBINE_ALL) || getLinkHandler().getContentFilters().isEmpty()) {
            this.conferenceKiosk.fetchPage();
        }
    }
}
