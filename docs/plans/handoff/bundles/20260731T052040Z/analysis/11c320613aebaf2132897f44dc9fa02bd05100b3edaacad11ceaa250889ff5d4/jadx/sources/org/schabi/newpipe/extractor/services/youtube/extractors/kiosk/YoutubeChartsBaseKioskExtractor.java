package org.schabi.newpipe.extractor.services.youtube.extractors.kiosk;

import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.RulerTrackingMap;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import kotlin.io.CloseableKt;
import okhttp3.Dispatcher;
import org.jsoup.Jsoup;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCRecentKiosk$$ExternalSyntheticLambda4;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeChartsBaseKioskExtractor extends KioskExtractor {
    public static final Set YT_CHARTS_SUPPORTED_COUNTRY_CODES;
    public JsonObject browseResponse;
    public final String chartType;

    static {
        String[] strArr = {"AE", "AR", "AT", "AU", "BE", "BO", "BR", "CA", "CH", "CL", "CO", "CR", "CZ", "DE", "DK", "DO", "EC", "EE", "EG", "ES", "FI", "FR", "GB", "GT", "HN", "HU", "ID", "IE", "IL", "IN", "IS", "IT", "JP", "KE", "KR", "LU", "MX", "NG", "NI", "NL", "NO", "NZ", "PA", "PE", "PL", "PT", "PY", "RO", "RS", "RU", "SA", "SE", "SV", "TR", "TZ", "UA", "UG", "US", "UY", "ZA", "ZW"};
        HashSet hashSet = new HashSet(61);
        for (int i = 0; i < 61; i++) {
            String str = strArr[i];
            Objects.requireNonNull(str);
            if (!hashSet.add(str)) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(str, "duplicate element: ");
                return;
            }
        }
        YT_CHARTS_SUPPORTED_COUNTRY_CODES = DesugarCollections.unmodifiableSet(hashSet);
    }

    public YoutubeChartsBaseKioskExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler, String str, String str2) {
        super(streamingService, listLinkHandler, str);
        this.chartType = str2;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        JsonArray array = this.browseResponse.getObject("contents").getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("musicAnalyticsSectionRenderer").getObject("content").getArray("videos").getObject(0).getArray("videoViews");
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        array.streamAsJsonObjects().forEachOrdered(new MediaCCCRecentKiosk$$ExternalSyntheticLambda4(streamInfoItemsCollector, 2));
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        return ListExtractor.InfoItemsPage.EMPTY;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public void onFetchPage(CloseableKt closeableKt) {
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        ContentCountry contentCountry = streamingService.getContentCountry();
        Dispatcher dispatcher = new Dispatcher("WEB_MUSIC_ANALYTICS", "2.0", "31", null);
        JsonBuilder prepareJsonBuilder = YoutubeParsingHelper.prepareJsonBuilder(streamingService.getLocalization(), contentCountry, new TokenData(dispatcher, new RulerTrackingMap(-1, null, null, null, null, null), 12));
        prepareJsonBuilder.value("FEmusic_analytics_charts_home", "browseId");
        prepareJsonBuilder.value(Owner.CC.m("perspective=CHART_DETAILS&chart_params_country_code=", contentCountry.getCountryCode(), "&chart_params_chart_type=", this.chartType), "query");
        byte[] bytes = Jsoup.string((JsonObject) prepareJsonBuilder.root).getBytes(StandardCharsets.UTF_8);
        HashMap hashMap = new HashMap(YoutubeParsingHelper.getOriginReferrerHeaders("https://charts.youtube.com"));
        hashMap.putAll(YoutubeParsingHelper.getClientHeaders("31", (String) dispatcher.readyAsyncCalls));
        this.browseResponse = Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(this.downloader.postWithContentTypeJson("https://charts.youtube.com/youtubei/v1/browse?alt=json&prettyPrint=false", hashMap, bytes, localization)));
    }
}
