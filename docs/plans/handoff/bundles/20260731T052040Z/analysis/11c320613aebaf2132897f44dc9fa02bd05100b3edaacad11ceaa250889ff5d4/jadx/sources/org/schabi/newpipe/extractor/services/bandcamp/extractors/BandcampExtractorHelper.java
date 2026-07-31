package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonStringWriter;
import j$.time.DateTimeException;
import j$.time.ZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.ConnectionPool;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.utils.ImageSuffix;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BandcampExtractorHelper {
    public static final List IMAGE_URL_SUFFIXES_AND_RESOLUTIONS;

    static {
        Image.ResolutionLevel resolutionLevel = Image.ResolutionLevel.HIGH;
        ImageSuffix imageSuffix = new ImageSuffix("10.jpg", -1, 1200, resolutionLevel);
        Image.ResolutionLevel resolutionLevel2 = Image.ResolutionLevel.LOW;
        ImageSuffix imageSuffix2 = new ImageSuffix("101.jpg", 90, -1, resolutionLevel2);
        Image.ResolutionLevel resolutionLevel3 = Image.ResolutionLevel.MEDIUM;
        ImageSuffix imageSuffix3 = new ImageSuffix("170.jpg", 422, -1, resolutionLevel3);
        ImageSuffix imageSuffix4 = new ImageSuffix("171.jpg", 646, -1, resolutionLevel3);
        ImageSuffix imageSuffix5 = new ImageSuffix("20.jpg", -1, 1024, resolutionLevel);
        ImageSuffix imageSuffix6 = new ImageSuffix("200.jpg", 420, -1, resolutionLevel3);
        ImageSuffix imageSuffix7 = new ImageSuffix("201.jpg", 280, -1, resolutionLevel3);
        ImageSuffix imageSuffix8 = new ImageSuffix("202.jpg", 140, -1, resolutionLevel2);
        ImageSuffix imageSuffix9 = new ImageSuffix("204.jpg", 360, -1, resolutionLevel3);
        ImageSuffix imageSuffix10 = new ImageSuffix("205.jpg", PsExtractor.VIDEO_STREAM_MASK, -1, resolutionLevel3);
        ImageSuffix imageSuffix11 = new ImageSuffix("206.jpg", 180, -1, resolutionLevel3);
        ImageSuffix imageSuffix12 = new ImageSuffix("207.jpg", 120, -1, resolutionLevel2);
        ImageSuffix imageSuffix13 = new ImageSuffix("43.jpg", 100, -1, resolutionLevel2);
        ImageSuffix imageSuffix14 = new ImageSuffix("44.jpg", 200, -1, resolutionLevel3);
        ImageSuffix[] imageSuffixArr = {imageSuffix, imageSuffix2, imageSuffix3, imageSuffix4, imageSuffix5, imageSuffix6, imageSuffix7, imageSuffix8, imageSuffix9, imageSuffix10, imageSuffix11, imageSuffix12, imageSuffix13, imageSuffix14};
        ArrayList arrayList = new ArrayList(14);
        for (int i = 0; i < 14; i++) {
            ImageSuffix imageSuffix15 = imageSuffixArr[i];
            Objects.requireNonNull(imageSuffix15);
            arrayList.add(imageSuffix15);
        }
        IMAGE_URL_SUFFIXES_AND_RESOLUTIONS = DesugarCollections.unmodifiableList(arrayList);
    }

    public static JsonObject getArtistDetails(String str) {
        ConnectionPool object;
        DownloaderImpl downloaderImpl;
        Map map;
        try {
            object = JsonParser.object();
            downloaderImpl = Utility.downloader;
            map = Collections.EMPTY_MAP;
        } catch (JsonParserException | IOException | ReCaptchaException e) {
            e = e;
        }
        try {
            JsonStringWriter jsonStringWriter = new JsonStringWriter();
            jsonStringWriter.object();
            jsonStringWriter.value("band_id", str);
            jsonStringWriter.end();
            return (JsonObject) object.from((String) downloaderImpl.postWithContentTypeJson("https://bandcamp.com/api/mobile/22/band_details", map, jsonStringWriter.done().getBytes(StandardCharsets.UTF_8)).mHiddenViews);
        } catch (JsonParserException e2) {
            e = e2;
            Utils$$ExternalSyntheticBUOutline0.m("Could not download band details", e);
            return null;
        } catch (ReCaptchaException e3) {
            e = e3;
            Utils$$ExternalSyntheticBUOutline0.m("Could not download band details", e);
            return null;
        }
    }

    public static List getImagesFromImageId(long j, boolean z) {
        if (j == 0) {
            return Collections.EMPTY_LIST;
        }
        return (List) Collection.EL.stream(IMAGE_URL_SUFFIXES_AND_RESOLUTIONS).map(new ListHelper$$ExternalSyntheticLambda3("https://f4.bcbits.com/img/" + (z ? 'a' : "") + j + "_", 1)).collect(Collectors.toUnmodifiableList());
    }

    public static List getImagesFromImageUrl(String str) {
        if (Utils.isNullOrEmpty(str)) {
            return Collections.EMPTY_LIST;
        }
        return (List) Collection.EL.stream(IMAGE_URL_SUFFIXES_AND_RESOLUTIONS).map(new ListHelper$$ExternalSyntheticLambda3(str.replaceFirst("_\\d+\\.\\w+", "_"), 1)).collect(Collectors.toUnmodifiableList());
    }

    public static List getImagesFromSearchResult(Element element) {
        return getImagesFromImageUrl((String) Collection.EL.stream(element.getElementsByClass("art")).flatMap(new Nodes$$ExternalSyntheticLambda0(27)).map(new Nodes$$ExternalSyntheticLambda0(28)).filter(new JsonArray$$ExternalSyntheticLambda0(6)).findFirst().orElse(""));
    }

    public static String getStreamUrlFromIds(long j, String str, long j2) {
        try {
            return Utils.replaceHttpWithHttps(((JsonObject) JsonParser.object().from((String) Utility.downloader.get("https://bandcamp.com/api/mobile/22/tralbum_details?band_id=" + j + "&tralbum_id=" + j2 + "&tralbum_type=" + str.charAt(0)).mHiddenViews)).getString("bandcamp_url", null));
        } catch (JsonParserException | IOException | ReCaptchaException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Ids could not be translated to URL", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isArtistDomain(String str) {
        if (str.toLowerCase().matches("https?://.+\\.bandcamp\\.com(/.*)?")) {
            return true;
        }
        if (!str.toLowerCase().matches("https?://bandcamp\\.com(/.*)?")) {
            try {
                return ((Element) ((Element) Jsoup.parse((String) Utility.downloader.get(Utils.replaceHttpWithHttps(str)).mHiddenViews).getElementsByClass("cart-wrapper").get(0)).getElementsByTag(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY).get(0)).attr("href").equals("https://bandcamp.com/cart");
            } catch (IOException | ReCaptchaException unused) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not determine whether URL is custom domain (not available? network error?)");
            } catch (IndexOutOfBoundsException | NullPointerException unused2) {
            }
        }
        return false;
    }

    public static boolean isRadioUrl(String str) {
        return str.toLowerCase().matches("https?://bandcamp\\.com/\\?show=\\d+");
    }

    public static DateWrapper parseDate(String str) {
        try {
            return new DateWrapper(ZonedDateTime.parse(str, DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm:ss zzz", Locale.ENGLISH)).toInstant(), false);
        } catch (DateTimeException e) {
            throw new ParsingException(Modifier.CC.m("Could not parse date '", str, "'"), e);
        }
    }
}
