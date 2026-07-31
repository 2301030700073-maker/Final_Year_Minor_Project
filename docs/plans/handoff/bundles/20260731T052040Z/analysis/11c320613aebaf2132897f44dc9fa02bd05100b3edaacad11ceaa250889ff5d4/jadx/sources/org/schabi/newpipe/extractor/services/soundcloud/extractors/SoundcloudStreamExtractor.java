package org.schabi.newpipe.extractor.services.soundcloud.extractors;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.io.CloseableKt;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.GeographicRestrictionException;
import org.schabi.newpipe.extractor.exceptions.SoundCloudGoPlusContentException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamExtractor$Privacy;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudStreamExtractor extends ListExtractor {
    public boolean isAvailable;
    public JsonObject track;

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAudioStreams() {
        ArrayList arrayList = new ArrayList();
        if (this.track.getBoolean("streamable") && this.isAvailable) {
            try {
                JsonArray array = this.track.getObject("media").getArray("transcodings");
                if (!Utils.isNullOrEmpty(array)) {
                    array.streamAsJsonObjects().forEachOrdered(new PrettyTime$$ExternalSyntheticLambda0(this, arrayList, 4));
                    return arrayList;
                }
            } catch (NullPointerException e) {
                throw new ExtractionException("Could not get audio streams", e);
            }
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getCategory() {
        return this.track.getString("genre", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        return new Description(this.track.getString("description", null), 3);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getId() {
        return String.valueOf(this.track.getLong(TtmlNode.ATTR_ID, 0L));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLength() {
        return this.track.getLong("duration", 0L) / 1000;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getLicence() {
        return this.track.getString("license", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLikeCount() {
        return this.track.getLong("likes_count", -1L);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.track.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamExtractor$Privacy getPrivacy() {
        return this.track.getString("sharing", null).equals("public") ? StreamExtractor$Privacy.PUBLIC : StreamExtractor$Privacy.PRIVATE;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final InfoItemsCollector getRelatedItems() {
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        String id = getId();
        Pattern pattern = Utils.M_PATTERN;
        Charset charset = StandardCharsets.UTF_8;
        SoundcloudParsingHelper.getStreamsFromApi(streamInfoItemsCollector, Owner.CC.m("https://api-v2.soundcloud.com/tracks/", URLEncoder.encode(id, charset), "/related?client_id=", URLEncoder.encode(SoundcloudParsingHelper.clientId(), charset)), false);
        return streamInfoItemsCollector;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamType getStreamType() {
        return StreamType.AUDIO_STREAM;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTags() {
        String[] split = this.track.getString("tag_list", null).split(" ");
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (String str : split) {
            if (str.startsWith("\"")) {
                sb.append(str.replace("\"", ""));
                z = true;
            } else if (z) {
                if (str.endsWith("\"")) {
                    sb.append(" ");
                    sb.append(str.replace("\"", ""));
                    arrayList.add(sb.toString());
                    z = false;
                } else {
                    sb.append(" ");
                    sb.append(str);
                }
            } else if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getTextualUploadDate() {
        return this.track.getString("created_at", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        return SoundcloudParsingHelper.getAllImagesFromTrackObject(this.track);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getTimeStamp() {
        long timestampSeconds = getTimestampSeconds("(#t=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)");
        if (timestampSeconds == -2) {
            return 0L;
        }
        return timestampSeconds;
    }

    public final String getTranscodingUrl(String str) {
        String m = Owner.CC.m(str, "?client_id=", SoundcloudParsingHelper.clientId());
        String string = this.track.getString("track_authorization", null);
        if (!Utils.isNullOrEmpty(string)) {
            m = Owner.CC.m(m, "&track_authorization=", string);
        }
        try {
            return ((JsonObject) JsonParser.object().from((String) Utility.downloader.get(m).mHiddenViews)).getString("url", null);
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse streamable URL", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final DateWrapper getUploadDate() {
        return SoundcloudParsingHelper.parseDate(getTextualUploadDate());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        JsonObject jsonObject = this.track;
        List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
        return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(Utils.replaceHttpWithHttps(jsonObject.getObject("user").getString("avatar_url", "")));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        JsonObject jsonObject = this.track;
        List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
        return jsonObject.getObject("user").getString("username", "");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        JsonObject jsonObject = this.track;
        List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
        return Utils.replaceHttpWithHttps(jsonObject.getObject("user").getString("permalink_url", ""));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoOnlyStreams() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoStreams() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getViewCount() {
        return this.track.getLong("playback_count", 0L);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final boolean isUploaderVerified() {
        return this.track.getObject("user").getBoolean("verified");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String url = this.linkHandler.getUrl();
        List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
        Pattern pattern = Utils.M_PATTERN;
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) closeableKt.get(Owner.CC.m("https://api-v2.soundcloud.com/resolve?url=", URLEncoder.encode(url, StandardCharsets.UTF_8), "&client_id=", SoundcloudParsingHelper.clientId()), null, ServiceList.SoundCloud.getLocalization()).mHiddenViews);
            this.track = jsonObject;
            String string = jsonObject.getString("policy", "");
            if (string.equals("ALLOW") || string.equals("MONETIZE")) {
                return;
            }
            this.isAvailable = false;
            if (string.equals("SNIP")) {
                throw new SoundCloudGoPlusContentException("This track is a SoundCloud Go+ track");
            }
            if (!string.equals("BLOCK")) {
                throw new ContentNotAvailableException("Content not available: policy ".concat(string));
            }
            throw new GeographicRestrictionException("This track is not available in user's country");
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e);
        }
    }
}
