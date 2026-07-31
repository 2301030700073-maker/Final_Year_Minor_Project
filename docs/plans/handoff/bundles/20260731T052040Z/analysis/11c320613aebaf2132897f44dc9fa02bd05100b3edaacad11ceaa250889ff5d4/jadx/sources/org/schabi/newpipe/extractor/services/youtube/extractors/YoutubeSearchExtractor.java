package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.util.Objects;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeSearchExtractor extends SearchExtractor {
    public final boolean extractChannelResults;
    public final boolean extractPlaylistResults;
    public final boolean extractVideoResults;
    public JsonObject initialData;
    public final String searchType;

    public YoutubeSearchExtractor(YoutubeService youtubeService, SearchQueryHandler searchQueryHandler) {
        super(youtubeService, searchQueryHandler, 0);
        List contentFilters = searchQueryHandler.getContentFilters();
        String str = Utils.isNullOrEmpty(contentFilters) ? null : (String) contentFilters.get(0);
        this.searchType = str;
        this.extractVideoResults = str == null || TtmlNode.COMBINE_ALL.equals(str) || "videos".equals(str);
        this.extractChannelResults = str == null || TtmlNode.COMBINE_ALL.equals(str) || "channels".equals(str);
        this.extractPlaylistResults = str == null || TtmlNode.COMBINE_ALL.equals(str) || "playlists".equals(str);
    }

    public static Page getNextPageFrom$1(JsonObject jsonObject) {
        if (Utils.isNullOrEmpty(jsonObject)) {
            return null;
        }
        return new Page("https://www.youtube.com/youtubei/v1/search?prettyPrint=false", RecordTag.m480m(jsonObject, "continuationEndpoint", "continuationCommand", "token", (String) null));
    }

    public final void collectStreamsFrom(MultiInfoItemsCollector multiInfoItemsCollector, JsonArray jsonArray) {
        TimeAgoParser timeAgoParser = getTimeAgoParser();
        Iterator<E> it = jsonArray.iterator();
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.containsKey("backgroundPromoRenderer")) {
                throw new SearchExtractor.NothingFoundException(YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("backgroundPromoRenderer").getObject("bodyText"), false));
            }
            boolean containsKey = jsonObject.containsKey("videoRenderer");
            boolean z = this.extractVideoResults;
            if (containsKey && z) {
                multiInfoItemsCollector.commit(new YoutubeStreamInfoItemExtractor(jsonObject.getObject("videoRenderer"), timeAgoParser));
            } else if (jsonObject.containsKey("channelRenderer") && this.extractChannelResults) {
                multiInfoItemsCollector.commit(new YoutubeChannelInfoItemExtractor(jsonObject.getObject("channelRenderer")));
            } else {
                boolean containsKey2 = jsonObject.containsKey("playlistRenderer");
                boolean z2 = this.extractPlaylistResults;
                if (containsKey2 && z2) {
                    multiInfoItemsCollector.commit(new YoutubePlaylistInfoItemExtractor(jsonObject.getObject("playlistRenderer"), 0));
                } else if (jsonObject.containsKey("showRenderer") && z2) {
                    multiInfoItemsCollector.commit(new YoutubeShowRendererInfoItemExtractor(jsonObject.getObject("showRenderer")));
                } else if (jsonObject.containsKey("lockupViewModel")) {
                    JsonObject object = jsonObject.getObject("lockupViewModel");
                    String string = object.getString("contentType", null);
                    if (("LOCKUP_CONTENT_TYPE_PLAYLIST".equals(string) || "LOCKUP_CONTENT_TYPE_PODCAST".equals(string)) && z2) {
                        multiInfoItemsCollector.commit(new YoutubeMixOrPlaylistLockupInfoItemExtractor(object));
                    } else if ("LOCKUP_CONTENT_TYPE_VIDEO".equals(string) && z) {
                        multiInfoItemsCollector.commit(new YoutubeStreamInfoItemLockupExtractor(object, timeAgoParser));
                    }
                }
            }
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
        Iterator<E> it = RecordTag.m(this.initialData, "contents", "twoColumnSearchResultsRenderer", "primaryContents", "sectionListRenderer").getArray("contents").iterator();
        Page page = null;
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.containsKey("itemSectionRenderer")) {
                collectStreamsFrom(multiInfoItemsCollector, jsonObject.getObject("itemSectionRenderer").getArray("contents"));
            } else if (jsonObject.containsKey("continuationItemRenderer")) {
                page = getNextPageFrom$1(jsonObject.getObject("continuationItemRenderer"));
            }
        }
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, page);
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getMetaInfo() {
        return Utility.getMetaInfo(RecordTag.m(this.initialData, "contents", "twoColumnSearchResultsRenderer", "primaryContents", "sectionListRenderer").getArray("contents"));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(streamingService.serviceId);
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(page.getId(), "continuation");
        JsonArray array = YoutubeParsingHelper.getJsonPostResponse("search", Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization).getArray("onResponseReceivedCommands").getObject(0).getObject("appendContinuationItemsAction").getArray("continuationItems");
        collectStreamsFrom(multiInfoItemsCollector, array.getObject(0).getObject("itemSectionRenderer").getArray("contents"));
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, getNextPageFrom$1(array.getObject(1).getObject("continuationItemRenderer")));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final String getSearchSuggestion() {
        JsonObject object = RecordTag.m(this.initialData, "contents", "twoColumnSearchResultsRenderer", "primaryContents", "sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer");
        JsonObject object2 = object.getArray("contents").getObject(0).getObject("didYouMeanRenderer");
        return !object2.isEmpty() ? (String) Parser.getInstanceOf(object2, "correctedQueryEndpoint.searchEndpoint.query", String.class) : (String) Objects.requireNonNullElse(YoutubeParsingHelper.getTextFromObject(object.getArray("contents").getObject(0).getObject("showingResultsForRenderer").getObject("correctedQuery"), false), "");
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final boolean isCorrectedSearch() {
        return !RecordTag.m(this.initialData, "contents", "twoColumnSearchResultsRenderer", "primaryContents", "sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer").getArray("contents").getObject(0).getObject("showingResultsForRenderer").isEmpty();
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String searchString = getLinkHandler().getSearchString();
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        String str = this.searchType;
        String str2 = "8AEB";
        if (!Utils.isNullOrEmpty(str)) {
            str.getClass();
            switch (str) {
                case "playlists":
                    str2 = "EgIQA_ABAQ%3D%3D";
                    break;
                case "music_playlists":
                case "music_artists":
                case "music_albums":
                case "music_songs":
                case "music_videos":
                    str2 = "";
                    break;
                case "videos":
                    str2 = "EgIQAfABAQ%3D%3D";
                    break;
                case "channels":
                    str2 = "EgIQAvABAQ%3D%3D";
                    break;
            }
        }
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(searchString, "query");
        if (!Utils.isNullOrEmpty(str2)) {
            prepareDesktopJsonBuilder.value(str2, "params");
        }
        this.initialData = YoutubeParsingHelper.getJsonPostResponse("search", Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization);
    }
}
