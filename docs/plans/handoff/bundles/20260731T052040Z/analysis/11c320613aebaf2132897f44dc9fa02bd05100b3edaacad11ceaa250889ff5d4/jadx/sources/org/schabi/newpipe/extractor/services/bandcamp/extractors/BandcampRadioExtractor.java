package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.util.stream.Stream;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import kotlin.io.CloseableKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCLiveStreamKioskExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCParsingHelper;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCSearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor$$ExternalSyntheticLambda6;
import org.schabi.newpipe.extractor.services.youtube.extractors.kiosk.YoutubeTrendingExtractor$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampRadioExtractor extends KioskExtractor {
    public final /* synthetic */ int $r8$classId;
    public Object json;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BandcampRadioExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler, String str, int i) {
        super(streamingService, listLinkHandler, str);
        this.$r8$classId = i;
    }

    public ListExtractor.InfoItemsPage extractItems(JsonArray jsonArray) {
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 3);
        for (int i = 0; i < jsonArray.size(); i++) {
            JsonObject object = jsonArray.getObject(i);
            if (!object.isNull("album_title")) {
                streamInfoItemsCollector.commit(new YoutubePlaylistInfoItemExtractor(object, 1));
            }
        }
        JsonObject object2 = jsonArray.getObject(jsonArray.size() - 1);
        long j = object2.getLong("story_date", 0L);
        long j2 = object2.getLong("ntid", 0L);
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, new Page("https://bandcamp.com/api/mobile/24/feed_older_logged_out?story_groups=featured:" + j + ":" + object2.getString("story_type", null) + ":" + j2));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        int i = this.$r8$classId;
        StreamingService streamingService = this.service;
        int i2 = 0;
        switch (i) {
            case 0:
                StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
                JsonArray array = ((JsonObject) this.json).getArray("results");
                while (i2 < array.size()) {
                    streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeReelInfoItemExtractor(array.getObject(i2), 1));
                    i2++;
                }
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
            case 1:
                return extractItems(((JsonObject) this.json).getObject("feed_content").getObject("stories").getArray("featured"));
            case 2:
                JsonArray array2 = ((JsonObject) this.json).getArray("conferences");
                StreamInfoItemsCollector streamInfoItemsCollector2 = new StreamInfoItemsCollector(streamingService.serviceId, null, 1);
                while (i2 < array2.size()) {
                    streamInfoItemsCollector2.commit(new MediaCCCSearchExtractor.AnonymousClass1(1, array2.getObject(i2)));
                    i2++;
                }
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector2, null);
            case 3:
                StreamInfoItemsCollector streamInfoItemsCollector3 = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
                TimeAgoParser timeAgoParser = getTimeAgoParser();
                JsonObject jsonObject = (JsonObject) ((JsonObject) this.json).getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").streamAsJsonObjects().map(new Utils$$ExternalSyntheticLambda1(16)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(27)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(28)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(21));
                JsonObject object = jsonObject.getObject("content");
                boolean equals = RecordTag.m480m(jsonObject, "endpoint", "browseEndpoint", "params", "").equals("4gIOGgxtb3N0X3BvcHVsYXI%3D");
                if (object.containsKey("richGridRenderer")) {
                    object.getObject("richGridRenderer").getArray("contents").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(26)).map(new Utils$$ExternalSyntheticLambda1(11)).forEachOrdered(new YoutubeTrendingExtractor$$ExternalSyntheticLambda2(streamInfoItemsCollector3, timeAgoParser, 0));
                } else if (object.containsKey("sectionListRenderer")) {
                    Stream map = object.getObject("sectionListRenderer").getArray("contents").streamAsJsonObjects().flatMap(new Utils$$ExternalSyntheticLambda1(12)).map(new Utils$$ExternalSyntheticLambda1(13));
                    (equals ? map.findFirst().stream() : map.filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(29))).flatMap(new Utils$$ExternalSyntheticLambda1(14)).map(new Utils$$ExternalSyntheticLambda1(15)).forEachOrdered(new YoutubeTrendingExtractor$$ExternalSyntheticLambda2(streamInfoItemsCollector3, timeAgoParser, 2));
                }
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector3, null);
            default:
                StreamInfoItemsCollector streamInfoItemsCollector4 = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
                for (int i3 = 0; i3 < ((JsonArray) this.json).size(); i3++) {
                    JsonObject object2 = ((JsonArray) this.json).getObject(i3);
                    if (object2.getBoolean("isCurrentlyStreaming")) {
                        JsonArray array3 = object2.getArray("groups");
                        for (int i4 = 0; i4 < array3.size(); i4++) {
                            String string = array3.getObject(i4).getString("group", null);
                            JsonArray array4 = array3.getObject(i4).getArray("rooms");
                            for (int i5 = 0; i5 < array4.size(); i5++) {
                                streamInfoItemsCollector4.commit((StreamInfoItemExtractor) new MediaCCCLiveStreamKioskExtractor(object2, string, array4.getObject(i5)));
                            }
                        }
                    }
                }
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector4, null);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "Radio";
            case 1:
                return "Featured";
            case 2:
                return ((JsonObject) this.json).getString("Conferences", null);
            case 3:
                JsonObject object = ((JsonObject) this.json).getObject("header");
                String textAtKey = object.containsKey("feedTabbedHeaderRenderer") ? YoutubeParsingHelper.getTextAtKey(object.getObject("feedTabbedHeaderRenderer"), "title") : object.containsKey("c4TabbedHeaderRenderer") ? YoutubeParsingHelper.getTextAtKey(object.getObject("c4TabbedHeaderRenderer"), "title") : object.containsKey("pageHeaderRenderer") ? YoutubeParsingHelper.getTextAtKey(object.getObject("pageHeaderRenderer"), "pageTitle") : null;
                if (!Utils.isNullOrEmpty(textAtKey)) {
                    return textAtKey;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get Trending name");
                return null;
            default:
                return "live";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m("Could not parse Bandcamp featured API response", r3);
     */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage getPage(org.schabi.newpipe.extractor.Page r4) {
        /*
            r3 = this;
            int r0 = r3.$r8$classId
            r1 = 0
            switch(r0) {
                case 0: goto L3f;
                case 1: goto Lf;
                case 2: goto Lc;
                case 3: goto L9;
                default: goto L6;
            }
        L6:
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r3 = org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage.EMPTY
            return r3
        L9:
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r3 = org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage.EMPTY
            return r3
        Lc:
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r3 = org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage.EMPTY
            return r3
        Lf:
            okhttp3.ConnectionPool r0 = com.grack.nanojson.JsonParser.object()     // Catch: com.grack.nanojson.JsonParserException -> L39
            kotlin.io.CloseableKt r2 = r3.downloader     // Catch: com.grack.nanojson.JsonParserException -> L39
            java.lang.String r4 = r4.getUrl()     // Catch: com.grack.nanojson.JsonParserException -> L39
            androidx.recyclerview.widget.ChildHelper r4 = r2.get(r4)     // Catch: com.grack.nanojson.JsonParserException -> L39
            java.io.Serializable r4 = r4.mHiddenViews     // Catch: com.grack.nanojson.JsonParserException -> L39
            java.lang.String r4 = (java.lang.String) r4     // Catch: com.grack.nanojson.JsonParserException -> L39
            java.lang.Object r4 = r0.from(r4)     // Catch: com.grack.nanojson.JsonParserException -> L39
            com.grack.nanojson.JsonObject r4 = (com.grack.nanojson.JsonObject) r4     // Catch: com.grack.nanojson.JsonParserException -> L39
            java.lang.String r0 = "stories"
            com.grack.nanojson.JsonObject r4 = r4.getObject(r0)
            java.lang.String r0 = "featured"
            com.grack.nanojson.JsonArray r4 = r4.getArray(r0)
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r1 = r3.extractItems(r4)
            goto L3f
        L39:
            r3 = move-exception
            java.lang.String r4 = "Could not parse Bandcamp featured API response"
            org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m(r4, r3)
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRadioExtractor.getPage(org.schabi.newpipe.extractor.Page):org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        int i = this.$r8$classId;
        CloseableKt closeableKt2 = this.downloader;
        StreamingService streamingService = this.service;
        switch (i) {
            case 0:
                try {
                    this.json = (JsonObject) JsonParser.object().from((String) closeableKt2.get("https://bandcamp.com/api/bcweekly/3/list").mHiddenViews);
                    return;
                } catch (JsonParserException e) {
                    throw new ExtractionException("Could not parse Bandcamp Radio API response", e);
                }
            case 1:
                try {
                    this.json = (JsonObject) JsonParser.object().from((String) closeableKt2.postWithContentTypeJson("https://bandcamp.com/api/mobile/24/bootstrap_data", Collections.EMPTY_MAP, "{\"platform\":\"\",\"version\":0}".getBytes(StandardCharsets.UTF_8)).mHiddenViews);
                    return;
                } catch (JsonParserException e2) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not parse Bandcamp featured API response", e2);
                    return;
                }
            case 2:
                try {
                    this.json = (JsonObject) JsonParser.object().from((String) closeableKt.get(((ListLinkHandler) this.linkHandler).getUrl(), null, streamingService.getLocalization()).mHiddenViews);
                    return;
                } catch (JsonParserException e3) {
                    throw new ExtractionException("Could not parse json.", e3);
                }
            case 3:
                JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(streamingService.getLocalization(), streamingService.getContentCountry());
                prepareDesktopJsonBuilder.value("FEtrending", "browseId");
                prepareDesktopJsonBuilder.value("4gIOGgxtb3N0X3BvcHVsYXI%3D", "params");
                this.json = YoutubeParsingHelper.getJsonPostResponse("browse", Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), streamingService.getLocalization());
                return;
            default:
                this.json = MediaCCCParsingHelper.getLiveStreams(closeableKt, streamingService.getLocalization());
                return;
        }
    }
}
