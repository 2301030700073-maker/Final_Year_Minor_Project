package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonStringWriter;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeMusicSearchExtractor extends SearchExtractor {
    public List cachedItemSectionRendererContents;
    public JsonObject initialData;

    public static Page getNextPageFrom(JsonArray jsonArray) {
        if (Utils.isNullOrEmpty(jsonArray)) {
            return null;
        }
        String string = jsonArray.getObject(0).getObject("nextContinuationData").getString("continuation", null);
        return new Page(Owner.CC.m("https://music.youtube.com/youtubei/v1/search?ctoken=", string, "&continuation=", string, "&prettyPrint=false"));
    }

    public final void collectMusicStreamsFrom(MultiInfoItemsCollector multiInfoItemsCollector, JsonArray jsonArray) {
        jsonArray.streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(11)).filter(new JsonArray$$ExternalSyntheticLambda0(25)).forEachOrdered(new PrettyTime$$ExternalSyntheticLambda0((String) getLinkHandler().getContentFilters().get(0), multiInfoItemsCollector, 6));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
        Iterator<E> it = ((JsonArray) Parser.getInstanceOf(((JsonArray) Parser.getInstanceOf(this.initialData, "contents.tabbedSearchResultsRenderer.tabs", JsonArray.class)).getObject(0), "tabRenderer.content.sectionListRenderer.contents", JsonArray.class)).iterator();
        Page page = null;
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.containsKey("musicShelfRenderer")) {
                JsonObject object = jsonObject.getObject("musicShelfRenderer");
                collectMusicStreamsFrom(multiInfoItemsCollector, object.getArray("contents"));
                page = getNextPageFrom(object.getArray("continuations"));
            }
        }
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, page);
    }

    public final List getItemSectionRendererContents() {
        List list = this.cachedItemSectionRendererContents;
        if (list != null) {
            return list;
        }
        List list2 = (List) this.initialData.getObject("contents").getObject("tabbedSearchResultsRenderer").getArray("tabs").getObject(0).getObject("tabRenderer").getObject("content").getObject("sectionListRenderer").getArray("contents").streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(12)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(1)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(13)).collect(Collectors.toList());
        this.cachedItemSectionRendererContents = list2;
        return list2;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getMetaInfo() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        StreamingService streamingService = this.service;
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(streamingService.serviceId);
        JsonStringWriter jsonStringWriter = new JsonStringWriter();
        jsonStringWriter.object();
        jsonStringWriter.object("context");
        jsonStringWriter.object("client");
        jsonStringWriter.value("clientName", "WEB_REMIX");
        jsonStringWriter.value("clientVersion", YoutubeParsingHelper.getYoutubeMusicClientVersion());
        jsonStringWriter.value("hl", "en-GB");
        jsonStringWriter.value("gl", streamingService.getContentCountry().getCountryCode());
        jsonStringWriter.value("platform", "DESKTOP");
        jsonStringWriter.value(0, "utcOffsetMinutes");
        jsonStringWriter.end();
        jsonStringWriter.object("request");
        jsonStringWriter.array("internalExperimentFlags");
        jsonStringWriter.end();
        jsonStringWriter.value("useSsl", true);
        jsonStringWriter.end();
        jsonStringWriter.object("user");
        jsonStringWriter.value("lockedSafetyMode", false);
        jsonStringWriter.end();
        jsonStringWriter.end();
        jsonStringWriter.end();
        byte[] bytes = jsonStringWriter.done().getBytes(StandardCharsets.UTF_8);
        String url = page.getUrl();
        HashMap hashMap = new HashMap(YoutubeParsingHelper.getOriginReferrerHeaders("https://music.youtube.com"));
        hashMap.putAll(YoutubeParsingHelper.getClientHeaders("67", YoutubeParsingHelper.youtubeMusicClientVersion));
        try {
            JsonObject object = ((JsonObject) JsonParser.object().from(YoutubeParsingHelper.getValidJsonResponseBody(this.downloader.postWithContentTypeJson(url, hashMap, bytes)))).getObject("continuationContents").getObject("musicShelfContinuation");
            collectMusicStreamsFrom(multiInfoItemsCollector, object.getArray("contents"));
            return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, getNextPageFrom(object.getArray("continuations")));
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse JSON", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final String getSearchSuggestion() {
        for (JsonObject jsonObject : getItemSectionRendererContents()) {
            JsonObject object = jsonObject.getObject("didYouMeanRenderer");
            if (!object.isEmpty()) {
                return YoutubeParsingHelper.getTextFromObject(object.getObject("correctedQuery"), false);
            }
            JsonObject object2 = jsonObject.getObject("showingResultsForRenderer");
            if (!object2.isEmpty()) {
                return (String) Parser.getInstanceOf(object2, "correctedQueryEndpoint.searchEndpoint.query", String.class);
            }
        }
        return "";
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final boolean isCorrectedSearch() {
        return Collection.EL.stream(getItemSectionRendererContents()).anyMatch(new JsonArray$$ExternalSyntheticLambda0(29));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String str;
        String str2 = (String) getLinkHandler().getContentFilters().get(0);
        str2.getClass();
        switch (str2) {
            case "music_playlists":
                str = "Eg-KAQwIABAAGAAgACgBMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_artists":
                str = "Eg-KAQwIABAAGAAgASgAMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_albums":
                str = "Eg-KAQwIABAAGAEgACgAMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_songs":
                str = "Eg-KAQwIARAAGAAgACgAMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_videos":
                str = "Eg-KAQwIABABGAAgACgAMABqChAEEAUQAxAKEAk%3D";
                break;
            default:
                str = null;
                break;
        }
        JsonStringWriter jsonStringWriter = new JsonStringWriter();
        jsonStringWriter.object();
        jsonStringWriter.object("context");
        jsonStringWriter.object("client");
        jsonStringWriter.value("clientName", "WEB_REMIX");
        jsonStringWriter.value("clientVersion", YoutubeParsingHelper.getYoutubeMusicClientVersion());
        jsonStringWriter.value("hl", "en-GB");
        jsonStringWriter.value("gl", this.service.getContentCountry().getCountryCode());
        jsonStringWriter.value("platform", "DESKTOP");
        jsonStringWriter.value(0, "utcOffsetMinutes");
        jsonStringWriter.end();
        jsonStringWriter.object("request");
        jsonStringWriter.array("internalExperimentFlags");
        jsonStringWriter.end();
        jsonStringWriter.value("useSsl", true);
        jsonStringWriter.end();
        jsonStringWriter.object("user");
        jsonStringWriter.value("lockedSafetyMode", false);
        jsonStringWriter.end();
        jsonStringWriter.end();
        jsonStringWriter.value("query", getLinkHandler().getSearchString());
        jsonStringWriter.value("params", str);
        jsonStringWriter.end();
        byte[] bytes = jsonStringWriter.done().getBytes(StandardCharsets.UTF_8);
        HashMap hashMap = new HashMap(YoutubeParsingHelper.getOriginReferrerHeaders("https://music.youtube.com"));
        hashMap.putAll(YoutubeParsingHelper.getClientHeaders("67", YoutubeParsingHelper.youtubeMusicClientVersion));
        try {
            this.initialData = (JsonObject) JsonParser.object().from(YoutubeParsingHelper.getValidJsonResponseBody(this.downloader.postWithContentTypeJson("https://music.youtube.com/youtubei/v1/search?prettyPrint=false", hashMap, bytes)));
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse JSON", e);
        }
    }
}
