package org.schabi.newpipe.extractor.services.soundcloud;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.recyclerview.widget.ChildHelper;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.net.URLEncoder;
import j$.time.OffsetDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeParseException;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.net.MalformedURLException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.mozilla.javascript.Context;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.downloader.Request;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCSearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.ImageSuffix;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SoundcloudParsingHelper {
    public static final List ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
    public static final Pattern ON_URL_PATTERN;
    public static final List VISUALS_IMAGE_SUFFIXES;
    public static String clientId;

    static {
        Image.ResolutionLevel resolutionLevel = Image.ResolutionLevel.LOW;
        ImageSuffix imageSuffix = new ImageSuffix("mini", 16, 16, resolutionLevel);
        ImageSuffix imageSuffix2 = new ImageSuffix("t20x20", 20, 20, resolutionLevel);
        ImageSuffix imageSuffix3 = new ImageSuffix("small", 32, 32, resolutionLevel);
        ImageSuffix imageSuffix4 = new ImageSuffix("badge", 47, 47, resolutionLevel);
        ImageSuffix imageSuffix5 = new ImageSuffix("t50x50", 50, 50, resolutionLevel);
        ImageSuffix imageSuffix6 = new ImageSuffix("t60x60", 60, 60, resolutionLevel);
        ImageSuffix imageSuffix7 = new ImageSuffix("t67x67", 67, 67, resolutionLevel);
        ImageSuffix imageSuffix8 = new ImageSuffix("t80x80", 80, 80, resolutionLevel);
        ImageSuffix imageSuffix9 = new ImageSuffix("large", 100, 100, resolutionLevel);
        ImageSuffix imageSuffix10 = new ImageSuffix("t120x120", 120, 120, resolutionLevel);
        Image.ResolutionLevel resolutionLevel2 = Image.ResolutionLevel.MEDIUM;
        ImageSuffix[] imageSuffixArr = {imageSuffix, imageSuffix2, imageSuffix3, imageSuffix4, imageSuffix5, imageSuffix6, imageSuffix7, imageSuffix8, imageSuffix9, imageSuffix10, new ImageSuffix("t200x200", 200, 200, resolutionLevel2), new ImageSuffix("t240x240", PsExtractor.VIDEO_STREAM_MASK, PsExtractor.VIDEO_STREAM_MASK, resolutionLevel2), new ImageSuffix("t250x250", Context.VERSION_ECMASCRIPT, Context.VERSION_ECMASCRIPT, resolutionLevel2), new ImageSuffix("t300x300", 300, 300, resolutionLevel2), new ImageSuffix("t500x500", 500, 500, resolutionLevel2)};
        ArrayList arrayList = new ArrayList(15);
        for (int i = 0; i < 15; i++) {
            ImageSuffix imageSuffix11 = imageSuffixArr[i];
            Objects.requireNonNull(imageSuffix11);
            arrayList.add(imageSuffix11);
        }
        ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES = DesugarCollections.unmodifiableList(arrayList);
        Object[] objArr = {new ImageSuffix("t1240x260", 1240, 260, resolutionLevel2), new ImageSuffix("t2480x520", 2480, 520, resolutionLevel2)};
        ArrayList arrayList2 = new ArrayList(2);
        int i2 = 0;
        while (i2 < 2) {
            Object obj = objArr[i2];
            i2 = RecordTag.m(obj, arrayList2, obj, i2, 1);
        }
        VISUALS_IMAGE_SUFFIXES = DesugarCollections.unmodifiableList(arrayList2);
        ON_URL_PATTERN = Pattern.compile("^https?://on.soundcloud.com/[0-9a-zA-Z]+$");
    }

    public static synchronized String clientId() {
        synchronized (SoundcloudParsingHelper.class) {
            if (!Utils.isNullOrEmpty(clientId)) {
                return clientId;
            }
            DownloaderImpl downloaderImpl = Utility.downloader;
            Elements select = Jsoup.parse((String) downloaderImpl.get("https://soundcloud.com").mHiddenViews).select("script[src*=\"sndcdn.com/assets/\"][src$=\".js\"]");
            Collections.reverse(select);
            ArrayList arrayList = new ArrayList(1);
            Object obj = new Object[]{"bytes=0-50000"}[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            Map m = RecordTag.m(DesugarCollections.unmodifiableList(arrayList));
            Iterator<E> it = select.iterator();
            while (it.hasNext()) {
                String attr = ((Element) it.next()).attr("src");
                if (!Utils.isNullOrEmpty(attr)) {
                    try {
                        String matchGroup = Parser.matchGroup(",client_id:\"(.*?)\"", 1, (String) downloaderImpl.get(attr, m).mHiddenViews);
                        clientId = matchGroup;
                        return matchGroup;
                    } catch (Parser.RegexException unused) {
                        continue;
                    }
                }
            }
            throw new ExtractionException("Couldn't extract client id");
        }
    }

    public static List getAllImagesFromArtworkOrAvatarUrl(String str) {
        return Utils.isNullOrEmpty(str) ? Collections.EMPTY_LIST : getAllImagesFromImageUrlReturned(str.replace("-large.", "-%s."), ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES);
    }

    public static List getAllImagesFromImageUrlReturned(String str, List list) {
        return (List) Collection.EL.stream(list).map(new ListHelper$$ExternalSyntheticLambda3(str, 4)).collect(Collectors.toUnmodifiableList());
    }

    public static List getAllImagesFromTrackObject(JsonObject jsonObject) {
        String string = jsonObject.getString("artwork_url", null);
        if (string != null) {
            return getAllImagesFromArtworkOrAvatarUrl(string);
        }
        String string2 = jsonObject.getObject("user").getString("avatar_url", null);
        if (string2 != null) {
            return getAllImagesFromArtworkOrAvatarUrl(string2);
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get track or track user's thumbnails");
        return null;
    }

    public static String getNextPageUrl(JsonObject jsonObject) {
        try {
            String string = jsonObject.getString("next_href", null);
            if (string.contains("client_id=")) {
                return string;
            }
            return string + "&client_id=" + clientId();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getStreamsFromApi(StreamInfoItemsCollector streamInfoItemsCollector, String str, boolean z) {
        ChildHelper childHelper = Utility.downloader.get(str, null, ServiceList.SoundCloud.getLocalization());
        int i = childHelper.mRemoveStatus;
        if (i >= 400) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(i, "Could not get streams from API, HTTP "));
            return null;
        }
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) childHelper.mHiddenViews);
            Iterator<E> it = jsonObject.getArray("collection").iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof JsonObject) {
                    JsonObject jsonObject2 = (JsonObject) next;
                    if (z) {
                        jsonObject2 = jsonObject2.getObject("track");
                    }
                    streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeReelInfoItemExtractor(jsonObject2, 3));
                }
            }
            return getNextPageUrl(jsonObject);
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e);
            return null;
        }
    }

    public static String getUsersFromApi(StreamInfoItemsCollector streamInfoItemsCollector, String str) {
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) Utility.downloader.get(str, null, ServiceList.SoundCloud.getLocalization()).mHiddenViews);
            Iterator<E> it = jsonObject.getArray("collection").iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof JsonObject) {
                    streamInfoItemsCollector.commit(new MediaCCCSearchExtractor.AnonymousClass1(2, (JsonObject) next));
                }
            }
            return getNextPageUrl(jsonObject);
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e);
            return null;
        }
    }

    public static DateWrapper parseDate(String str) {
        try {
            return DateWrapper.fromInstant(str);
        } catch (DateTimeParseException e) {
            try {
                return new DateWrapper(OffsetDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss +0000")), 0);
            } catch (DateTimeParseException e2) {
                e2.addSuppressed(e);
                throw new ParsingException(Modifier.CC.m("Could not parse date: \"", str, "\""), e2);
            }
        }
    }

    public static String resolveIdWithWidgetApi(String str) {
        if (ON_URL_PATTERN.matcher(str).find()) {
            try {
                DownloaderImpl downloaderImpl = Utility.downloader;
                downloaderImpl.getClass();
                WebMReader.Segment segment = new WebMReader.Segment();
                segment.info = "HEAD";
                segment.tracks = str;
                ((LinkedHashMap) segment.currentCluster).clear();
                str = ((String) downloaderImpl.execute(new Request(segment)).mViewInRemoveView).split("\\?")[0];
            } catch (ExtractionException e) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not follow on.soundcloud.com redirect", e);
                return null;
            }
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = Owner.CC.m(1, 0, str);
        }
        String lowerCase = str.toLowerCase();
        if (Utils.M_PATTERN.matcher(lowerCase).find()) {
            lowerCase = lowerCase.replace("m.", "");
        } else if (Utils.WWW_PATTERN.matcher(lowerCase).find()) {
            lowerCase = lowerCase.replace("www.", "");
        }
        try {
            try {
                return String.valueOf(Parser.getValue((JsonObject) JsonParser.object().from((String) Utility.downloader.get("https://api-widget.soundcloud.com/resolve?url=" + URLEncoder.encode(Utils.stringToURL(lowerCase).toString(), StandardCharsets.UTF_8) + "&format=json&client_id=" + clientId(), null, ServiceList.SoundCloud.getLocalization()).mHiddenViews), TtmlNode.ATTR_ID));
            } catch (JsonParserException e2) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not parse JSON response", e2);
                return null;
            } catch (ExtractionException e3) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not resolve id with embedded player. ClientId not extracted", e3);
                return null;
            }
        } catch (MalformedURLException unused) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("The given URL is not valid");
            return null;
        }
    }

    public static String resolveUrlWithEmbedPlayer(String str) {
        DownloaderImpl downloaderImpl = Utility.downloader;
        Pattern pattern = Utils.M_PATTERN;
        return ((Element) Jsoup.parse((String) downloaderImpl.get(Owner.CC.m("https://w.soundcloud.com/player/?url=", URLEncoder.encode(str, StandardCharsets.UTF_8)), null, ServiceList.SoundCloud.getLocalization()).mHiddenViews).select("link[rel=\"canonical\"]").first$org$jsoup$select$Nodes()).attr("abs:href");
    }
}
