package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.ChildHelper;
import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.stream.Collectors;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCRecentKiosk$$ExternalSyntheticLambda4;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.ImageSuffix;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeMixPlaylistExtractor extends SearchExtractor {
    public static final List IMAGE_URL_SUFFIXES_AND_RESOLUTIONS;
    public String cookieValue;
    public JsonObject initialData;
    public JsonObject playlistData;

    static {
        ImageSuffix imageSuffix = new ImageSuffix("default.jpg", 90, 120, Image.ResolutionLevel.LOW);
        Image.ResolutionLevel resolutionLevel = Image.ResolutionLevel.MEDIUM;
        ImageSuffix imageSuffix2 = new ImageSuffix("mqdefault.jpg", 180, 320, resolutionLevel);
        ImageSuffix imageSuffix3 = new ImageSuffix("hqdefault.jpg", 360, 480, resolutionLevel);
        int i = 0;
        Object[] objArr = {imageSuffix, imageSuffix2, imageSuffix3};
        ArrayList arrayList = new ArrayList(3);
        while (i < 3) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        IMAGE_URL_SUFFIXES_AND_RESOLUTIONS = DesugarCollections.unmodifiableList(arrayList);
    }

    public static List getThumbnailsFromVideoId(String str) {
        return (List) Collection.EL.stream(IMAGE_URL_SUFFIXES_AND_RESOLUTIONS).map(new ListHelper$$ExternalSyntheticLambda3(Modifier.CC.m("https://i.ytimg.com/vi/", str, "/"), 6)).collect(Collectors.toUnmodifiableList());
    }

    public final void collectStreamsFrom(StreamInfoItemsCollector streamInfoItemsCollector, List list) {
        if (list == null) {
            return;
        }
        new JsonArray(list).streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda19(getTimeAgoParser(), 1)).forEachOrdered(new MediaCCCRecentKiosk$$ExternalSyntheticLambda4(streamInfoItemsCollector, 1));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        return Description.EMPTY_DESCRIPTION;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        collectStreamsFrom(streamInfoItemsCollector, this.playlistData.getArray("contents"));
        HashMap hashMap = new HashMap();
        hashMap.put("VISITOR_INFO1_LIVE", this.cookieValue);
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, getNextPageFrom(this.playlistData, hashMap));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        String textAtKey = YoutubeParsingHelper.getTextAtKey(this.playlistData, "title");
        if (!Utils.isNullOrEmpty(textAtKey)) {
            return textAtKey;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist name");
        return null;
    }

    public final Page getNextPageFrom(JsonObject jsonObject, Map map) {
        JsonObject jsonObject2 = (JsonObject) jsonObject.getArray("contents").get(jsonObject.getArray("contents").size() - 1);
        if (jsonObject2 == null || jsonObject2.getObject("playlistPanelVideoRenderer") == null) {
            throw new ExtractionException("Could not extract next page url");
        }
        JsonObject object = jsonObject2.getObject("playlistPanelVideoRenderer").getObject("navigationEndpoint").getObject("watchEndpoint");
        String string = object.getString("playlistId", null);
        String string2 = object.getString("videoId", null);
        int i = object.getInt(0, "index");
        String string3 = object.getString("params", null);
        StreamingService streamingService = this.service;
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(streamingService.getLocalization(), streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(string2, "videoId");
        prepareDesktopJsonBuilder.value(string, "playlistId");
        prepareDesktopJsonBuilder.value(Integer.valueOf(i), "playlistIndex");
        prepareDesktopJsonBuilder.value(string3, "params");
        return new Page("https://www.youtube.com/youtubei/v1/next?prettyPrint=false", null, null, map, Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        if (!page.getCookies().containsKey("VISITOR_INFO1_LIVE")) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cookie 'VISITOR_INFO1_LIVE' is missing");
            return null;
        }
        StreamingService streamingService = this.service;
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
        HashMap youTubeHeaders = YoutubeParsingHelper.getYouTubeHeaders();
        JsonObject m = RecordTag.m(Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(this.downloader.postWithContentTypeJson(page.getUrl(), youTubeHeaders, page.getBody(), streamingService.getLocalization()))), "contents", "twoColumnWatchNextResults", "playlist", "playlist");
        JsonArray array = m.getArray("contents");
        collectStreamsFrom(streamInfoItemsCollector, array.subList(m.getInt(0, "currentIndex") + 1, array.size()));
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, getNextPageFrom(m, page.getCookies()));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final PlaylistInfo.PlaylistType getPlaylistType() {
        return YoutubeParsingHelper.extractPlaylistTypeFromPlaylistId(this.playlistData.getString("playlistId", null));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final long getStreamCount() {
        return -2L;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        try {
            return getThumbnailsFromVideoId(YoutubeParsingHelper.extractVideoIdFromMixId(this.playlistData.getString("playlistId", null)));
        } catch (Exception e) {
            try {
                return getThumbnailsFromVideoId(this.initialData.getObject("currentVideoEndpoint").getObject("watchEndpoint").getString("videoId", null));
            } catch (Exception unused) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist thumbnails", e);
                return null;
            }
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        return "YouTube";
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        LinkHandler linkHandler = this.linkHandler;
        URL stringToURL = Utils.stringToURL(linkHandler.getUrl());
        String id = linkHandler.getId();
        String queryValue = Utils.getQueryValue(stringToURL, "v");
        String queryValue2 = Utils.getQueryValue(stringToURL, "index");
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(id, "playlistId");
        if (queryValue != null) {
            prepareDesktopJsonBuilder.value(queryValue, "videoId");
        }
        if (queryValue2 != null) {
            prepareDesktopJsonBuilder.value(Integer.valueOf(Integer.parseInt(queryValue2)), "playlistIndex");
        }
        byte[] bytes = Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8);
        ChildHelper postWithContentTypeJson = this.downloader.postWithContentTypeJson("https://www.youtube.com/youtubei/v1/next?prettyPrint=false", YoutubeParsingHelper.getYouTubeHeaders(), bytes, localization);
        JsonObject jsonObject = Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(postWithContentTypeJson));
        this.initialData = jsonObject;
        JsonObject m = RecordTag.m(jsonObject, "contents", "twoColumnWatchNextResults", "playlist", "playlist");
        this.playlistData = m;
        if (Utils.isNullOrEmpty(m)) {
            throw new ContentNotAvailableException("Consent is required in some countries to view Mix playlists", new ExtractionException("Could not get playlistData"));
        }
        List<String> list = (List) ((Map) postWithContentTypeJson.mBucket).get("set-cookie");
        String str = "";
        if (list != null) {
            for (String str2 : list) {
                int indexOf = str2.indexOf("VISITOR_INFO1_LIVE");
                if (indexOf != -1) {
                    str = str2.substring(indexOf + 19, str2.indexOf(";", indexOf));
                }
            }
        }
        this.cookieValue = str;
    }
}
