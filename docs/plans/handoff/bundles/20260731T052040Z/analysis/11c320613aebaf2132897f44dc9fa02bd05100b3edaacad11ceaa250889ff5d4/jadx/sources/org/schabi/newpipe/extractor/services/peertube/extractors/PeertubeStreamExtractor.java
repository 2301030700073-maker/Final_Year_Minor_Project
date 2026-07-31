package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import androidx.recyclerview.widget.ChildHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.collect.Sets$2$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.net.URLEncoder;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.peertube.PeertubeService;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.Frameset;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamExtractor$Privacy;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeStreamExtractor extends ListExtractor {
    public final ArrayList audioStreams;
    public final String baseUrl;
    public JsonObject json;
    public final ArrayList subtitles;
    public ParsingException subtitlesException;
    public final ArrayList videoStreams;

    public PeertubeStreamExtractor(PeertubeService peertubeService, LinkHandler linkHandler) {
        super(peertubeService, linkHandler, 2);
        this.subtitles = new ArrayList();
        this.audioStreams = new ArrayList();
        this.videoStreams = new ArrayList();
        this.subtitlesException = null;
        this.baseUrl = this.linkHandler.getBaseUrl();
    }

    public static String getHlsPlaylistUrlFromFragmentedFileUrl(JsonObject jsonObject, String str, String str2, String str3) {
        if ("fileDownloadUrl".equals(str)) {
            str3 = (String) Parser.getInstanceOf(jsonObject, "fileUrl", String.class);
        }
        return str3.replace("-fragmented.".concat(str2), ".m3u8");
    }

    public final void addNewAudioStream(JsonObject jsonObject, boolean z, String str, String str2, String str3, String str4) {
        String substring = str3.substring(str3.lastIndexOf(".") + 1);
        MediaFormat fromSuffix = MediaFormat.getFromSuffix(substring);
        String m = Owner.CC.m(str, "-", substring);
        AudioStream.Builder builder = new AudioStream.Builder();
        builder.id = m + "-" + str2 + "-" + DeliveryMethod.PROGRESSIVE_HTTP;
        builder.content = str3;
        builder.isUrl = true;
        builder.mediaFormat = fromSuffix;
        builder.averageBitrate = -1;
        AudioStream build = builder.build();
        ArrayList arrayList = this.audioStreams;
        arrayList.add(build);
        if (!Utils.isNullOrEmpty(str4)) {
            String hlsPlaylistUrlFromFragmentedFileUrl = z ? getHlsPlaylistUrlFromFragmentedFileUrl(jsonObject, str2, substring, str3) : str4.replace("master", ((Number) Parser.getInstanceOf(jsonObject, "resolution.id", Number.class)).toString());
            AudioStream.Builder builder2 = new AudioStream.Builder();
            StringBuilder sb = new StringBuilder();
            sb.append(m);
            sb.append("-");
            DeliveryMethod deliveryMethod = DeliveryMethod.HLS;
            sb.append(deliveryMethod);
            builder2.id = sb.toString();
            builder2.content = hlsPlaylistUrlFromFragmentedFileUrl;
            builder2.isUrl = true;
            builder2.deliveryMethod = deliveryMethod;
            builder2.mediaFormat = fromSuffix;
            builder2.averageBitrate = -1;
            builder2.manifestUrl = str4;
            AudioStream build2 = builder2.build();
            if (!Stream.containSimilarStream(build2, arrayList)) {
                arrayList.add(build2);
            }
        }
        String str5 = (String) Parser.getInstanceOf(jsonObject, "torrentUrl", String.class);
        if (Utils.isNullOrEmpty(str5)) {
            return;
        }
        AudioStream.Builder builder3 = new AudioStream.Builder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m);
        sb2.append("-");
        sb2.append(str2);
        sb2.append("-");
        DeliveryMethod deliveryMethod2 = DeliveryMethod.TORRENT;
        sb2.append(deliveryMethod2);
        builder3.id = sb2.toString();
        builder3.content = str5;
        builder3.isUrl = true;
        builder3.deliveryMethod = deliveryMethod2;
        builder3.mediaFormat = fromSuffix;
        builder3.averageBitrate = -1;
        arrayList.add(builder3.build());
    }

    public final void addNewVideoStream(JsonObject jsonObject, boolean z, String str, String str2, String str3, String str4) {
        String str5;
        String str6;
        String str7;
        String replace;
        String substring = str3.substring(str3.lastIndexOf(".") + 1);
        MediaFormat fromSuffix = MediaFormat.getFromSuffix(substring);
        String m = Owner.CC.m(str, "-", substring);
        boolean z2 = jsonObject.containsKey("hasAudio") && !jsonObject.getBoolean("hasAudio");
        StringBuilder sb = new StringBuilder();
        sb.append(m);
        sb.append("-");
        sb.append(str2);
        sb.append("-");
        DeliveryMethod deliveryMethod = DeliveryMethod.PROGRESSIVE_HTTP;
        sb.append(deliveryMethod);
        VideoStream videoStream = new VideoStream(sb.toString(), str3, true, fromSuffix, deliveryMethod, str, z2, null, null);
        ArrayList arrayList = this.videoStreams;
        arrayList.add(videoStream);
        if (Utils.isNullOrEmpty(str4)) {
            str5 = "-";
            str6 = m;
        } else {
            if (z) {
                replace = getHlsPlaylistUrlFromFragmentedFileUrl(jsonObject, str2, substring, str3);
                str7 = str4;
            } else {
                str7 = str4;
                replace = str7.replace("master", ((Number) Parser.getInstanceOf(jsonObject, "resolution.id", Number.class)).toString());
            }
            String str8 = replace;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m);
            sb2.append("-");
            DeliveryMethod deliveryMethod2 = DeliveryMethod.HLS;
            sb2.append(deliveryMethod2);
            String sb3 = sb2.toString();
            if (str8 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
                return;
            }
            str5 = "-";
            str6 = m;
            VideoStream videoStream2 = new VideoStream(sb3, str8, true, fromSuffix, deliveryMethod2, str, z2, str7, null);
            if (!Stream.containSimilarStream(videoStream2, arrayList)) {
                arrayList.add(videoStream2);
            }
        }
        String str9 = (String) Parser.getInstanceOf(jsonObject, "torrentUrl", String.class);
        if (Utils.isNullOrEmpty(str9)) {
            return;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str6);
        sb4.append(str5);
        sb4.append(str2);
        sb4.append(str5);
        DeliveryMethod deliveryMethod3 = DeliveryMethod.TORRENT;
        sb4.append(deliveryMethod3);
        String sb5 = sb4.toString();
        if (str9 != null) {
            arrayList.add(new VideoStream(sb5, str9, true, fromSuffix, deliveryMethod3, str, z2, null, null));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
        }
    }

    public final JsonObject fetchSubApiContent(String str) {
        ChildHelper childHelper = this.downloader.get(this.baseUrl + "/api/v1/videos/" + this.linkHandler.getId() + "/" + str);
        int i = childHelper.mRemoveStatus;
        if (i == 400) {
            return null;
        }
        if (i != 200) {
            throw new ParsingException(Modifier.CC.m(i, "Could not get segments from API. Response code: "));
        }
        try {
            return (JsonObject) JsonParser.object().from((String) childHelper.mHiddenViews);
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for segments", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final int getAgeLimit() {
        return ((Boolean) Parser.getInstanceOf(this.json, "nsfw", Boolean.class)).booleanValue() ? 18 : 0;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAudioStreams() {
        assertPageFetched();
        ArrayList arrayList = this.audioStreams;
        if (arrayList.isEmpty() && this.videoStreams.isEmpty() && getStreamType() == StreamType.VIDEO_STREAM) {
            getStreams();
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getCategory() {
        return (String) Parser.getInstanceOf(this.json, "category.label", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        try {
            String str = (String) Parser.getInstanceOf(this.json, "description", String.class);
            if (str.length() == 250 && str.substring(247).equals("...")) {
                try {
                    str = (String) Parser.getInstanceOf((JsonObject) JsonParser.object().from((String) Utility.downloader.get(this.baseUrl + "/api/v1/videos/" + this.linkHandler.getId() + "/description").mHiddenViews), "description", String.class);
                } catch (JsonParserException | IOException | ReCaptchaException unused) {
                }
            }
            return new Description(str, 2);
        } catch (ParsingException unused2) {
            return Description.EMPTY_DESCRIPTION;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getDislikeCount() {
        return this.json.getLong("dislikes", 0L);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getFrames() {
        ArrayList arrayList = new ArrayList();
        try {
            JsonObject fetchSubApiContent = fetchSubApiContent("storyboards");
            if (fetchSubApiContent != null && fetchSubApiContent.containsKey("storyboards")) {
                Iterator<E> it = fetchSubApiContent.getArray("storyboards").iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof JsonObject) {
                        JsonObject jsonObject = (JsonObject) next;
                        String string = jsonObject.getString("storyboardPath", null);
                        int i = jsonObject.getInt(0, "spriteWidth");
                        int i2 = jsonObject.getInt(0, "spriteHeight");
                        int i3 = jsonObject.getInt(0, "totalWidth") / i;
                        int i4 = jsonObject.getInt(0, "totalHeight") / i2;
                        int i5 = jsonObject.getInt(0, "spriteDuration") * 1000;
                        Object[] objArr = {Owner.CC.m$1(this.baseUrl, string)};
                        ArrayList arrayList2 = new ArrayList(1);
                        Object obj = objArr[0];
                        arrayList.add(new Frameset(Owner.CC.m(obj, arrayList2, obj, arrayList2), i, i2, i3 * i4, i5, i3, i4));
                    }
                }
            }
            return arrayList;
        } catch (IOException | ReCaptchaException e) {
            throw new ExtractionException("Could not get frames", e);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getHlsUrl() {
        assertPageFetched();
        return (getStreamType() != StreamType.VIDEO_STREAM || Utils.isNullOrEmpty(this.json.getObject("files"))) ? this.json.getArray("streamingPlaylists").getObject(0).getString("playlistUrl", "") : this.json.getObject("files").getString("playlistUrl", "");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getHost() {
        return (String) Parser.getInstanceOf(this.json, "account.host", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final Locale getLanguageInfo() {
        try {
            return new Locale((String) Parser.getInstanceOf(this.json, "language.id", String.class));
        } catch (ParsingException unused) {
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLength() {
        return this.json.getLong("duration", 0L);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getLicence() {
        return (String) Parser.getInstanceOf(this.json, "licence.label", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLikeCount() {
        return this.json.getLong("likes", 0L);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return (String) Parser.getInstanceOf(this.json, "name", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamExtractor$Privacy getPrivacy() {
        int i = this.json.getObject("privacy").getInt(0, TtmlNode.ATTR_ID);
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? StreamExtractor$Privacy.OTHER : StreamExtractor$Privacy.INTERNAL : StreamExtractor$Privacy.PRIVATE : StreamExtractor$Privacy.UNLISTED : StreamExtractor$Privacy.PUBLIC;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final InfoItemsCollector getRelatedItems() {
        String str;
        JsonObject jsonObject;
        List<String> tags = getTags();
        boolean isEmpty = tags.isEmpty();
        String str2 = this.baseUrl;
        if (isEmpty) {
            str = str2 + "/api/v1/accounts/" + ((String) Parser.getInstanceOf(this.json, "account.name", String.class)) + "@" + ((String) Parser.getInstanceOf(this.json, "account.host", String.class)) + "/videos?start=0&count=8";
        } else {
            String m$1 = Owner.CC.m$1(str2, "/api/v1/search/videos");
            StringBuilder sb = new StringBuilder("start=0&count=8&sort=-createdAt");
            for (String str3 : tags) {
                sb.append("&tagsOneOf=");
                Pattern pattern = Utils.M_PATTERN;
                sb.append(URLEncoder.encode(str3, StandardCharsets.UTF_8));
            }
            str = m$1 + "?" + ((Object) sb);
        }
        if (Utils.isBlank(str)) {
            return null;
        }
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        String str4 = (String) this.downloader.get(str).mHiddenViews;
        if (Utils.isBlank(str4)) {
            jsonObject = null;
        } else {
            try {
                jsonObject = (JsonObject) JsonParser.object().from(str4);
            } catch (JsonParserException e) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for related videos", e);
                return null;
            }
        }
        if (jsonObject != null) {
            try {
                Iterator<E> it = ((JsonArray) Parser.getValue(jsonObject, "data")).iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof JsonObject) {
                        PeertubeStreamInfoItemExtractor peertubeStreamInfoItemExtractor = new PeertubeStreamInfoItemExtractor((JsonObject) next, str2);
                        if (!peertubeStreamInfoItemExtractor.getUrl().equals(this.linkHandler.getUrl())) {
                            streamInfoItemsCollector.commit((StreamInfoItemExtractor) peertubeStreamInfoItemExtractor);
                        }
                    }
                }
            } catch (Exception e2) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not extract related videos", e2);
                return null;
            }
        }
        return streamInfoItemsCollector;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getStreamSegments() {
        ArrayList arrayList = new ArrayList();
        try {
            JsonObject fetchSubApiContent = fetchSubApiContent("chapters");
            if (fetchSubApiContent != null && fetchSubApiContent.containsKey("chapters")) {
                JsonArray array = fetchSubApiContent.getArray("chapters");
                for (int i = 0; i < array.size(); i++) {
                    JsonObject object = array.getObject(i);
                    arrayList.add(new StreamSegment(object.getString("title", null), object.getInt(0, "timecode")));
                }
            }
            return arrayList;
        } catch (IOException | ReCaptchaException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get stream segments", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamType getStreamType() {
        return this.json.getBoolean("isLive") ? StreamType.LIVE_STREAM : StreamType.VIDEO_STREAM;
    }

    public final void getStreams() {
        getStreamsFromArray(this.json.getArray("files"), "");
        try {
            for (JsonObject jsonObject : this.json.getArray("streamingPlaylists").streamAsJsonObjects()) {
                getStreamsFromArray(jsonObject.getArray("files"), jsonObject.getString("playlistUrl", null));
            }
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get streams", e);
        }
    }

    public final void getStreamsFromArray(JsonArray jsonArray, String str) {
        PeertubeStreamExtractor peertubeStreamExtractor;
        String str2;
        try {
            boolean z = !Utils.isNullOrEmpty(str) && str.endsWith("-master.m3u8");
            for (JsonObject jsonObject : jsonArray.streamAsJsonObjects()) {
                String str3 = (String) Parser.getInstanceOf(jsonObject, jsonObject.containsKey("fileUrl") ? "fileUrl" : "fileDownloadUrl", String.class);
                if (Utils.isNullOrEmpty(str3)) {
                    return;
                }
                String str4 = (String) Parser.getInstanceOf(jsonObject, "resolution.label", String.class);
                String str5 = jsonObject.containsKey("fileUrl") ? "fileUrl" : "fileDownloadUrl";
                if (str4.toLowerCase().contains(MimeTypes.BASE_TYPE_AUDIO)) {
                    peertubeStreamExtractor = this;
                    str2 = str;
                    peertubeStreamExtractor.addNewAudioStream(jsonObject, z, str4, str5, str3, str2);
                } else {
                    peertubeStreamExtractor = this;
                    str2 = str;
                    peertubeStreamExtractor.addNewVideoStream(jsonObject, z, str4, str5, str3, str2);
                }
                this = peertubeStreamExtractor;
                str = str2;
            }
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get streams from array", e);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getSubChannelAvatars() {
        return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.json.getObject("channel"), this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getSubChannelName() {
        return (String) Parser.getInstanceOf(this.json, "channel.displayName", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getSubChannelUrl() {
        return (String) Parser.getInstanceOf(this.json, "channel.url", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getSubtitles(MediaFormat mediaFormat) {
        ParsingException parsingException = this.subtitlesException;
        if (parsingException == null) {
            return (List) Collection.EL.stream(this.subtitles).filter(new Sets$2$$ExternalSyntheticLambda0(mediaFormat, 1)).collect(Collectors.toList());
        }
        throw parsingException;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getSubtitlesDefault() {
        ParsingException parsingException = this.subtitlesException;
        if (parsingException == null) {
            return this.subtitles;
        }
        throw parsingException;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getSupportInfo() {
        try {
            return (String) Parser.getInstanceOf(this.json, "support", String.class);
        } catch (ParsingException unused) {
            return "";
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTags() {
        return Parser.getStringListFromJsonArray(this.json.getArray("tags"));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getTextualUploadDate() {
        return (String) Parser.getInstanceOf(this.json, "publishedAt", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        return BundleKt.getThumbnailsFromPlaylistOrVideoItem(this.json, this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getTimeStamp() {
        long timestampSeconds = getTimestampSeconds("((#|&|\\?)start=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)");
        if (timestampSeconds == -2) {
            return 0L;
        }
        return timestampSeconds;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final DateWrapper getUploadDate() {
        return DateWrapper.fromInstant(getTextualUploadDate());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.json.getObject("account"), this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        return (String) Parser.getInstanceOf(this.json, "account.displayName", String.class);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        return this.service.getChannelLHFactory().fromId(Owner.CC.m("accounts/", (String) Parser.getInstanceOf(this.json, "account.name", String.class), "@", (String) Parser.getInstanceOf(this.json, "account.host", String.class)), this.baseUrl).getUrl();
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoOnlyStreams() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoStreams() {
        assertPageFetched();
        ArrayList arrayList = this.videoStreams;
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        if (getStreamType() == StreamType.VIDEO_STREAM) {
            getStreams();
            return arrayList;
        }
        try {
            j$.util.stream.Stream map = this.json.getArray("streamingPlaylists").streamAsJsonObjects().map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(15));
            Objects.requireNonNull(arrayList);
            map.forEachOrdered(new Player$$ExternalSyntheticLambda1(arrayList, 5));
            return arrayList;
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get video streams", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getViewCount() {
        return this.json.getLong("views", 0L);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        LinkHandler linkHandler = this.linkHandler;
        String id = linkHandler.getId();
        StringBuilder sb = new StringBuilder();
        String str = this.baseUrl;
        sb.append(str);
        sb.append("/api/v1/videos/");
        sb.append(id);
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) closeableKt.get(sb.toString()).mHiddenViews);
            this.json = jsonObject;
            if (jsonObject == null) {
                throw new ExtractionException("Could not extract PeerTube stream data");
            }
            BundleKt.validate(jsonObject);
            ArrayList arrayList = this.subtitles;
            if (arrayList.isEmpty()) {
                try {
                    Iterator<E> it = ((JsonArray) Parser.getInstanceOf((JsonObject) JsonParser.object().from((String) this.downloader.get(str + "/api/v1/videos/" + linkHandler.getId() + "/captions").mHiddenViews), "data", JsonArray.class)).iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (next instanceof JsonObject) {
                            JsonObject jsonObject2 = (JsonObject) next;
                            String str2 = str + ((String) Parser.getInstanceOf(jsonObject2, "captionPath", String.class));
                            String str3 = (String) Parser.getInstanceOf(jsonObject2, "language.id", String.class);
                            MediaFormat fromSuffix = MediaFormat.getFromSuffix(str2.substring(str2.lastIndexOf(".") + 1));
                            if (fromSuffix != null && !Utils.isNullOrEmpty(str3)) {
                                if (str3 == null) {
                                    throw new IllegalStateException("The language code of the subtitles stream has been not set or is null. Make sure you specified an non null language code with setLanguageCode.");
                                }
                                arrayList.add(new SubtitlesStream(str3.concat("." + fromSuffix.suffix), str2, true, fromSuffix, str3, false));
                            }
                        }
                    }
                } catch (Exception e) {
                    this.subtitlesException = new ParsingException("Could not get subtitles", e);
                }
            }
        } catch (JsonParserException e2) {
            throw new ExtractionException("Could not extract PeerTube stream data", e2);
        }
    }
}
