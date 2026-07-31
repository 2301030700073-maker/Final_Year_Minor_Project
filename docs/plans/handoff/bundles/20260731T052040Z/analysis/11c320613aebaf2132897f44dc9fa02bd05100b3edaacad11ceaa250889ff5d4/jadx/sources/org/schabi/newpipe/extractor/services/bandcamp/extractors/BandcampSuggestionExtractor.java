package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonStringWriter;
import j$.net.URLEncoder;
import j$.util.stream.Collectors;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.ConnectionPool;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampSuggestionExtractor extends Logger {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BandcampSuggestionExtractor(StreamingService streamingService, int i) {
        super(streamingService);
        this.$r8$classId = i;
    }

    @Override // org.koin.core.logger.Logger
    public final List suggestionList(String str) {
        switch (this.$r8$classId) {
            case 0:
                DownloaderImpl downloaderImpl = Utility.downloader;
                try {
                    ConnectionPool object = JsonParser.object();
                    Map map = Collections.EMPTY_MAP;
                    JsonStringWriter jsonStringWriter = new JsonStringWriter();
                    jsonStringWriter.object();
                    jsonStringWriter.preValue("fan_id");
                    jsonStringWriter.raw(JsonStringWriter.NULL);
                    jsonStringWriter.value("full_page", false);
                    jsonStringWriter.value("search_filter", "");
                    jsonStringWriter.value("search_text", str);
                    jsonStringWriter.end();
                    return (List) ((JsonObject) object.from((String) downloaderImpl.postWithContentTypeJson("https://bandcamp.com/api/bcsearch_public_api/1/autocomplete_elastic", map, jsonStringWriter.done().getBytes(StandardCharsets.UTF_8)).mHiddenViews)).getObject(TtmlNode.TEXT_EMPHASIS_AUTO).getArray("results").streamAsJsonObjects().map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(6)).distinct().collect(Collectors.toList());
                } catch (JsonParserException unused) {
                    return Collections.EMPTY_LIST;
                }
            case 1:
                return Collections.EMPTY_LIST;
            default:
                ArrayList arrayList = new ArrayList();
                DownloaderImpl downloaderImpl2 = Utility.downloader;
                Pattern pattern = Utils.M_PATTERN;
                try {
                    Iterator<E> it = ((JsonObject) JsonParser.object().from((String) downloaderImpl2.get(Owner.CC.m("https://api-v2.soundcloud.com/search/queries?q=", URLEncoder.encode(str, StandardCharsets.UTF_8), "&client_id=", SoundcloudParsingHelper.clientId(), "&limit=10"), null, ((StreamingService) this.level).getLocalization()).mHiddenViews)).getArray("collection").iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (next instanceof JsonObject) {
                            arrayList.add(((JsonObject) next).getString("query", null));
                        }
                    }
                    return arrayList;
                } catch (JsonParserException e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e);
                    return null;
                }
        }
    }
}
