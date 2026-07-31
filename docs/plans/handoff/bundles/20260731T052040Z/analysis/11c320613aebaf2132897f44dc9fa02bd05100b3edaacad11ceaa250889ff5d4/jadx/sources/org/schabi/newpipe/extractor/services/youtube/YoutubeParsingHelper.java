package org.schabi.newpipe.extractor.services.youtube;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.recyclerview.widget.ChildHelper;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonStringWriter;
import j$.net.URLDecoder;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.Stack;
import java.util.regex.Pattern;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.exceptions.AccountTerminatedException;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeParsingHelper {
    public static final Set GOOGLE_URLS;
    public static final Set INVIDIOUS_URLS;
    public static final Set YOUTUBE_URLS;
    public static String clientVersion = null;
    public static boolean clientVersionExtracted = false;
    public static String youtubeMusicClientVersion;
    public static Optional hardcodedClientVersionValid = Optional.empty();
    public static final String[] INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES = {"INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\"", "innertube_context_client_version\":\"([0-9\\.]+?)\"", "client.version=([0-9\\.]+)"};
    public static final String[] INITIAL_DATA_REGEXES = {"window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});", "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"};
    public static final Random numberGenerator = new Random();
    public static final Pattern C_WEB_PATTERN = Pattern.compile("&c=WEB");
    public static final Pattern C_WEB_EMBEDDED_PLAYER_PATTERN = Pattern.compile("&c=WEB_EMBEDDED_PLAYER");
    public static final Pattern C_ANDROID_PATTERN = Pattern.compile("&c=ANDROID");
    public static final Pattern C_IOS_PATTERN = Pattern.compile("&c=IOS");
    public static final Pattern C_VISIONOS_PATTERN = Pattern.compile("&c=VISIONOS");

    static {
        Object[] objArr = {"google.", "m.google.", "www.google."};
        HashSet hashSet = new HashSet(3);
        for (int i = 0; i < 3; i++) {
            Object obj = objArr[i];
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(obj, "duplicate element: "));
                return;
            }
        }
        GOOGLE_URLS = DesugarCollections.unmodifiableSet(hashSet);
        String[] strArr = {"invidio.us", "dev.invidio.us", "www.invidio.us", "redirect.invidious.io", "invidious.snopyta.org", "yewtu.be", "tube.connect.cafe", "tubus.eduvid.org", "invidious.kavin.rocks", "invidious.site", "invidious-us.kavin.rocks", "piped.kavin.rocks", "vid.mint.lgbt", "invidiou.site", "invidious.fdn.fr", "invidious.048596.xyz", "invidious.zee.li", "vid.puffyan.us", "ytprivate.com", "invidious.namazso.eu", "invidious.silkky.cloud", "ytb.trom.tf", "invidious.exonip.de", "inv.riverside.rocks", "invidious.blamefran.net", "y.com.cm", "invidious.moomoo.me", "yt.cyberhost.uk"};
        HashSet hashSet2 = new HashSet(28);
        for (int i2 = 0; i2 < 28; i2++) {
            String str = strArr[i2];
            Objects.requireNonNull(str);
            if (!hashSet2.add(str)) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(str, "duplicate element: ");
                return;
            }
        }
        INVIDIOUS_URLS = DesugarCollections.unmodifiableSet(hashSet2);
        Object[] objArr2 = {"youtube.com", "www.youtube.com", "m.youtube.com", "music.youtube.com"};
        HashSet hashSet3 = new HashSet(4);
        for (int i3 = 0; i3 < 4; i3++) {
            Object obj2 = objArr2[i3];
            Objects.requireNonNull(obj2);
            if (!hashSet3.add(obj2)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(obj2, "duplicate element: "));
                return;
            }
        }
        YOUTUBE_URLS = DesugarCollections.unmodifiableSet(hashSet3);
    }

    public static void defaultAlertsCheck(JsonObject jsonObject) {
        JsonArray array = jsonObject.getArray("alerts");
        if (Utils.isNullOrEmpty(array)) {
            return;
        }
        JsonObject object = array.getObject(0).getObject("alertRenderer");
        String textFromObject = getTextFromObject(object.getObject("text"), false);
        if (object.getString("type", "").equalsIgnoreCase("ERROR")) {
            if (textFromObject == null || !(textFromObject.contains("This account has been terminated") || textFromObject.contains("This channel was removed"))) {
                throw new ContentNotAvailableException(Modifier.CC.m("Got error: \"", textFromObject, "\""));
            }
            if (!textFromObject.matches(".*violat(ed|ion|ing).*") && !textFromObject.contains("infringement")) {
                throw new AccountTerminatedException(textFromObject);
            }
            throw new AccountTerminatedException(textFromObject, 0);
        }
    }

    public static String extractCachedUrlIfNeeded(String str) {
        if (str == null) {
            return null;
        }
        return str.contains("webcache.googleusercontent.com") ? str.split("cache:")[1] : str;
    }

    public static PlaylistInfo.PlaylistType extractPlaylistTypeFromPlaylistId(String str) {
        if (!Utils.isNullOrEmpty(str)) {
            return isYoutubeMusicMixId(str) ? PlaylistInfo.PlaylistType.MIX_MUSIC : str.startsWith("RDGMEM") ? PlaylistInfo.PlaylistType.MIX_GENRE : str.startsWith("RD") ? PlaylistInfo.PlaylistType.MIX_STREAM : PlaylistInfo.PlaylistType.NORMAL;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not extract playlist type from empty playlist id");
        return null;
    }

    public static String extractVideoIdFromMixId(String str) {
        if (Utils.isNullOrEmpty(str)) {
            Utils$$ExternalSyntheticBUOutline0.m("Video id could not be determined from empty playlist id");
            return null;
        }
        if (str.startsWith("RDMM")) {
            return str.substring(4);
        }
        if (isYoutubeMusicMixId(str)) {
            return str.substring(6);
        }
        if (str.startsWith("RDGMEM")) {
            throw new ParsingException("Video id could not be determined from genre mix id: ".concat(str));
        }
        if (!str.startsWith("RD")) {
            throw new ParsingException("Video id could not be determined from playlist id: ".concat(str));
        }
        if (str.length() == 13) {
            return str.substring(2);
        }
        throw new ParsingException("Video id could not be determined from mix id: ".concat(str));
    }

    public static String fixThumbnailUrl(String str) {
        if (str.startsWith("//")) {
            str = str.substring(2);
        }
        return str.startsWith("http://") ? Utils.replaceHttpWithHttps(str) : !str.startsWith("https://") ? "https://".concat(str) : str;
    }

    public static String getAndroidUserAgent(Localization localization) {
        if (localization == null) {
            localization = Localization.DEFAULT;
        }
        return Modifier.CC.m("com.google.android.youtube/21.03.36 (Linux; U; Android 15; ", localization.getCountryCode(), ") gzip");
    }

    public static Map getClientHeaders(String str, String str2) {
        Object[] objArr = {str};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        List m = Owner.CC.m(obj, arrayList, obj, arrayList);
        Object[] objArr2 = {str2};
        ArrayList arrayList2 = new ArrayList(1);
        Object obj2 = objArr2[0];
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("X-YouTube-Client-Name", m), new AbstractMap.SimpleEntry("X-YouTube-Client-Version", Owner.CC.m(obj2, arrayList2, obj2, arrayList2))};
        HashMap hashMap = new HashMap(2);
        for (int i = 0; i < 2; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                return null;
            }
        }
        return DesugarCollections.unmodifiableMap(hashMap);
    }

    public static String getClientVersion() {
        boolean booleanValue;
        String[] strArr = INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES;
        if (!Utils.isNullOrEmpty(clientVersion)) {
            return clientVersion;
        }
        try {
            if (!clientVersionExtracted) {
                try {
                    clientVersion = Utils.getStringResultFromRegexArray((String) Utility.downloader.get("https://www.youtube.com/sw.js", getOriginReferrerHeaders("https://www.youtube.com")).mHiddenViews, strArr);
                    clientVersionExtracted = true;
                } catch (Parser.RegexException e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not extract YouTube WEB InnerTube client version from sw.js", e);
                }
            }
        } catch (Exception unused) {
            if (!clientVersionExtracted) {
                String str = (String) Utility.downloader.get("https://www.youtube.com/results?search_query=&ucbcb=1", getCookieHeader()).mHiddenViews;
                try {
                    Stream streamAsJsonObjects = ((JsonObject) JsonParser.object().from(Utils.getStringResultFromRegexArray(str, INITIAL_DATA_REGEXES))).getObject("responseContext").getArray("serviceTrackingParams").streamAsJsonObjects();
                    String clientVersionFromServiceTrackingParam = getClientVersionFromServiceTrackingParam(streamAsJsonObjects, "CSI", "cver");
                    clientVersion = clientVersionFromServiceTrackingParam;
                    if (clientVersionFromServiceTrackingParam == null) {
                        try {
                            clientVersion = Utils.getStringResultFromRegexArray(str, strArr);
                        } catch (Parser.RegexException unused2) {
                        }
                    }
                    if (Utils.isNullOrEmpty(clientVersion)) {
                        clientVersion = getClientVersionFromServiceTrackingParam(streamAsJsonObjects, "ECATCHER", "client.version");
                    }
                    if (clientVersion == null) {
                        Utils$$ExternalSyntheticBUOutline0.m("Could not extract YouTube WEB InnerTube client version from HTML search results page");
                        return null;
                    }
                    clientVersionExtracted = true;
                } catch (JsonParserException | Parser.RegexException e2) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get ytInitialData", e2);
                    return null;
                }
            }
        }
        if (clientVersionExtracted) {
            return clientVersion;
        }
        if (hardcodedClientVersionValid.isPresent()) {
            booleanValue = ((Boolean) hardcodedClientVersionValid.get()).booleanValue();
        } else {
            JsonStringWriter jsonStringWriter = new JsonStringWriter();
            jsonStringWriter.object();
            jsonStringWriter.object("context");
            jsonStringWriter.object("client");
            jsonStringWriter.value("hl", "en-GB");
            jsonStringWriter.value("gl", "GB");
            jsonStringWriter.value("clientName", "WEB");
            jsonStringWriter.value("clientVersion", "2.20260120.01.00");
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
            jsonStringWriter.value("fetchLiveState", true);
            jsonStringWriter.end();
            ChildHelper postWithContentTypeJson = Utility.downloader.postWithContentTypeJson("https://www.youtube.com/youtubei/v1/guide?prettyPrint=false", getClientHeaders(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "2.20260120.01.00"), jsonStringWriter.done().getBytes(StandardCharsets.UTF_8));
            Optional of = Optional.of(Boolean.valueOf(((String) postWithContentTypeJson.mHiddenViews).length() > 5000 && postWithContentTypeJson.mRemoveStatus == 200));
            hardcodedClientVersionValid = of;
            booleanValue = ((Boolean) of.get()).booleanValue();
        }
        if (!booleanValue) {
            throw new ExtractionException("Could not get YouTube WEB client version");
        }
        clientVersion = "2.20260120.01.00";
        return "2.20260120.01.00";
    }

    public static String getClientVersionFromServiceTrackingParam(Stream stream, String str, String str2) {
        return (String) stream.filter(new NewPipe$$ExternalSyntheticLambda2(str, 7)).flatMap(new YoutubeChannelHelper$$ExternalSyntheticLambda2(27)).filter(new NewPipe$$ExternalSyntheticLambda2(str2, 8)).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(28)).filter(new JsonArray$$ExternalSyntheticLambda0(16)).findFirst().orElse(null);
    }

    public static Map getCookieHeader() {
        Object[] objArr = {"SOCS=".concat("CAE=")};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("Cookie", Owner.CC.m(obj, arrayList, obj, arrayList))};
        HashMap hashMap = new HashMap(1);
        Map.Entry entry = entryArr[0];
        Object key = entry.getKey();
        Objects.requireNonNull(key);
        Object value = entry.getValue();
        Objects.requireNonNull(value);
        if (hashMap.put(key, value) == null) {
            return DesugarCollections.unmodifiableMap(hashMap);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
        return null;
    }

    public static String getFeedUrlFrom(String str) {
        return str.startsWith("user/") ? Owner.CC.m("https://www.youtube.com/feeds/videos.xml?user=", str.replace("user/", "")) : str.startsWith("channel/") ? Owner.CC.m("https://www.youtube.com/feeds/videos.xml?channel_id=", str.replace("channel/", "")) : "https://www.youtube.com/feeds/videos.xml?channel_id=".concat(str);
    }

    public static List getImagesFromThumbnailsArray(JsonArray jsonArray) {
        return (List) jsonArray.streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(18)).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(29)).collect(Collectors.toUnmodifiableList());
    }

    public static String getIosUserAgent() {
        return Modifier.CC.m("com.google.ios.youtube/21.03.2(iPhone16,2; U; CPU iOS 18_7_2 like Mac OS X; ", Localization.DEFAULT.getCountryCode(), ")");
    }

    public static JsonObject getJsonPostResponse(String str, byte[] bArr, Localization localization) {
        return Parser.toJsonObject(getValidJsonResponseBody(Utility.downloader.postWithContentTypeJson(Modifier.CC.m("https://www.youtube.com/youtubei/v1/", str, "?prettyPrint=false"), getYouTubeHeaders(), bArr, localization)));
    }

    public static Map getOriginReferrerHeaders(String str) {
        Object[] objArr = {str};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        List m = Owner.CC.m(obj, arrayList, obj, arrayList);
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("Origin", m), new AbstractMap.SimpleEntry("Referer", m)};
        HashMap hashMap = new HashMap(2);
        for (int i = 0; i < 2; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                return null;
            }
        }
        return DesugarCollections.unmodifiableMap(hashMap);
    }

    public static String getTextAtKey(JsonObject jsonObject, String str) {
        return jsonObject.get(str) instanceof String ? jsonObject.getString(str, null) : getTextFromObject(jsonObject.getObject(str), false);
    }

    public static String getTextFromObject(JsonObject jsonObject, boolean z) {
        if (!Utils.isNullOrEmpty(jsonObject)) {
            if (jsonObject.containsKey("simpleText")) {
                return jsonObject.getString("simpleText", null);
            }
            JsonArray array = jsonObject.getArray("runs");
            if (!array.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                Iterator<E> it = array.iterator();
                while (it.hasNext()) {
                    JsonObject jsonObject2 = (JsonObject) it.next();
                    String string = jsonObject2.getString("text", null);
                    if (z) {
                        if (jsonObject2.containsKey("navigationEndpoint")) {
                            String urlFromNavigationEndpoint = getUrlFromNavigationEndpoint(jsonObject2.getObject("navigationEndpoint"));
                            if (!Utils.isNullOrEmpty(urlFromNavigationEndpoint)) {
                                string = Owner.CC.m("<a href=\"", Entities.escape(urlFromNavigationEndpoint), "\">", Entities.escape(string), "</a>");
                            }
                        }
                        boolean z2 = false;
                        boolean z3 = jsonObject2.containsKey(TtmlNode.BOLD) && jsonObject2.getBoolean(TtmlNode.BOLD);
                        boolean z4 = jsonObject2.containsKey("italics") && jsonObject2.getBoolean("italics");
                        if (jsonObject2.containsKey("strikethrough") && jsonObject2.getBoolean("strikethrough")) {
                            z2 = true;
                        }
                        if (z3) {
                            sb.append("<b>");
                        }
                        if (z4) {
                            sb.append("<i>");
                        }
                        if (z2) {
                            sb.append("<s>");
                        }
                        sb.append(string);
                        if (z2) {
                            sb.append("</s>");
                        }
                        if (z4) {
                            sb.append("</i>");
                        }
                        if (z3) {
                            sb.append("</b>");
                        }
                    } else {
                        sb.append(string);
                    }
                }
                String sb2 = sb.toString();
                return z ? sb2.replaceAll("\\n", "<br>").replaceAll(" {2}", " &nbsp;") : sb2;
            }
        }
        return null;
    }

    public static String getTextFromObjectOrThrow(JsonObject jsonObject, String str) {
        String textFromObject = getTextFromObject(jsonObject, false);
        if (textFromObject != null) {
            return textFromObject;
        }
        throw new ParsingException("Could not extract text: ".concat(str));
    }

    public static List getThumbnailsFromInfoItem(JsonObject jsonObject) {
        try {
            return getImagesFromThumbnailsArray(jsonObject.getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails from InfoItem", e);
            return null;
        }
    }

    public static String getUrlFromNavigationEndpoint(JsonObject jsonObject) {
        if (jsonObject.containsKey("urlEndpoint")) {
            String string = jsonObject.getObject("urlEndpoint").getString("url", null);
            if (string.startsWith("https://www.youtube.com/redirect?")) {
                string = string.substring(23);
            }
            if (string.startsWith("/redirect?")) {
                for (String str : string.substring(10).split("&")) {
                    if (str.split("=")[0].equals("q")) {
                        String str2 = str.split("=")[1];
                        Pattern pattern = Utils.M_PATTERN;
                        return URLDecoder.decode(str2, StandardCharsets.UTF_8);
                    }
                }
            } else {
                if (string.startsWith("http")) {
                    return string;
                }
                if (string.startsWith("/channel") || string.startsWith("/user") || string.startsWith("/watch")) {
                    return "https://www.youtube.com".concat(string);
                }
            }
        }
        if (jsonObject.containsKey("browseEndpoint")) {
            JsonObject object = jsonObject.getObject("browseEndpoint");
            String string2 = object.getString("canonicalBaseUrl", null);
            String string3 = object.getString("browseId", null);
            if (string3 != null) {
                if (string3.startsWith("UC")) {
                    return "https://www.youtube.com/channel/".concat(string3);
                }
                if (string3.startsWith("VL")) {
                    return "https://www.youtube.com/playlist?list=".concat(string3.substring(2));
                }
            }
            if (!Utils.isNullOrEmpty(string2)) {
                return Owner.CC.m("https://www.youtube.com", string2);
            }
        }
        if (jsonObject.containsKey("watchEndpoint")) {
            StringBuilder sb = new StringBuilder("https://www.youtube.com/watch?v=");
            sb.append(jsonObject.getObject("watchEndpoint").getString("videoId", null));
            if (jsonObject.getObject("watchEndpoint").containsKey("playlistId")) {
                sb.append("&list=");
                sb.append(jsonObject.getObject("watchEndpoint").getString("playlistId", null));
            }
            if (jsonObject.getObject("watchEndpoint").containsKey("startTimeSeconds")) {
                sb.append("&t=");
                sb.append(jsonObject.getObject("watchEndpoint").getInt(0, "startTimeSeconds"));
            }
            return sb.toString();
        }
        if (jsonObject.containsKey("watchPlaylistEndpoint")) {
            return Owner.CC.m("https://www.youtube.com/playlist?list=", jsonObject.getObject("watchPlaylistEndpoint").getString("playlistId", null));
        }
        if (jsonObject.containsKey("showDialogCommand")) {
            try {
                return getUrlFromNavigationEndpoint((JsonObject) Parser.getInstanceOf(((JsonArray) Parser.getInstanceOf(jsonObject, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems", JsonArray.class)).getObject(0), "listItemViewModel.rendererContext.commandContext.onTap.innertubeCommand", JsonObject.class));
            } catch (ParsingException unused) {
            }
        }
        if (jsonObject.containsKey("commandMetadata")) {
            JsonObject object2 = jsonObject.getObject("commandMetadata").getObject("webCommandMetadata");
            if (object2.containsKey("url")) {
                return Owner.CC.m("https://www.youtube.com", object2.getString("url", null));
            }
        }
        return null;
    }

    public static String getUrlFromObject(JsonObject jsonObject) {
        if (Utils.isNullOrEmpty(jsonObject)) {
            return null;
        }
        JsonArray array = jsonObject.getArray("runs");
        if (array.isEmpty()) {
            return null;
        }
        Iterator<E> it = array.iterator();
        while (it.hasNext()) {
            String urlFromNavigationEndpoint = getUrlFromNavigationEndpoint(((JsonObject) it.next()).getObject("navigationEndpoint"));
            if (!Utils.isNullOrEmpty(urlFromNavigationEndpoint)) {
                return urlFromNavigationEndpoint;
            }
        }
        return null;
    }

    public static String getValidJsonResponseBody(ChildHelper childHelper) {
        int i = childHelper.mRemoveStatus;
        String str = (String) childHelper.mViewInRemoveView;
        if (i == 404) {
            throw new ContentNotAvailableException("Not found (\"" + i + " " + ((String) childHelper.mCallback) + "\")");
        }
        String str2 = (String) childHelper.mHiddenViews;
        if (str2.length() < 50) {
            Utils$$ExternalSyntheticBUOutline0.m("JSON response is too short");
            return null;
        }
        URL url = new URL(str);
        if (url.getHost().equalsIgnoreCase("www.youtube.com")) {
            String path = url.getPath();
            if (path.equalsIgnoreCase("/oops") || path.equalsIgnoreCase("/error")) {
                throw new ContentNotAvailableException("Content unavailable");
            }
        }
        String header = childHelper.getHeader("Content-Type");
        if (header == null || !header.toLowerCase().contains("text/html")) {
            return str2;
        }
        throw new ParsingException(Modifier.CC.m("Got HTML document, expected JSON response (latest url was: \"", str, "\")"));
    }

    public static String getVisionOsUserAgent(Localization localization) {
        if (localization == null) {
            localization = Localization.DEFAULT;
        }
        return Modifier.CC.m("com.google.visionos.youtube/1.02(RealityDevice14,1; U; CPU visionOS 25_6_0 like Mac OS X; ", localization.getCountryCode(), ")");
    }

    public static String getVisitorDataFromInnertube(TokenData tokenData, Localization localization, ContentCountry contentCountry, Map map, String str) {
        String string = Parser.toJsonObject(getValidJsonResponseBody(Utility.downloader.postWithContentTypeJson(Owner.CC.m(str, "visitor_id", "?prettyPrint=false"), map, Jsoup.string((JsonObject) prepareJsonBuilder(localization, contentCountry, tokenData).root).getBytes(StandardCharsets.UTF_8)))).getObject("responseContext").getString("visitorData", null);
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get visitorData");
        return null;
    }

    public static HashMap getYouTubeHeaders() {
        HashMap hashMap = new HashMap(getOriginReferrerHeaders("https://www.youtube.com"));
        hashMap.putAll(getClientHeaders(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, getClientVersion()));
        Object[] objArr = {"SOCS=".concat("CAE=")};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        hashMap.put("Cookie", Owner.CC.m(obj, arrayList, obj, arrayList));
        return hashMap;
    }

    public static String getYoutubeMusicClientVersion() {
        String[] strArr = INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES;
        if (!Utils.isNullOrEmpty(youtubeMusicClientVersion)) {
            return youtubeMusicClientVersion;
        }
        JsonStringWriter jsonStringWriter = new JsonStringWriter();
        jsonStringWriter.object();
        jsonStringWriter.object("context");
        jsonStringWriter.object("client");
        jsonStringWriter.value("clientName", "WEB_REMIX");
        jsonStringWriter.value("clientVersion", "1.20260121.03.00");
        jsonStringWriter.value("hl", "en-GB");
        jsonStringWriter.value("gl", "GB");
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
        jsonStringWriter.value("input", "");
        jsonStringWriter.end();
        byte[] bytes = jsonStringWriter.done().getBytes(StandardCharsets.UTF_8);
        HashMap hashMap = new HashMap(getOriginReferrerHeaders("https://music.youtube.com"));
        hashMap.putAll(getClientHeaders("67", "2.20260120.01.00"));
        ChildHelper postWithContentTypeJson = Utility.downloader.postWithContentTypeJson("https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false", hashMap, bytes);
        if (((String) postWithContentTypeJson.mHiddenViews).length() > 500 && postWithContentTypeJson.mRemoveStatus == 200) {
            youtubeMusicClientVersion = "1.20260121.03.00";
            return "1.20260121.03.00";
        }
        try {
            youtubeMusicClientVersion = Utils.getStringResultFromRegexArray((String) Utility.downloader.get("https://music.youtube.com/sw.js", getOriginReferrerHeaders("https://music.youtube.com")).mHiddenViews, strArr);
        } catch (Exception unused) {
            youtubeMusicClientVersion = Utils.getStringResultFromRegexArray((String) Utility.downloader.get("https://music.youtube.com/?ucbcb=1", getCookieHeader()).mHiddenViews, strArr);
        }
        return youtubeMusicClientVersion;
    }

    public static boolean isInvidiousURL(URL url) {
        return INVIDIOUS_URLS.contains(url.getHost().toLowerCase(Locale.ROOT));
    }

    public static boolean isVerified(JsonArray jsonArray) {
        if (Utils.isNullOrEmpty(jsonArray)) {
            return false;
        }
        Iterator<E> it = jsonArray.iterator();
        while (it.hasNext()) {
            String string = ((JsonObject) it.next()).getObject("metadataBadgeRenderer").getString(TtmlNode.TAG_STYLE, null);
            if (string != null && (string.equals("BADGE_STYLE_TYPE_VERIFIED") || string.equals("BADGE_STYLE_TYPE_VERIFIED_ARTIST"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isYoutubeMusicMixId(String str) {
        return str.startsWith("RDAMVM") || str.startsWith("RDCLAK");
    }

    public static boolean isYoutubeURL(URL url) {
        return YOUTUBE_URLS.contains(url.getHost().toLowerCase(Locale.ROOT));
    }

    public static int parseDurationString(String str) {
        int i;
        if (!str.matches(".*\\d.*") && !str.equalsIgnoreCase("SHORTS")) {
            throw new ParsingException("Error duration string contains no digits: ".concat(str));
        }
        String[] split = str.contains(":") ? str.split(":") : str.split("\\.");
        int[] iArr = {24, 60, 60, 1};
        int length = 4 - split.length;
        if (length < 0) {
            throw new ParsingException("Error duration string with unknown format: ".concat(str));
        }
        int i2 = 0;
        for (int i3 = 0; i3 < split.length; i3++) {
            int i4 = iArr[i3 + length];
            String str2 = split[i3];
            if (str2 != null && !str2.isEmpty()) {
                Pattern pattern = Utils.M_PATTERN;
                try {
                    i = Integer.parseInt(str2.replaceAll("\\D+", ""));
                } catch (NumberFormatException unused) {
                }
                i2 = (i2 + i) * i4;
            }
            i = 0;
            i2 = (i2 + i) * i4;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JsonBuilder prepareDesktopJsonBuilder(Localization localization, ContentCountry contentCountry) {
        JsonObject jsonObject = new JsonObject();
        JsonBuilder jsonBuilder = new JsonBuilder(0, (boolean) (null == true ? 1 : 0));
        Stack stack = new Stack();
        jsonBuilder.json = stack;
        jsonBuilder.root = jsonObject;
        stack.push(jsonObject);
        jsonBuilder.object("context");
        jsonBuilder.object("client");
        jsonBuilder.value(localization.getLocalizationCode(), "hl");
        jsonBuilder.value(contentCountry.getCountryCode(), "gl");
        jsonBuilder.value("WEB", "clientName");
        jsonBuilder.value(getClientVersion(), "clientVersion");
        jsonBuilder.value("https://www.youtube.com", "originalUrl");
        jsonBuilder.value("DESKTOP", "platform");
        jsonBuilder.value((Object) 0, "utcOffsetMinutes");
        jsonBuilder.end();
        jsonBuilder.object("request");
        JsonArray jsonArray = new JsonArray();
        jsonBuilder.value(jsonArray, "internalExperimentFlags");
        stack.push(jsonArray);
        jsonBuilder.end();
        jsonBuilder.value("useSsl", true);
        jsonBuilder.end();
        jsonBuilder.object("user");
        jsonBuilder.value("lockedSafetyMode", false);
        jsonBuilder.end();
        jsonBuilder.end();
        return jsonBuilder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JsonBuilder prepareJsonBuilder(Localization localization, ContentCountry contentCountry, TokenData tokenData) {
        JsonObject jsonObject = new JsonObject();
        JsonBuilder jsonBuilder = new JsonBuilder(0, (boolean) (null == true ? 1 : 0));
        Stack stack = new Stack();
        jsonBuilder.json = stack;
        jsonBuilder.root = jsonObject;
        stack.push(jsonObject);
        jsonBuilder.object("context");
        jsonBuilder.object("client");
        Dispatcher dispatcher = (Dispatcher) tokenData.value;
        RulerTrackingMap rulerTrackingMap = (RulerTrackingMap) tokenData.builder;
        jsonBuilder.value((String) dispatcher.executorServiceOrNull, "clientName");
        jsonBuilder.value((String) dispatcher.readyAsyncCalls, "clientVersion");
        String str = (String) dispatcher.runningAsyncCalls;
        if (str != null) {
            jsonBuilder.value(str, "clientScreen");
        }
        String str2 = (String) rulerTrackingMap.rulers;
        if (str2 != null) {
            jsonBuilder.value(str2, "platform");
        }
        String str3 = (String) dispatcher.runningSyncCalls;
        if (str3 != null) {
            jsonBuilder.value(str3, "visitorData");
        }
        String str4 = (String) rulerTrackingMap.values;
        if (str4 != null) {
            jsonBuilder.value(str4, "deviceMake");
        }
        String str5 = (String) rulerTrackingMap.accessFlags;
        if (str5 != null) {
            jsonBuilder.value(str5, "deviceModel");
        }
        String str6 = (String) rulerTrackingMap.layoutNodes;
        if (str6 != null) {
            jsonBuilder.value(str6, "osName");
        }
        String str7 = (String) rulerTrackingMap.newRulers;
        if (str7 != null) {
            jsonBuilder.value(str7, "osVersion");
        }
        int i = rulerTrackingMap.size;
        if (i > 0) {
            jsonBuilder.value(Integer.valueOf(i), "androidSdkVersion");
        }
        jsonBuilder.value(localization.getLocalizationCode(), "hl");
        jsonBuilder.value(contentCountry.getCountryCode(), "gl");
        jsonBuilder.value((Object) 0, "utcOffsetMinutes");
        jsonBuilder.end();
        jsonBuilder.object("request");
        JsonArray jsonArray = new JsonArray();
        jsonBuilder.value(jsonArray, "internalExperimentFlags");
        stack.push(jsonArray);
        jsonBuilder.end();
        jsonBuilder.value("useSsl", true);
        jsonBuilder.end();
        jsonBuilder.object("user");
        jsonBuilder.value("lockedSafetyMode", false);
        jsonBuilder.end();
        jsonBuilder.end();
        return jsonBuilder;
    }
}
