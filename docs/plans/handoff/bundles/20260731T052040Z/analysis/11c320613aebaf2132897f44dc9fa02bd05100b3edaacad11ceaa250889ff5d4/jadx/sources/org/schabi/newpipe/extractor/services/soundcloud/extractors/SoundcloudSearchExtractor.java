package org.schabi.newpipe.extractor.services.soundcloud.extractors;

import androidx.compose.ui.Modifier;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntUnaryOperator;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCSearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudSearchExtractor extends SearchExtractor {
    public JsonObject initialSearchObject;

    public static Page getNextPageFromCurrentUrl(String str, IntUnaryOperator intUnaryOperator) {
        int offsetFromUrl = getOffsetFromUrl(str);
        return new Page(str.replace(Modifier.CC.m(offsetFromUrl, "&offset="), "&offset=" + intUnaryOperator.applyAsInt(offsetFromUrl)));
    }

    public static int getOffsetFromUrl(String str) {
        try {
            return Integer.parseInt((String) Parser.compatParseMap(new URL(str).getQuery()).get("offset"));
        } catch (MalformedURLException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get offset from page URL", e);
            return 0;
        }
    }

    public final MultiInfoItemsCollector collectItems(JsonArray jsonArray) {
        JsonObject jsonObject;
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
        Iterator<E> it = jsonArray.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof JsonObject) {
                jsonObject = (JsonObject) next;
                String string = jsonObject.getString("kind", "");
                string.getClass();
                switch (string) {
                    case "user":
                        multiInfoItemsCollector.commit(new MediaCCCSearchExtractor.AnonymousClass1(2, jsonObject));
                        break;
                    case "track":
                        multiInfoItemsCollector.commit(new YoutubeReelInfoItemExtractor(jsonObject, 3));
                        break;
                    case "playlist":
                        multiInfoItemsCollector.commit(new YoutubePlaylistInfoItemExtractor(jsonObject, 2));
                        break;
                }
            }
        }
        return multiInfoItemsCollector;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return this.initialSearchObject.getInt(0, "total_results") > 10 ? new ListExtractor.InfoItemsPage(collectItems(this.initialSearchObject.getArray("collection")), getNextPageFromCurrentUrl(this.linkHandler.getUrl(), new SoundcloudSearchExtractor$$ExternalSyntheticLambda0(1))) : new ListExtractor.InfoItemsPage(collectItems(this.initialSearchObject.getArray("collection")), null);
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
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) this.downloader.get(page.getUrl(), null, this.service.getLocalization()).mHiddenViews);
            JsonArray array = jsonObject.getArray("collection");
            return getOffsetFromUrl(page.getUrl()) + 10 < jsonObject.getInt(0, "total_results") ? new ListExtractor.InfoItemsPage(collectItems(array), getNextPageFromCurrentUrl(page.getUrl(), new SoundcloudSearchExtractor$$ExternalSyntheticLambda0(0))) : new ListExtractor.InfoItemsPage(collectItems(array), null);
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e);
            return null;
        }
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
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) this.downloader.get(this.linkHandler.getUrl(), null, this.service.getLocalization()).mHiddenViews);
            this.initialSearchObject = jsonObject;
            if (jsonObject.getArray("collection").isEmpty()) {
                throw new SearchExtractor.NothingFoundException("Nothing found");
            }
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e);
        }
    }
}
