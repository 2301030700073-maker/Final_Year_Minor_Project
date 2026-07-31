package org.schabi.newpipe.extractor.services.youtube.extractors.kiosk;

import androidx.work.OperationKt;
import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import java.nio.charset.StandardCharsets;
import kotlin.io.CloseableKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor$$ExternalSyntheticLambda6;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeLiveExtractor extends KioskExtractor {
    public final String browseId;
    public final String params;
    public TokenData responseData;

    public YoutubeLiveExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler, String str, String str2, String str3) {
        super(streamingService, listLinkHandler, str);
        this.browseId = str2;
        this.params = str3;
    }

    public final ListExtractor.InfoItemsPage collectStreamItems(JsonArray jsonArray, String str) {
        StreamingService streamingService = this.service;
        Page page = null;
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
        if (!jsonArray.isEmpty()) {
            jsonArray.streamAsJsonObjects().forEachOrdered(new YoutubeTrendingExtractor$$ExternalSyntheticLambda2(streamInfoItemsCollector, getTimeAgoParser(), 1));
            JsonObject object = jsonArray.getObject(jsonArray.size() - 1);
            if (object.containsKey("continuationItemRenderer")) {
                JsonObject object2 = object.getObject("continuationItemRenderer");
                if (!Utils.isNullOrEmpty(object2)) {
                    String m480m = RecordTag.m480m(object2, "continuationEndpoint", "continuationCommand", "token", (String) null);
                    TokenData ofWebClient = TokenData.ofWebClient();
                    Dispatcher dispatcher = (Dispatcher) ofWebClient.value;
                    dispatcher.readyAsyncCalls = YoutubeParsingHelper.getClientVersion();
                    dispatcher.runningSyncCalls = str;
                    JsonBuilder prepareJsonBuilder = YoutubeParsingHelper.prepareJsonBuilder(streamingService.getLocalization(), streamingService.getContentCountry(), ofWebClient);
                    prepareJsonBuilder.value(m480m, "continuation");
                    page = new Page("https://www.youtube.com/youtubei/v1/browse?prettyPrint=false", str, null, null, Jsoup.string((JsonObject) prepareJsonBuilder.root).getBytes(StandardCharsets.UTF_8));
                }
            }
        }
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, page);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        JsonObject object = ((JsonObject) this.responseData.builder).getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").getObject(0).getObject("tabRenderer").getObject("content");
        return collectStreamItems(object.containsKey("sectionListRenderer") ? object.getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer").getArray("contents").getObject(0).getObject("shelfRenderer").getObject("content").getObject("gridRenderer").getArray("items") : object.containsKey("richGridRenderer") ? object.getObject("richGridRenderer").getArray("contents") : new JsonArray(), ((JsonObject) this.responseData.builder).getObject("responseContext").getString("visitorData", null));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return OperationKt.getChannelName(OperationKt.getChannelHeader((JsonObject) this.responseData.builder), null, (JsonObject) this.responseData.builder);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (page != null && page.getBody() != null) {
            return collectStreamItems(((JsonObject) YoutubeParsingHelper.getJsonPostResponse("browse", page.getBody(), this.service.getLocalization()).getArray("onResponseReceivedActions").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(25)).map(new Utils$$ExternalSyntheticLambda1(10)).findFirst().orElse(new JsonObject())).getArray("continuationItems"), page.getId());
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page is null or doesn't contain a body");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        this.responseData = OperationKt.getChannelResponse(this.browseId, this.params, streamingService.getContentCountry(), localization);
    }
}
