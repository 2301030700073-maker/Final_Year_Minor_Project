package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import com.google.protobuf.CodedOutputStream$ArrayEncoder;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.ManifestSchemaFactory;
import com.google.protobuf.Protobuf;
import com.google.protobuf.Schema;
import com.google.protobuf.UninitializedMessageException;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.net.URLEncoder;
import j$.util.Base64;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.protos.playlist.PlaylistProtobufContinuation$ContinuationParams;
import org.schabi.newpipe.extractor.services.youtube.protos.playlist.PlaylistProtobufContinuation$PlaylistContinuation;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubePlaylistExtractor extends SearchExtractor {
    public JsonObject browseMetadataResponse;
    public JsonObject initialBrowseContinuationResponse;
    public boolean isNewPlaylistInterface;
    public JsonObject playlistHeader;
    public JsonObject playlistInfo;
    public JsonObject uploaderInfo;

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        return new Description(YoutubeParsingHelper.getTextFromObject(getPlaylistInfo().getObject("description"), true), 1);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        JsonArray array = this.initialBrowseContinuationResponse.getArray("onResponseReceivedActions").getObject(0).getObject("reloadContinuationItemsCommand").getArray("continuationItems");
        if (array.isEmpty()) {
            array = this.initialBrowseContinuationResponse.getArray("onResponseReceivedActions").getObject(0).getObject("appendContinuationItemsAction").getArray("continuationItems");
        }
        JsonArray jsonArray = array;
        boolean anyMatch = getPlaylistHeader().getObject("onDescriptionTap").getObject("commandExecutorCommand").getArray("commands").streamAsJsonObjects().anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(2));
        jsonArray.streamAsJsonObjects().forEach(new YoutubePlaylistExtractor$$ExternalSyntheticLambda1(this, streamInfoItemsCollector, getTimeAgoParser(), anyMatch, this));
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, getNextPageFrom(jsonArray, anyMatch));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        String textFromObject = YoutubeParsingHelper.getTextFromObject(getPlaylistInfo().getObject("title"), false);
        return !Utils.isNullOrEmpty(textFromObject) ? textFromObject : RecordTag.m480m(this.browseMetadataResponse, "microformat", "microformatDataRenderer", "title", (String) null);
    }

    public final Page getNextPageFrom(JsonArray jsonArray, boolean z) {
        String string;
        if (!Utils.isNullOrEmpty(jsonArray)) {
            JsonObject object = jsonArray.getObject(jsonArray.size() - 1);
            if (object.containsKey("continuationItemRenderer")) {
                JsonObject object2 = object.getObject("continuationItemRenderer").getObject("continuationEndpoint");
                if (object2.containsKey("commandExecutorCommand")) {
                    object2 = (JsonObject) object2.getObject("commandExecutorCommand").getArray("commands").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(3)).findFirst().orElse(new JsonObject());
                }
                string = object2.getObject("continuationCommand").getString("token", null);
            } else if (object.containsKey("continuationItemViewModel")) {
                string = RecordTag.m(object, "continuationItemViewModel", "continuationCommand", "innertubeCommand", "continuationCommand").getString("token", null);
            }
            if (!Utils.isNullOrEmpty(string)) {
                StreamingService streamingService = this.service;
                JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(streamingService.getLocalization(), streamingService.getContentCountry());
                prepareDesktopJsonBuilder.value(string, "continuation");
                return new Page(Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), "https://www.youtube.com/youtubei/v1/browse?prettyPrint=false", String.valueOf(z));
            }
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        Comparator comparator = null;
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        StreamingService streamingService = this.service;
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, comparator, 0);
        JsonArray array = YoutubeParsingHelper.getJsonPostResponse("browse", page.getBody(), streamingService.getLocalization()).getArray("onResponseReceivedActions").getObject(0).getObject("appendContinuationItemsAction").getArray("continuationItems");
        boolean parseBoolean = Boolean.parseBoolean(page.getId());
        array.streamAsJsonObjects().forEach(new YoutubePlaylistExtractor$$ExternalSyntheticLambda1(this, streamInfoItemsCollector, getTimeAgoParser(), parseBoolean, this));
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, getNextPageFrom(array, parseBoolean));
    }

    public final JsonObject getPlaylistHeader() {
        if (this.playlistHeader == null) {
            this.playlistHeader = this.browseMetadataResponse.getObject("header").getObject("playlistHeaderRenderer");
        }
        return this.playlistHeader;
    }

    public final JsonObject getPlaylistInfo() {
        if (this.playlistInfo == null) {
            this.playlistInfo = (JsonObject) this.browseMetadataResponse.getObject("sidebar").getObject("playlistSidebarRenderer").getArray("items").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(5)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(15)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(20));
        }
        return this.playlistInfo;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final PlaylistInfo.PlaylistType getPlaylistType() {
        String url = this.linkHandler.getUrl();
        String str = YoutubeParsingHelper.clientVersion;
        try {
            return YoutubeParsingHelper.extractPlaylistTypeFromPlaylistId(Utils.getQueryValue(Utils.stringToURL(url), "list"));
        } catch (MalformedURLException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not extract playlist type from malformed url", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final long getStreamCount() {
        String textFromObject;
        String textFromObject2;
        if (this.isNewPlaylistInterface) {
            String textFromObject3 = YoutubeParsingHelper.getTextFromObject(getPlaylistHeader().getObject("numVideosText"), false);
            if (textFromObject3 != null) {
                try {
                    return Long.parseLong(textFromObject3.replaceAll("\\D+", ""));
                } catch (NumberFormatException unused) {
                }
            }
            String textFromObject4 = YoutubeParsingHelper.getTextFromObject(getPlaylistHeader().getArray("byline").getObject(0).getObject("text"), false);
            if (textFromObject4 != null) {
                try {
                    return Long.parseLong(textFromObject4.replaceAll("\\D+", ""));
                } catch (NumberFormatException unused2) {
                }
            }
        }
        JsonArray array = (this.isNewPlaylistInterface ? getPlaylistHeader() : getPlaylistInfo()).getArray("briefStats");
        if (!array.isEmpty() && (textFromObject2 = YoutubeParsingHelper.getTextFromObject(array.getObject(0), false)) != null) {
            return Long.parseLong(textFromObject2.replaceAll("\\D+", ""));
        }
        JsonArray array2 = (this.isNewPlaylistInterface ? getPlaylistHeader() : getPlaylistInfo()).getArray("stats");
        if (array2.isEmpty() || (textFromObject = YoutubeParsingHelper.getTextFromObject(array2.getObject(0), false)) == null) {
            return -1L;
        }
        return Long.parseLong(textFromObject.replaceAll("\\D+", ""));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        JsonArray array = this.isNewPlaylistInterface ? getPlaylistHeader().getObject("playlistHeaderBanner").getObject("heroPlaylistThumbnailRenderer").getObject("thumbnail").getArray("thumbnails") : this.playlistInfo.getObject("thumbnailRenderer").getObject("playlistVideoThumbnailRenderer").getObject("thumbnail").getArray("thumbnails");
        if (!Utils.isNullOrEmpty(array)) {
            return YoutubeParsingHelper.getImagesFromThumbnailsArray(array);
        }
        JsonArray array2 = this.browseMetadataResponse.getObject("microformat").getObject("microformatDataRenderer").getObject("thumbnail").getArray("thumbnails");
        if (!Utils.isNullOrEmpty(array2)) {
            return YoutubeParsingHelper.getImagesFromThumbnailsArray(array2);
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist thumbnails");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        if (this.isNewPlaylistInterface) {
            return Collections.EMPTY_LIST;
        }
        try {
            return YoutubeParsingHelper.getImagesFromThumbnailsArray(getUploaderInfo().getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist uploader avatars", e);
            return null;
        }
    }

    public final JsonObject getUploaderInfo() {
        if (this.uploaderInfo == null) {
            this.uploaderInfo = (JsonObject) this.browseMetadataResponse.getObject("sidebar").getObject("playlistSidebarRenderer").getArray("items").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(4)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(14)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(19));
        }
        return this.uploaderInfo;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        try {
            return YoutubeParsingHelper.getTextFromObject(this.isNewPlaylistInterface ? getPlaylistHeader().getObject("ownerText") : getUploaderInfo().getObject("title"), false);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist uploader name", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        try {
            return YoutubeParsingHelper.getUrlFromNavigationEndpoint(this.isNewPlaylistInterface ? getPlaylistHeader().getObject("ownerText").getArray("runs").getObject(0).getObject("navigationEndpoint") : getUploaderInfo().getObject("navigationEndpoint"));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist uploader url", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String m;
        String id = this.linkHandler.getId();
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value("VL" + id, "browseId");
        prepareDesktopJsonBuilder.value("wgYCCAA%3D", "params");
        byte[] bytes = Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8);
        boolean z = false;
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{"$fields=sidebar,header,microformat,alerts"}[0];
        List m2 = Owner.CC.m(obj, arrayList, obj, arrayList);
        HashMap youTubeHeaders = YoutubeParsingHelper.getYouTubeHeaders();
        if (m2.isEmpty()) {
            m = "?prettyPrint=false";
        } else {
            StringBuilder sb = new StringBuilder();
            Iterator it = m2.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    } else {
                        sb.append((CharSequence) "&");
                    }
                }
            }
            m = Modifier.CC.m("?", sb.toString(), "&prettyPrint=false");
        }
        JsonObject jsonObject = Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(Utility.downloader.postWithContentTypeJson("https://www.youtube.com/youtubei/v1/browse".concat(m), youTubeHeaders, bytes, localization)));
        this.browseMetadataResponse = jsonObject;
        YoutubeParsingHelper.defaultAlertsCheck(jsonObject);
        if (this.browseMetadataResponse.containsKey("header") && !this.browseMetadataResponse.containsKey("sidebar")) {
            z = true;
        }
        this.isNewPlaylistInterface = z;
        PlaylistProtobufContinuation$PlaylistContinuation.Builder newBuilder = PlaylistProtobufContinuation$PlaylistContinuation.newBuilder();
        PlaylistProtobufContinuation$ContinuationParams.Builder newBuilder2 = PlaylistProtobufContinuation$ContinuationParams.newBuilder();
        newBuilder2.copyOnWrite();
        PlaylistProtobufContinuation$ContinuationParams.m863$$Nest$msetBrowseId((PlaylistProtobufContinuation$ContinuationParams) newBuilder2.instance, "VL" + id);
        newBuilder2.copyOnWrite();
        PlaylistProtobufContinuation$ContinuationParams.m865$$Nest$msetPlaylistId((PlaylistProtobufContinuation$ContinuationParams) newBuilder2.instance, id);
        newBuilder2.copyOnWrite();
        PlaylistProtobufContinuation$ContinuationParams.m864$$Nest$msetContinuationProperties((PlaylistProtobufContinuation$ContinuationParams) newBuilder2.instance);
        GeneratedMessageLite buildPartial = newBuilder2.buildPartial();
        buildPartial.getClass();
        if (!GeneratedMessageLite.isInitialized(buildPartial, true)) {
            throw new UninitializedMessageException();
        }
        newBuilder.copyOnWrite();
        PlaylistProtobufContinuation$PlaylistContinuation.m866$$Nest$msetParameters((PlaylistProtobufContinuation$PlaylistContinuation) newBuilder.instance, (PlaylistProtobufContinuation$ContinuationParams) buildPartial);
        GeneratedMessageLite buildPartial2 = newBuilder.buildPartial();
        buildPartial2.getClass();
        if (!GeneratedMessageLite.isInitialized(buildPartial2, true)) {
            throw new UninitializedMessageException();
        }
        PlaylistProtobufContinuation$PlaylistContinuation playlistProtobufContinuation$PlaylistContinuation = (PlaylistProtobufContinuation$PlaylistContinuation) buildPartial2;
        JsonBuilder prepareDesktopJsonBuilder2 = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        Base64.Encoder urlEncoder = Base64.getUrlEncoder();
        try {
            int serializedSize = playlistProtobufContinuation$PlaylistContinuation.getSerializedSize(null);
            byte[] bArr = new byte[serializedSize];
            CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = new CodedOutputStream$ArrayEncoder(bArr, serializedSize);
            Protobuf protobuf = Protobuf.INSTANCE;
            protobuf.getClass();
            Schema schemaFor = protobuf.schemaFor(playlistProtobufContinuation$PlaylistContinuation.getClass());
            ManifestSchemaFactory manifestSchemaFactory = codedOutputStream$ArrayEncoder.wrapper;
            if (manifestSchemaFactory == null) {
                manifestSchemaFactory = new ManifestSchemaFactory(codedOutputStream$ArrayEncoder);
            }
            schemaFor.writeTo(playlistProtobufContinuation$PlaylistContinuation, manifestSchemaFactory);
            int i = serializedSize - codedOutputStream$ArrayEncoder.position;
            if (i > 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            if (i < 0) {
                throw new IllegalStateException("Wrote more data than expected.");
            }
            String encodeToString = urlEncoder.encodeToString(bArr);
            Charset charset = StandardCharsets.UTF_8;
            prepareDesktopJsonBuilder2.value(URLEncoder.encode(encodeToString, charset), "continuation");
            this.initialBrowseContinuationResponse = YoutubeParsingHelper.getJsonPostResponse("browse", Jsoup.string((JsonObject) prepareDesktopJsonBuilder2.root).getBytes(charset), localization);
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + PlaylistProtobufContinuation$PlaylistContinuation.class.getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }
}
