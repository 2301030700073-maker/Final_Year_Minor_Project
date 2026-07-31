package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.RulerTrackingMap;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.util.MimeTypes;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.time.LocalDate;
import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeParseException;
import j$.util.DesugarCollections;
import j$.util.Optional;
import j$.util.function.Function$CC;
import j$.util.stream.Stream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.function.Function;
import java.util.regex.Pattern;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import okhttp3.Dispatcher;
import org.jsoup.Jsoup;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.parser.TokenData;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.AccountTerminatedException;
import org.schabi.newpipe.extractor.exceptions.AgeRestrictedContentException;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.GeographicRestrictionException;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.PrivateContentException;
import org.schabi.newpipe.extractor.exceptions.SignInConfirmNotBotException;
import org.schabi.newpipe.extractor.exceptions.YoutubeMusicPremiumContentException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.Frameset;
import org.schabi.newpipe.extractor.stream.StreamExtractor$Privacy;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.extractor.utils.Pair;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;
import org.schabi.newpipe.util.potoken.PoTokenProviderImpl;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeStreamExtractor extends ListExtractor {
    public static PoTokenProviderImpl poTokenProvider;
    public int ageLimit;
    public String androidCpn;
    public JsonObject androidStreamingData;
    public JsonObject nextResponse;
    public JsonObject playerCaptionsTracklistRenderer;
    public JsonObject playerMicroFormatRenderer;
    public JsonObject playerResponse;
    public StreamType streamType;
    public JsonArray thumbnailsArray;
    public JsonObject videoPrimaryInfoRenderer;
    public JsonObject videoSecondaryInfoRenderer;
    public String visionOsCpn;
    public JsonObject visionOsStreamingData;

    public static String getManifestUrl(String str, String str2, List list) {
        String concat = str.concat("ManifestUrl");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            if (pair.getFirst() != null) {
                String string = ((JsonObject) pair.getFirst()).getString(concat, null);
                if (!Utils.isNullOrEmpty(string)) {
                    if (pair.getSecond() == null) {
                        return Owner.CC.m(string, "?", str2);
                    }
                    return string + "?pot=" + ((String) pair.getSecond()) + "&" + str2;
                }
            }
        }
        return "";
    }

    public static boolean isPlayerResponseNotValid(JsonObject jsonObject, String str) {
        return !str.equals(jsonObject.getObject("videoDetails").getString("videoId", null));
    }

    public static long parseLikeCountFromLikeButtonRenderer(JsonArray jsonArray) {
        String str = null;
        JsonObject jsonObject = (JsonObject) jsonArray.streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(19)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(9)).findFirst().orElse(null);
        if (jsonObject != null) {
            String m480m = RecordTag.m480m(jsonObject, "accessibilityData", "accessibilityData", "label", (String) null);
            if (m480m == null) {
                m480m = jsonObject.getObject("accessibility").getString("label", null);
            }
            str = m480m == null ? jsonObject.getObject("defaultText").getObject("accessibility").getObject("accessibilityData").getString("label", null) : m480m;
            if (str != null && str.toLowerCase().contains("no likes")) {
                return 0L;
            }
        }
        if (str == null) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get like count from accessibility data");
            return 0L;
        }
        try {
            Pattern pattern = Utils.M_PATTERN;
            return Long.parseLong(str.replaceAll("\\D+", ""));
        } catch (NumberFormatException e) {
            throw new ParsingException(Modifier.CC.m("Could not parse \"", str, "\" as a long"), e);
        }
    }

    public static long parseLikeCountFromLikeButtonViewModel(JsonArray jsonArray) {
        JsonObject jsonObject = (JsonObject) jsonArray.streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(18)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(8)).findFirst().orElse(null);
        if (jsonObject == null) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not find buttonViewModel object");
            return 0L;
        }
        String string = jsonObject.getString("accessibilityText", null);
        if (string == null) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not find buttonViewModel's accessibilityText string");
            return 0L;
        }
        try {
            Pattern pattern = Utils.M_PATTERN;
            return Long.parseLong(string.replaceAll("\\D+", ""));
        } catch (NumberFormatException e) {
            throw new ParsingException(Modifier.CC.m("Could not parse \"", string, "\" as a long"), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.services.youtube.extractors.ItagInfo buildAndAddItagInfoToList(java.lang.String r9, com.grack.nanojson.JsonObject r10, org.schabi.newpipe.extractor.services.youtube.ItagItem r11, org.schabi.newpipe.extractor.services.youtube.ItagItem.ItagType r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor.buildAndAddItagInfoToList(java.lang.String, com.grack.nanojson.JsonObject, org.schabi.newpipe.extractor.services.youtube.ItagItem, org.schabi.newpipe.extractor.services.youtube.ItagItem$ItagType, java.lang.String, java.lang.String):org.schabi.newpipe.extractor.services.youtube.extractors.ItagInfo");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final int getAgeLimit() {
        int i = this.ageLimit;
        if (i != -1) {
            return i;
        }
        int i2 = getVideoSecondaryInfoRenderer().getObject("metadataRowContainer").getObject("metadataRowContainerRenderer").getArray("rows").streamAsJsonObjects().flatMap(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(22)).flatMap(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(16)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(17)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(6)) ? 18 : 0;
        this.ageLimit = i2;
        return i2;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAudioStreams() {
        assertPageFetched();
        return getItags("adaptiveFormats", ItagItem.ItagType.AUDIO, new Player$$ExternalSyntheticLambda41(this, 6), MimeTypes.BASE_TYPE_AUDIO);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getCategory() {
        return this.playerMicroFormatRenderer.getString("category", "");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getDashMpdUrl() {
        assertPageFetched();
        Object[] objArr = {new Pair(this.androidStreamingData, null)};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        return getManifestUrl("dash", "mpd_version=7", Owner.CC.m(obj, arrayList, obj, arrayList));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        assertPageFetched();
        String textFromObject = YoutubeParsingHelper.getTextFromObject(getVideoSecondaryInfoRenderer().getObject("description"), true);
        if (!Utils.isNullOrEmpty(textFromObject)) {
            return new Description(textFromObject, 1);
        }
        String attributedDescriptionToHtml = YoutubeDescriptionHelper.attributedDescriptionToHtml(getVideoSecondaryInfoRenderer().getObject("attributedDescription"));
        if (!Utils.isNullOrEmpty(attributedDescriptionToHtml)) {
            return new Description(attributedDescriptionToHtml, 1);
        }
        String string = this.playerResponse.getObject("videoDetails").getString("shortDescription", null);
        if (string == null) {
            string = YoutubeParsingHelper.getTextFromObject(this.playerMicroFormatRenderer.getObject("description"), false);
        }
        return new Description(string, 3);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getErrorMessage() {
        try {
            return YoutubeParsingHelper.getTextFromObject(this.playerResponse.getObject("playabilityStatus").getObject("errorScreen").getObject("playerErrorMessageRenderer").getObject("reason"), false);
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.util.ArrayList] */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getFrames() {
        ?? singletonList;
        String str = "playerLiveStoryboardSpecRenderer";
        try {
            JsonObject object = this.playerResponse.getObject("storyboards");
            if (!object.containsKey("playerLiveStoryboardSpecRenderer")) {
                str = "playerStoryboardSpecRenderer";
            }
            JsonObject object2 = object.getObject(str);
            if (object2 == null) {
                return Collections.EMPTY_LIST;
            }
            String string = object2.getString("spec", null);
            if (string == null) {
                return Collections.EMPTY_LIST;
            }
            String[] split = string.split("\\|");
            String str2 = split[0];
            ArrayList arrayList = new ArrayList(split.length - 1);
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].split("#");
                if (split2.length == 8 && Integer.parseInt(split2[5]) != 0) {
                    int parseInt = Integer.parseInt(split2[2]);
                    int parseInt2 = Integer.parseInt(split2[3]);
                    int parseInt3 = Integer.parseInt(split2[4]);
                    String str3 = str2.replace("$L", String.valueOf(i - 1)).replace("$N", split2[6]) + "&sigh=" + split2[7];
                    if (str3.contains("$M")) {
                        int ceil = (int) Math.ceil(parseInt / (parseInt2 * parseInt3));
                        singletonList = new ArrayList(ceil);
                        for (int i2 = 0; i2 < ceil; i2++) {
                            singletonList.add(str3.replace("$M", String.valueOf(i2)));
                        }
                    } else {
                        singletonList = Collections.singletonList(str3);
                    }
                    arrayList.add(new Frameset(singletonList, Integer.parseInt(split2[0]), Integer.parseInt(split2[1]), parseInt, Integer.parseInt(split2[5]), parseInt2, parseInt3));
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new ExtractionException("Could not get frames", e);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getHlsUrl() {
        assertPageFetched();
        int i = 0;
        Object[] objArr = {new Pair(this.visionOsStreamingData, null), new Pair(null, null), new Pair(this.androidStreamingData, null)};
        ArrayList arrayList = new ArrayList(3);
        while (i < 3) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        return getManifestUrl("hls", "", DesugarCollections.unmodifiableList(arrayList));
    }

    public final ArrayList getItags(final String str, final ItagItem.ItagType itagType, Function function, String str2) {
        try {
            final String id = this.linkHandler.getId();
            ArrayList arrayList = new ArrayList();
            Stream.CC.of((Object[]) new Pair[]{new Pair(this.androidStreamingData, new Pair(this.androidCpn, null)), new Pair(this.visionOsStreamingData, new Pair(this.visionOsCpn, null)), new Pair(null, new Pair(null, null))}).flatMap(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                /* renamed from: andThen */
                public /* synthetic */ Function mo646andThen(Function function2) {
                    return Function$CC.$default$andThen(this, function2);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Pair pair = (Pair) obj;
                    JsonObject jsonObject = (JsonObject) pair.getFirst();
                    final String str3 = (String) ((Pair) pair.getSecond()).getFirst();
                    final String str4 = (String) ((Pair) pair.getSecond()).getSecond();
                    if (jsonObject != null) {
                        String str5 = str;
                        if (jsonObject.containsKey(str5)) {
                            Stream streamAsJsonObjects = jsonObject.getArray(str5).streamAsJsonObjects();
                            final YoutubeStreamExtractor youtubeStreamExtractor = YoutubeStreamExtractor.this;
                            final ItagItem.ItagType itagType2 = itagType;
                            final String str6 = id;
                            return streamAsJsonObjects.map(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor$$ExternalSyntheticLambda13
                                @Override // java.util.function.Function
                                /* renamed from: andThen */
                                public /* synthetic */ Function mo646andThen(Function function2) {
                                    return Function$CC.$default$andThen(this, function2);
                                }

                                @Override // java.util.function.Function
                                public final Object apply(Object obj2) {
                                    YoutubeStreamExtractor youtubeStreamExtractor2 = YoutubeStreamExtractor.this;
                                    String str7 = str6;
                                    String str8 = str3;
                                    String str9 = str4;
                                    JsonObject jsonObject2 = (JsonObject) obj2;
                                    try {
                                        int i = jsonObject2.getInt(0, "itag");
                                        ItagItem[] itagItemArr = ItagItem.ITAG_LIST;
                                        for (int i2 = 0; i2 < 57; i2++) {
                                            ItagItem itagItem = itagItemArr[i2];
                                            if (i == itagItem.id) {
                                                ItagItem itagItem2 = new ItagItem(itagItem);
                                                ItagItem.ItagType itagType3 = itagItem2.itagType;
                                                if (itagType3 == itagType2) {
                                                    return youtubeStreamExtractor2.buildAndAddItagInfoToList(str7, jsonObject2, itagItem2, itagType3, str8, str9);
                                                }
                                                return null;
                                            }
                                        }
                                        throw new ParsingException(Modifier.CC.m("itag ", i, " is not supported"));
                                    } catch (ExtractionException unused) {
                                        return null;
                                    }
                                }

                                public /* synthetic */ Function compose(Function function2) {
                                    return Function$CC.$default$compose(this, function2);
                                }
                            }).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(7));
                        }
                    }
                    return Stream.CC.empty();
                }

                public /* synthetic */ Function compose(Function function2) {
                    return Function$CC.$default$compose(this, function2);
                }
            }).map(function).forEachOrdered(new Player$$ExternalSyntheticLambda1(arrayList, 7));
            return arrayList;
        } catch (Exception e) {
            throw new ParsingException(Modifier.CC.m("Could not get ", str2, " streams"), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final Locale getLanguageInfo() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLength() {
        assertPageFetched();
        try {
            return Long.parseLong(this.playerResponse.getObject("videoDetails").getString("lengthSeconds", null));
        } catch (Exception unused) {
            Iterator it = Arrays.asList(this.androidStreamingData, null).iterator();
            while (it.hasNext()) {
                if (!((JsonObject) it.next()).getArray("adaptiveFormats").isEmpty()) {
                    try {
                        return Math.round(Long.parseLong(r1.getObject(0).getString("approxDurationMs", null)) / 1000.0f);
                    } catch (NumberFormatException unused2) {
                        continue;
                    }
                }
            }
            Utils$$ExternalSyntheticBUOutline0.m("Could not get duration");
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getLicence() {
        JsonObject object = getVideoSecondaryInfoRenderer().getObject("metadataRowContainer").getObject("metadataRowContainerRenderer").getArray("rows").getObject(0).getObject("metadataRowRenderer");
        String textFromObject = YoutubeParsingHelper.getTextFromObject(object.getArray("contents").getObject(0), false);
        return (textFromObject == null || !"Licence".equals(YoutubeParsingHelper.getTextFromObject(object.getObject("title"), false))) ? "YouTube licence" : textFromObject;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLikeCount() {
        assertPageFetched();
        if (!this.playerResponse.getObject("videoDetails").getBoolean("allowRatings")) {
            return -1L;
        }
        JsonArray array = getVideoPrimaryInfoRenderer().getObject("videoActions").getObject("menuRenderer").getArray("topLevelButtons");
        try {
            try {
                return parseLikeCountFromLikeButtonViewModel(array);
            } catch (ParsingException e) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get like count", e);
                return 0L;
            }
        } catch (ParsingException unused) {
            return parseLikeCountFromLikeButtonRenderer(array);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getMetaInfo() {
        return Utility.getMetaInfo(RecordTag.m(this.nextResponse, "contents", "twoColumnWatchNextResults", "results", "results").getArray("contents"));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        assertPageFetched();
        String string = this.playerResponse.getObject("videoDetails").getString("title", null);
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        String textFromObject = YoutubeParsingHelper.getTextFromObject(getVideoPrimaryInfoRenderer().getObject("title"), false);
        if (!Utils.isNullOrEmpty(textFromObject)) {
            return textFromObject;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamExtractor$Privacy getPrivacy() {
        return (this.playerMicroFormatRenderer.getBoolean("isUnlisted") || getVideoPrimaryInfoRenderer().getArray("badges").streamAsJsonObjects().anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(11))) ? StreamExtractor$Privacy.UNLISTED : StreamExtractor$Privacy.PUBLIC;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final InfoItemsCollector getRelatedItems() {
        assertPageFetched();
        if (getAgeLimit() != 0) {
            return null;
        }
        try {
            MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
            this.nextResponse.getObject("contents").getObject("twoColumnWatchNextResults").getObject("secondaryResults").getObject("secondaryResults").getArray("results").streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda19(getTimeAgoParser(), 0)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(10)).forEach(new SoundcloudParsingHelper$$ExternalSyntheticLambda1(multiInfoItemsCollector, 2));
            return multiInfoItemsCollector;
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get related videos", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getStreamSegments() {
        if (!this.nextResponse.containsKey("engagementPanels")) {
            return Collections.EMPTY_LIST;
        }
        int i = 0;
        JsonArray jsonArray = (JsonArray) this.nextResponse.getArray("engagementPanels").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(i)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(i)).findFirst().orElse(null);
        if (jsonArray == null) {
            return Collections.EMPTY_LIST;
        }
        long length = getLength();
        ArrayList arrayList = new ArrayList();
        for (JsonObject jsonObject : jsonArray.streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(21))) {
            int i2 = jsonObject.getObject("onTap").getObject("watchEndpoint").getInt(-1, "startTimeSeconds");
            if (i2 == -1) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get stream segment start time.");
                return null;
            }
            if (i2 > length) {
                break;
            }
            String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("title"), false);
            if (Utils.isNullOrEmpty(textFromObject)) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get stream segment title.");
                return null;
            }
            StreamSegment streamSegment = new StreamSegment(textFromObject, i2);
            streamSegment.url = this.linkHandler.getUrl() + "?t=" + i2;
            if (jsonObject.containsKey("thumbnail")) {
                JsonArray array = jsonObject.getObject("thumbnail").getArray("thumbnails");
                if (!array.isEmpty()) {
                    streamSegment.setPreviewUrl(YoutubeParsingHelper.fixThumbnailUrl(array.getObject(array.size() - 1).getString("url", null)));
                }
            }
            arrayList.add(streamSegment);
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamType getStreamType() {
        assertPageFetched();
        return this.streamType;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getSubtitles(MediaFormat mediaFormat) {
        MediaFormat mediaFormat2;
        assertPageFetched();
        ArrayList arrayList = new ArrayList();
        JsonArray array = this.playerCaptionsTracklistRenderer.getArray("captionTracks");
        int i = 0;
        while (i < array.size()) {
            String string = array.getObject(i).getString("languageCode", null);
            String string2 = array.getObject(i).getString("baseUrl", null);
            String string3 = array.getObject(i).getString("vssId", null);
            if (string == null || string2 == null || string3 == null) {
                mediaFormat2 = mediaFormat;
            } else {
                boolean startsWith = string3.startsWith("a.");
                mediaFormat2 = mediaFormat;
                arrayList.add(new SubtitlesStream(string.concat("." + mediaFormat.suffix), Owner.CC.m(string2.replaceAll("&fmt=[^&]*", "").replaceAll("&tlang=[^&]*", ""), "&fmt=", mediaFormat.suffix), true, mediaFormat2, string, startsWith));
            }
            i++;
            mediaFormat = mediaFormat2;
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getSubtitlesDefault() {
        return getSubtitles(MediaFormat.TTML);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTags() {
        return Parser.getStringListFromJsonArray(this.playerResponse.getObject("videoDetails").getArray("keywords"));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getTextualUploadDate() {
        String textFromObject;
        String string = this.playerMicroFormatRenderer.getString("uploadDate", "");
        if (string.isEmpty()) {
            string = this.playerMicroFormatRenderer.getString("publishDate", "");
        }
        if (!string.isEmpty()) {
            return string;
        }
        JsonObject object = this.playerMicroFormatRenderer.getObject("liveBroadcastDetails");
        String string2 = object.getString("endTimestamp", "");
        if (string2.isEmpty()) {
            string2 = object.getString("startTimestamp", "");
        }
        if (!string2.isEmpty()) {
            return string2;
        }
        assertPageFetched();
        if (this.streamType == StreamType.LIVE_STREAM || (textFromObject = YoutubeParsingHelper.getTextFromObject(getVideoPrimaryInfoRenderer().getObject("dateText"), false)) == null) {
            return null;
        }
        return textFromObject.startsWith("Premiered on ") ? textFromObject.substring(13) : textFromObject.startsWith("Premiered ") ? textFromObject.substring(10) : textFromObject;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        assertPageFetched();
        try {
            return YoutubeParsingHelper.getImagesFromThumbnailsArray(this.thumbnailsArray);
        } catch (Exception unused) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails");
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getTimeStamp() {
        long timestampSeconds = getTimestampSeconds("((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)");
        if (timestampSeconds == -2) {
            return 0L;
        }
        return timestampSeconds;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final DateWrapper getUploadDate() {
        Optional empty;
        String textualUploadDate = getTextualUploadDate();
        try {
            try {
                return DateWrapper.fromOffsetDateTime(textualUploadDate);
            } catch (ParsingException unused) {
                return MathKt.getTimeAgoParserFor(new Localization("en", null)).parse(textualUploadDate);
            }
        } catch (ParsingException unused2) {
            try {
                empty = Optional.of(LocalDate.parse(textualUploadDate, DateTimeFormatter.ofPattern("MMM dd, yyyy", Locale.ENGLISH)));
            } catch (DateTimeParseException unused3) {
                empty = Optional.empty();
            }
            return (DateWrapper) empty.or(new StringUtil$$ExternalSyntheticLambda1(this, textualUploadDate)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(20)).orElseThrow(new StringUtil$$ExternalSyntheticLambda1(textualUploadDate, 6));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        assertPageFetched();
        JsonObject object = getVideoSecondaryInfoRenderer().getObject("owner").getObject("videoOwnerRenderer");
        List imagesFromThumbnailsArray = object.containsKey("avatarStack") ? YoutubeParsingHelper.getImagesFromThumbnailsArray(object.getObject("avatarStack").getObject("avatarStackViewModel").getArray("avatars").getObject(0).getObject("avatarViewModel").getObject("image").getArray("sources")) : YoutubeParsingHelper.getImagesFromThumbnailsArray(object.getObject("thumbnail").getArray("thumbnails"));
        if (!imagesFromThumbnailsArray.isEmpty() || this.ageLimit != 0) {
            return imagesFromThumbnailsArray;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader avatars");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        assertPageFetched();
        String string = this.playerResponse.getObject("videoDetails").getString("author", null);
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getUploaderSubscriberCount() {
        JsonObject jsonObject;
        String str;
        JsonObject jsonObject2 = (JsonObject) Parser.getInstanceOf(this.videoSecondaryInfoRenderer, "owner.videoOwnerRenderer", JsonObject.class);
        if (jsonObject2.containsKey("subscriberCountText")) {
            str = YoutubeParsingHelper.getTextFromObject(jsonObject2.getObject("subscriberCountText"), false);
        } else {
            JsonObject object = jsonObject2.getObject("navigationEndpoint");
            String str2 = YoutubeParsingHelper.clientVersion;
            try {
                jsonObject = ((JsonArray) Parser.getInstanceOf(object, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems", JsonArray.class)).getObject(0).getObject("listItemViewModel");
            } catch (ParsingException unused) {
                jsonObject = null;
            }
            str = jsonObject.getObject("subtitle").getString("content", null).split("•")[1];
        }
        if (Utils.isNullOrEmpty(str)) {
            return -1L;
        }
        try {
            return Utils.mixedNumberWordToLong(str);
        } catch (NumberFormatException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader subscriber count", e);
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        assertPageFetched();
        String string = this.playerResponse.getObject("videoDetails").getString("channelId", null);
        if (Utils.isNullOrEmpty(string)) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader url");
            return null;
        }
        return YoutubeChannelLinkHandlerFactory.INSTANCE.getUrl("channel/" + string);
    }

    public final JsonObject getVideoInfoRenderer(String str) {
        return (JsonObject) RecordTag.m(this.nextResponse, "contents", "twoColumnWatchNextResults", "results", "results").getArray("contents").streamAsJsonObjects().filter(new NewPipe$$ExternalSyntheticLambda2(str, 11)).map(new ListHelper$$ExternalSyntheticLambda3(str, 7)).findFirst().orElse(new JsonObject());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoOnlyStreams() {
        assertPageFetched();
        return getItags("adaptiveFormats", ItagItem.ItagType.VIDEO_ONLY, new YoutubeStreamExtractor$$ExternalSyntheticLambda1(this, true), "video-only");
    }

    public final JsonObject getVideoPrimaryInfoRenderer() {
        JsonObject jsonObject = this.videoPrimaryInfoRenderer;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonObject videoInfoRenderer = getVideoInfoRenderer("videoPrimaryInfoRenderer");
        this.videoPrimaryInfoRenderer = videoInfoRenderer;
        return videoInfoRenderer;
    }

    public final JsonObject getVideoSecondaryInfoRenderer() {
        JsonObject jsonObject = this.videoSecondaryInfoRenderer;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonObject videoInfoRenderer = getVideoInfoRenderer("videoSecondaryInfoRenderer");
        this.videoSecondaryInfoRenderer = videoInfoRenderer;
        return videoInfoRenderer;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoStreams() {
        assertPageFetched();
        return getItags("formats", ItagItem.ItagType.VIDEO, new YoutubeStreamExtractor$$ExternalSyntheticLambda1(this, false), MimeTypes.BASE_TYPE_VIDEO);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getViewCount() {
        String textFromObject = YoutubeParsingHelper.getTextFromObject(getVideoPrimaryInfoRenderer().getObject("viewCount").getObject("videoViewCountRenderer").getObject("viewCount"), false);
        if (Utils.isNullOrEmpty(textFromObject)) {
            textFromObject = this.playerResponse.getObject("videoDetails").getString("viewCount", null);
            if (Utils.isNullOrEmpty(textFromObject)) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get view count");
                return 0L;
            }
        }
        if (textFromObject.toLowerCase().contains("no views")) {
            return 0L;
        }
        return Long.parseLong(textFromObject.replaceAll("\\D+", ""));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final boolean isUploaderVerified() {
        JsonObject jsonObject;
        JsonObject object = getVideoSecondaryInfoRenderer().getObject("owner").getObject("videoOwnerRenderer");
        if (object.containsKey("badges")) {
            return YoutubeParsingHelper.isVerified(object.getArray("badges"));
        }
        JsonObject object2 = object.getObject("navigationEndpoint");
        String str = YoutubeParsingHelper.clientVersion;
        try {
            jsonObject = ((JsonArray) Parser.getInstanceOf(object2, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems", JsonArray.class)).getObject(0).getObject("listItemViewModel");
        } catch (ParsingException unused) {
            jsonObject = null;
        }
        if (jsonObject == null) {
            return false;
        }
        return jsonObject.getObject("title").getArray("attachmentRuns").streamAsJsonObjects().anyMatch(new JsonArray$$ExternalSyntheticLambda0(17));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String id = this.linkHandler.getId();
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        ContentCountry contentCountry = streamingService.getContentCountry();
        if (poTokenProvider != null) {
            id.getClass();
        }
        Random random = YoutubeParsingHelper.numberGenerator;
        String generate = JavaScript.generate(16, random);
        this.androidCpn = generate;
        Dispatcher dispatcher = new Dispatcher("ANDROID", "21.03.36", "3", "WATCH");
        TokenData tokenData = new TokenData(dispatcher, new RulerTrackingMap(36, "MOBILE", null, null, "Android", "16"), 12);
        Map mobileClientHeaders = Jsoup.getMobileClientHeaders(YoutubeParsingHelper.getAndroidUserAgent(localization));
        dispatcher.runningSyncCalls = YoutubeParsingHelper.getVisitorDataFromInnertube(tokenData, localization, contentCountry, mobileClientHeaders, "https://youtubei.googleapis.com/youtubei/v1/");
        JsonBuilder prepareJsonBuilder = YoutubeParsingHelper.prepareJsonBuilder(localization, contentCountry, tokenData);
        prepareJsonBuilder.object("playerRequest");
        Jsoup.addVideoIdCpnAndOkChecks(prepareJsonBuilder, id, generate);
        prepareJsonBuilder.end();
        prepareJsonBuilder.value("disablePlayerResponse", false);
        byte[] bytes = Jsoup.string((JsonObject) prepareJsonBuilder.root).getBytes(StandardCharsets.UTF_8);
        JsonObject object = Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(Utility.downloader.postWithContentTypeJson(Owner.CC.m("https://youtubei.googleapis.com/youtubei/v1/reel/reel_item_watch?prettyPrint=false&t=", JavaScript.generate(12, random), "&id=", id, "&$fields=playerResponse"), mobileClientHeaders, bytes, localization))).getObject("playerResponse");
        this.playerResponse = object;
        JsonObject object2 = object.getObject("playabilityStatus");
        String string = object2.getString("status", null);
        if (string != null && !string.equalsIgnoreCase("ok")) {
            String string2 = object2.getString("reason", null);
            if (string2 != null) {
                if (string.equalsIgnoreCase("login_required")) {
                    if (string2.contains("inappropriate for some users")) {
                        throw new AgeRestrictedContentException("This age-restricted video cannot be watched anonymously");
                    }
                    if (string2.contains("private")) {
                        throw new PrivateContentException("This video is private");
                    }
                    if (string2.contains("a bot")) {
                        throw new SignInConfirmNotBotException(Owner.CC.m("YouTube probably temporarily blocked anonymous watch access with this IP , got error ", string, ": \"", string2, "\""));
                    }
                }
                if (string.equalsIgnoreCase("unplayable") || string.equalsIgnoreCase("error")) {
                    if (string2.contains("Music Premium")) {
                        throw new YoutubeMusicPremiumContentException("This video is a YouTube Music Premium video");
                    }
                    if (string2.contains("payment")) {
                        throw new PaidContentException("This video is a paid video");
                    }
                    if (string2.contains("members")) {
                        throw new PaidContentException("This video is only available for members of the channel of this video");
                    }
                    if (string2.contains("country")) {
                        throw new GeographicRestrictionException("This video is not available in client's country.");
                    }
                    if (string2.contains("closed") || string2.contains("terminated")) {
                        throw new AccountTerminatedException(string2);
                    }
                }
            }
            throw new ContentNotAvailableException(Owner.CC.m("Got error ", string, ": \"", string2, "\""));
        }
        if (isPlayerResponseNotValid(this.playerResponse, id)) {
            throw new ExtractionException("ANDROID player response is not valid");
        }
        this.androidStreamingData = this.playerResponse.getObject("streamingData");
        this.playerCaptionsTracklistRenderer = this.playerResponse.getObject("captions").getObject("playerCaptionsTracklistRenderer");
        if (this.playerResponse.getObject("playabilityStatus").containsKey("liveStreamability")) {
            this.streamType = StreamType.LIVE_STREAM;
        } else if (this.playerResponse.getObject("videoDetails").getBoolean("isPostLiveDvr")) {
            this.streamType = StreamType.POST_LIVE_STREAM;
        } else {
            this.streamType = StreamType.VIDEO_STREAM;
        }
        try {
            String generate2 = JavaScript.generate(16, random);
            this.visionOsCpn = generate2;
            JsonObject visionOsPlayerResponse = Jsoup.getVisionOsPlayerResponse(id, generate2, contentCountry, localization);
            if (!isPlayerResponseNotValid(visionOsPlayerResponse, id)) {
                this.visionOsStreamingData = visionOsPlayerResponse.getObject("streamingData");
                if (Utils.isNullOrEmpty(this.playerCaptionsTracklistRenderer)) {
                    this.playerCaptionsTracklistRenderer = visionOsPlayerResponse.getObject("captions").getObject("playerCaptionsTracklistRenderer");
                }
            }
        } catch (Exception unused) {
        }
        try {
            JsonObject webMetadataPlayerResponse = Jsoup.getWebMetadataPlayerResponse(localization, contentCountry, id);
            if (!isPlayerResponseNotValid(webMetadataPlayerResponse, id)) {
                this.playerMicroFormatRenderer = webMetadataPlayerResponse.getObject("microformat").getObject("playerMicroformatRenderer");
                JsonObject object3 = webMetadataPlayerResponse.getObject("videoDetails").getObject("thumbnail");
                if (object3.containsKey("thumbnails")) {
                    this.thumbnailsArray = object3.getArray("thumbnails");
                } else {
                    this.thumbnailsArray = this.playerResponse.getObject("videoDetails").getObject("thumbnail").getArray("thumbnails");
                }
            }
        } catch (Exception unused2) {
            this.playerMicroFormatRenderer = new JsonObject();
            this.thumbnailsArray = this.playerResponse.getObject("videoDetails").getObject("thumbnail").getArray("thumbnails");
        }
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, contentCountry);
        prepareDesktopJsonBuilder.value(id, "videoId");
        prepareDesktopJsonBuilder.value("contentCheckOk", true);
        prepareDesktopJsonBuilder.value("racyCheckOk", true);
        this.nextResponse = YoutubeParsingHelper.getJsonPostResponse(ES6Iterator.NEXT_METHOD, Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization);
    }
}
