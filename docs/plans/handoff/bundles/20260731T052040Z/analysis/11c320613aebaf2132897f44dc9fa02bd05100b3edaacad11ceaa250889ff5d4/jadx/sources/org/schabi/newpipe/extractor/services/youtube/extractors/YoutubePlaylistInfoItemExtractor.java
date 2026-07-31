package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class YoutubePlaylistInfoItemExtractor implements PlaylistInfoItemExtractor {
    public final /* synthetic */ int $r8$classId;
    public final JsonObject playlistInfoItem;

    public /* synthetic */ YoutubePlaylistInfoItemExtractor(JsonObject jsonObject, int i) {
        this.$r8$classId = i;
        this.playlistInfoItem = jsonObject;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final Description getDescription() {
        switch (this.$r8$classId) {
        }
        return Description.EMPTY_DESCRIPTION;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        int i = this.$r8$classId;
        JsonObject jsonObject = this.playlistInfoItem;
        switch (i) {
            case 0:
                try {
                    return YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("title"), false);
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get name", e);
                    return null;
                }
            case 1:
                return jsonObject.getString("album_title", null);
            case 2:
                return jsonObject.getString("title", null);
            default:
                String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("title"), false);
                if (!Utils.isNullOrEmpty(textFromObject)) {
                    return textFromObject;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final PlaylistInfo.PlaylistType getPlaylistType() {
        int i = this.$r8$classId;
        PlaylistInfo.PlaylistType playlistType = PlaylistInfo.PlaylistType.NORMAL;
        switch (i) {
            case 0:
            case 1:
            case 2:
                return playlistType;
            default:
                String url = getUrl();
                String str = YoutubeParsingHelper.clientVersion;
                try {
                    return YoutubeParsingHelper.extractPlaylistTypeFromPlaylistId(Utils.getQueryValue(Utils.stringToURL(url), "list"));
                } catch (MalformedURLException e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not extract playlist type from malformed url", e);
                    return null;
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final long getStreamCount() {
        int i = this.$r8$classId;
        JsonObject jsonObject = this.playlistInfoItem;
        switch (i) {
            case 0:
                String string = jsonObject.getString("videoCount", null);
                if (string == null) {
                    string = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("videoCountText"), false);
                }
                if (string == null) {
                    string = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("videoCountShortText"), false);
                }
                if (string == null) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get stream count");
                    return 0L;
                }
                try {
                    Pattern pattern = Utils.M_PATTERN;
                    return Long.parseLong(string.replaceAll("\\D+", ""));
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get stream count", e);
                    return 0L;
                }
            case 1:
                return jsonObject.getInt(0, "num_streamable_tracks");
            case 2:
                return jsonObject.getLong("track_count", 0L);
            default:
                if (YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("videoCountShortText"), false) != null) {
                    try {
                        return Integer.parseInt(r6);
                    } catch (NumberFormatException unused) {
                        return -2L;
                    }
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not extract item count for playlist/mix info item");
                return 0L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Exception, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r8v9, types: [com.grack.nanojson.JsonObject] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x006c -> B:21:0x007f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x007a -> B:21:0x007f). Please report as a decompilation issue!!! */
    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        Iterator it;
        int i = this.$r8$classId;
        ?? r1 = 0;
        r1 = 0;
        JsonObject jsonObject = this.playlistInfoItem;
        switch (i) {
            case 0:
                try {
                    JsonArray array = jsonObject.getArray("thumbnails").getObject(0).getArray("thumbnails");
                    if (array.isEmpty()) {
                        array = jsonObject.getObject("thumbnail").getArray("thumbnails");
                    }
                    return YoutubeParsingHelper.getImagesFromThumbnailsArray(array);
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails", e);
                    return null;
                }
            case 1:
                return jsonObject.containsKey("art_id") ? BandcampExtractorHelper.getImagesFromImageId(jsonObject.getLong("art_id", 0L), true) : BandcampExtractorHelper.getImagesFromImageId(jsonObject.getLong("item_art_id", 0L), true);
            case 2:
                String str = "avatar_url";
                if (jsonObject.get("artwork_url") instanceof String) {
                    String string = jsonObject.getString("artwork_url", null);
                    if (!Utils.isNullOrEmpty(string)) {
                        return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(string);
                    }
                }
                try {
                    it = jsonObject.getArray("tracks").iterator();
                } catch (Exception unused) {
                }
                while (true) {
                    if (it.hasNext()) {
                        JsonObject jsonObject2 = (JsonObject) it.next();
                        if (jsonObject2.get("artwork_url") instanceof String) {
                            String string2 = jsonObject2.getString("artwork_url", null);
                            if (!Utils.isNullOrEmpty(string2)) {
                                r1 = SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(string2);
                                jsonObject = jsonObject;
                            }
                        }
                        String string3 = jsonObject2.getObject("user").getString("avatar_url", null);
                        if (!Utils.isNullOrEmpty(string3)) {
                            r1 = SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(string3);
                            jsonObject = jsonObject;
                        }
                    }
                    try {
                        ?? string4 = jsonObject.getObject("user").getString(str, r1);
                        r1 = SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(string4);
                        jsonObject = string4;
                    } catch (Exception e2) {
                        str = "Failed to extract playlist thumbnails";
                        Utils$$ExternalSyntheticBUOutline0.m("Failed to extract playlist thumbnails", e2);
                        r1 = r1;
                        jsonObject = e2;
                    }
                }
                return r1;
            default:
                return YoutubeParsingHelper.getThumbnailsFromInfoItem(jsonObject);
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public String getUploaderName() {
        int i = this.$r8$classId;
        JsonObject jsonObject = this.playlistInfoItem;
        switch (i) {
            case 0:
                try {
                    return YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("longBylineText"), false);
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name", e);
                    return null;
                }
            case 1:
                return jsonObject.getString("band_name", null);
            case 2:
                try {
                    return jsonObject.getObject("user").getString("username", null);
                } catch (Exception e2) {
                    Utils$$ExternalSyntheticBUOutline0.m("Failed to extract playlist uploader", e2);
                    return null;
                }
            default:
                return YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("longBylineText"), false);
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public String getUploaderUrl() {
        switch (this.$r8$classId) {
            case 0:
                try {
                    return YoutubeParsingHelper.getUrlFromObject(this.playlistInfoItem.getObject("longBylineText"));
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader url", e);
                    return null;
                }
            case 1:
                return null;
            case 2:
                return this.playlistInfoItem.getObject("user").getString("permalink_url", null);
            default:
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        int i = this.$r8$classId;
        JsonObject jsonObject = this.playlistInfoItem;
        switch (i) {
            case 0:
                try {
                    String string = jsonObject.getString("playlistId", null);
                    new ArrayList(0);
                    return "https://www.youtube.com/playlist?list=" + string;
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get url", e);
                    return null;
                }
            case 1:
                return Utils.replaceHttpWithHttps(jsonObject.getString("item_url", null));
            case 2:
                return Utils.replaceHttpWithHttps(jsonObject.getString("permalink_url", null));
            default:
                String string2 = jsonObject.getString("shareUrl", null);
                if (!Utils.isNullOrEmpty(string2)) {
                    return string2;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get url");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public boolean isUploaderVerified() {
        int i = this.$r8$classId;
        JsonObject jsonObject = this.playlistInfoItem;
        switch (i) {
            case 0:
                try {
                    return YoutubeParsingHelper.isVerified(jsonObject.getArray("ownerBadges"));
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader verification info", e);
                    return false;
                }
            case 1:
                return false;
            case 2:
                return jsonObject.getObject("user").getBoolean("verified");
            default:
                return false;
        }
    }
}
