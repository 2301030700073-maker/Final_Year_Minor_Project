package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.recyclerview.widget.ChildHelper;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonTokener;
import j$.net.URLEncoder;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeSuggestionExtractor extends Logger {
    @Override // org.koin.core.logger.Logger
    public final List suggestionList(String str) {
        StreamingService streamingService = (StreamingService) this.level;
        String countryCode = streamingService.getContentCountry().getCountryCode();
        Pattern pattern = Utils.M_PATTERN;
        Charset charset = StandardCharsets.UTF_8;
        String m = Owner.CC.m("https://suggestqueries-clients6.youtube.com/complete/search?client=youtube&ds=yt&gl=", URLEncoder.encode(countryCode, charset), "&q=", URLEncoder.encode(str, charset), "&xhr=t");
        HashMap hashMap = new HashMap();
        hashMap.put("Origin", Collections.singletonList("https://www.youtube.com"));
        hashMap.put("Referer", Collections.singletonList("https://www.youtube.com"));
        ChildHelper childHelper = Utility.downloader.get(m, hashMap, streamingService.getLocalization());
        String header = childHelper.getHeader("Content-Type");
        if (Utils.isNullOrEmpty(header) || !header.contains("application/json")) {
            throw new ExtractionException("Invalid response type (got \"" + header + "\", excepted a JSON response) (response code " + childHelper.mRemoveStatus + ")");
        }
        String str2 = (String) childHelper.mHiddenViews;
        if (str2.isEmpty()) {
            throw new ExtractionException("Empty response received");
        }
        try {
            JsonArray jsonArray = (JsonArray) new JsonParser(new JsonTokener(new StringReader(str2))).parse(JsonArray.class);
            jsonArray.getClass();
            JsonArray jsonArray2 = new JsonArray();
            Object obj = jsonArray.get(1);
            if (obj instanceof JsonArray) {
                jsonArray2 = (JsonArray) obj;
            }
            return (List) Collection.EL.stream(jsonArray2).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(23)).map(new Utils$$ExternalSyntheticLambda1(8)).map(new Utils$$ExternalSyntheticLambda1(9)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(24)).collect(Collectors.toUnmodifiableList());
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse JSON response", e);
            return null;
        }
    }
}
