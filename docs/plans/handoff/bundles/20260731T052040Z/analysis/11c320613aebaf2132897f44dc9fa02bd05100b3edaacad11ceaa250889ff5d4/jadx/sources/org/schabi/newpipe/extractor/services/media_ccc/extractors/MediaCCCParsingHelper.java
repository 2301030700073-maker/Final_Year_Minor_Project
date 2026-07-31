package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonTokener;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MediaCCCParsingHelper {
    public static final Pattern LIVE_STREAM_ID_PATTERN = Pattern.compile("\\w+/\\w+");
    public static JsonArray liveStreams = null;

    public static List getImageListFromLogoImageUrl(String str) {
        if (Utils.isNullOrEmpty(str)) {
            return Collections.EMPTY_LIST;
        }
        Object[] objArr = {new Image(str, -1, -1, Image.ResolutionLevel.UNKNOWN)};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        return Owner.CC.m(obj, arrayList, obj, arrayList);
    }

    public static JsonArray getLiveStreams(CloseableKt closeableKt, Localization localization) {
        if (liveStreams == null) {
            try {
                try {
                    try {
                        liveStreams = (JsonArray) new JsonParser(new JsonTokener(new StringReader((String) closeableKt.get("https://streaming.media.ccc.de/streams/v2.json", null, localization).mHiddenViews))).parse(JsonArray.class);
                    } catch (ReCaptchaException e) {
                        e = e;
                        throw new ExtractionException("Could not get live stream JSON.", e);
                    }
                } catch (JsonParserException e2) {
                    throw new ExtractionException("Could not parse JSON.", e2);
                }
            } catch (IOException | ReCaptchaException e3) {
                e = e3;
            }
        }
        return liveStreams;
    }

    public static List getThumbnailsFromObject(JsonObject jsonObject, String str, String str2) {
        ArrayList arrayList = new ArrayList(2);
        String string = jsonObject.getString(str, null);
        if (!Utils.isNullOrEmpty(string)) {
            arrayList.add(new Image(string, -1, -1, Image.ResolutionLevel.MEDIUM));
        }
        String string2 = jsonObject.getString(str2, null);
        if (!Utils.isNullOrEmpty(string2)) {
            arrayList.add(new Image(string2, -1, -1, Image.ResolutionLevel.HIGH));
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
