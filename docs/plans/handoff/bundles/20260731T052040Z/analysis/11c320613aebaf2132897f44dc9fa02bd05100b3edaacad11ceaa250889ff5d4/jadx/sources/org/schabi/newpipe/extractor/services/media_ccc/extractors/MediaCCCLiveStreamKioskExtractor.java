package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.util.MimeTypes;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCLiveStreamKioskExtractor implements StreamInfoItemExtractor {
    public final /* synthetic */ int $r8$classId = 1;
    public final JsonObject conferenceInfo;
    public final String group;
    public final Object roomInfo;

    public MediaCCCLiveStreamKioskExtractor(JsonObject jsonObject, String str, JsonObject jsonObject2) {
        this.conferenceInfo = jsonObject;
        this.group = str;
        this.roomInfo = jsonObject2;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ ContentAvailability getContentAvailability() {
        int i = this.$r8$classId;
        return ContentAvailability.UNKNOWN;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                if (!Utils.isNullOrEmpty(((JsonArray) this.roomInfo).getObject(r4.size() - 1).getString("text", null))) {
                    break;
                } else {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get duration");
                    break;
                }
        }
        return 0L;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return RecordTag.m480m((JsonObject) this.roomInfo, "talks", "current", "title", (String) null);
            default:
                String textFromObject = YoutubeParsingHelper.getTextFromObject(this.conferenceInfo.getArray("flexColumns").getObject(0).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text"), false);
                if (!Utils.isNullOrEmpty(textFromObject)) {
                    return textFromObject;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ String getShortDescription() {
        switch (this.$r8$classId) {
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final StreamType getStreamType() {
        switch (this.$r8$classId) {
            case 0:
                Iterator<E> it = ((JsonObject) this.roomInfo).getArray("streams").iterator();
                while (it.hasNext()) {
                    if (MimeTypes.BASE_TYPE_VIDEO.equals(((JsonObject) it.next()).getString("type", null))) {
                        return StreamType.LIVE_STREAM;
                    }
                }
                return StreamType.AUDIO_LIVE_STREAM;
            default:
                return StreamType.VIDEO_STREAM;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getTextualUploadDate() {
        switch (this.$r8$classId) {
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        switch (this.$r8$classId) {
            case 0:
                return MediaCCCParsingHelper.getThumbnailsFromObject((JsonObject) this.roomInfo, "thumb", "poster");
            default:
                try {
                    return YoutubeParsingHelper.getImagesFromThumbnailsArray(this.conferenceInfo.getObject("thumbnail").getObject("musicThumbnailRenderer").getObject("thumbnail").getArray("thumbnails"));
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails", e);
                    return null;
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final DateWrapper getUploadDate() {
        switch (this.$r8$classId) {
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final List getUploaderAvatars() {
        switch (this.$r8$classId) {
        }
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderName() {
        int i = this.$r8$classId;
        Object obj = this.roomInfo;
        switch (i) {
            case 0:
                return this.conferenceInfo.getString("conference", null) + " - " + this.group + " - " + ((JsonObject) obj).getString("display", null);
            default:
                String string = ((JsonArray) obj).getObject(0).getString("text", null);
                if (!Utils.isNullOrEmpty(string)) {
                    return string;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderUrl() {
        int i = this.$r8$classId;
        JsonObject jsonObject = this.conferenceInfo;
        switch (i) {
            case 0:
                return Owner.CC.m("https://media.ccc.de/c/", jsonObject.getString("slug", null));
            default:
                if (this.group.equals("music_videos")) {
                    Iterator<E> it = jsonObject.getObject("menu").getObject("menuRenderer").getArray("items").iterator();
                    while (it.hasNext()) {
                        JsonObject object = ((JsonObject) it.next()).getObject("menuNavigationItemRenderer");
                        if (object.getObject("icon").getString("iconType", "").equals("ARTIST")) {
                            return YoutubeParsingHelper.getUrlFromNavigationEndpoint(object.getObject("navigationEndpoint"));
                        }
                    }
                    return null;
                }
                JsonObject object2 = jsonObject.getArray("flexColumns").getObject(1).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text").getArray("runs").getObject(0);
                if (!object2.containsKey("navigationEndpoint")) {
                    return null;
                }
                String urlFromNavigationEndpoint = YoutubeParsingHelper.getUrlFromNavigationEndpoint(object2.getObject("navigationEndpoint"));
                if (!Utils.isNullOrEmpty(urlFromNavigationEndpoint)) {
                    return urlFromNavigationEndpoint;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader URL");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        switch (this.$r8$classId) {
            case 0:
                return ((JsonObject) this.roomInfo).getString("link", null);
            default:
                String string = this.conferenceInfo.getObject("playlistItemData").getString("videoId", null);
                if (!Utils.isNullOrEmpty(string)) {
                    return Owner.CC.m("https://music.youtube.com/watch?v=", string);
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get URL");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getViewCount() {
        switch (this.$r8$classId) {
            case 0:
                return -1L;
            default:
                if (this.group.equals("music_songs")) {
                    return -1L;
                }
                String string = ((JsonArray) this.roomInfo).getObject(r4.size() - 3).getString("text", null);
                if (Utils.isNullOrEmpty(string)) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get view count");
                    return 0L;
                }
                try {
                    return Utils.mixedNumberWordToLong(string);
                } catch (Parser.RegexException unused) {
                    return 0L;
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isAd() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ boolean isShortFormContent() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isUploaderVerified() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    public MediaCCCLiveStreamKioskExtractor(JsonObject jsonObject, JsonArray jsonArray, String str) {
        this.conferenceInfo = jsonObject;
        this.roomInfo = jsonArray;
        this.group = str;
    }
}
