package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCParsingHelper;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class YoutubeReelInfoItemExtractor implements StreamInfoItemExtractor {
    public final /* synthetic */ int $r8$classId;
    public final Cloneable reelInfo;

    public /* synthetic */ YoutubeReelInfoItemExtractor(Cloneable cloneable, int i) {
        this.$r8$classId = i;
        this.reelInfo = cloneable;
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
                return -1L;
            case 1:
                return 0L;
            case 2:
                return ((JsonObject) this.reelInfo).getInt(0, "length");
            case 3:
                return ((JsonObject) this.reelInfo).getLong("duration", 0L) / 1000;
            case 4:
                return ((JsonObject) this.reelInfo).getInt(-1, "videoDuration");
            default:
                return -1L;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i) {
            case 0:
                return YoutubeParsingHelper.getTextFromObject(((JsonObject) cloneable).getObject("headline"), false);
            case 1:
                return ((JsonObject) cloneable).getString("subtitle", null);
            case 2:
                return ((JsonObject) cloneable).getString("title", null);
            case 3:
                return ((JsonObject) cloneable).getString("title", null);
            case 4:
                return ((JsonObject) cloneable).getString("title", null);
            default:
                return ((Element) ((Element) cloneable).getElementsByTag("title").first$org$jsoup$select$Nodes()).text();
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getShortDescription() {
        switch (this.$r8$classId) {
            case 0:
                return null;
            case 1:
                return ((JsonObject) this.reelInfo).getString("desc", null);
            case 2:
            case 3:
            case 4:
            default:
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final StreamType getStreamType() {
        int i = this.$r8$classId;
        StreamType streamType = StreamType.AUDIO_STREAM;
        StreamType streamType2 = StreamType.VIDEO_STREAM;
        switch (i) {
            case 0:
                return streamType2;
            case 1:
                return streamType;
            case 2:
                return streamType2;
            case 3:
                return streamType;
            case 4:
            default:
                return streamType2;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getTextualUploadDate() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i) {
            case 0:
                return null;
            case 1:
                return ((JsonObject) cloneable).getString("date", null);
            case 2:
                return ((JsonObject) cloneable).getString("release_date", null);
            case 3:
                return ((JsonObject) cloneable).getString("created_at", null);
            case 4:
                return null;
            default:
                return ((Element) ((Element) cloneable).getElementsByTag("published").first$org$jsoup$select$Nodes()).text();
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        int i;
        int i2;
        int i3 = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i3) {
            case 0:
                return YoutubeParsingHelper.getThumbnailsFromInfoItem((JsonObject) cloneable);
            case 1:
                return BandcampExtractorHelper.getImagesFromImageId(((JsonObject) cloneable).getLong("image_id", 0L), false);
            case 2:
                return MediaCCCParsingHelper.getThumbnailsFromObject((JsonObject) cloneable, "thumb_url", "poster_url");
            case 3:
                return SoundcloudParsingHelper.getAllImagesFromTrackObject((JsonObject) cloneable);
            case 4:
                return YoutubeParsingHelper.getThumbnailsFromInfoItem((JsonObject) cloneable);
            default:
                Element element = (Element) ((Element) cloneable).getElementsByTag("media:thumbnail").first$org$jsoup$select$Nodes();
                if (element == null) {
                    return Collections.EMPTY_LIST;
                }
                String attr = element.attr("url");
                if (attr.isEmpty()) {
                    return Collections.EMPTY_LIST;
                }
                String replace = attr.replace("hqdefault", "mqdefault");
                if (replace.equals(attr)) {
                    i2 = -1;
                    try {
                        i = Integer.parseInt(element.attr("height"));
                    } catch (NumberFormatException unused) {
                        i = -1;
                    }
                    try {
                        i2 = Integer.parseInt(element.attr("width"));
                    } catch (NumberFormatException unused2) {
                    }
                } else {
                    i = 320;
                    i2 = 180;
                }
                Object[] objArr = {new Image(replace, i, i2, i <= 0 ? Image.ResolutionLevel.UNKNOWN : i < 175 ? Image.ResolutionLevel.LOW : i < 720 ? Image.ResolutionLevel.MEDIUM : Image.ResolutionLevel.HIGH)};
                ArrayList arrayList = new ArrayList(1);
                Object obj = objArr[0];
                return Owner.CC.m(obj, arrayList, obj, arrayList);
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final DateWrapper getUploadDate() {
        switch (this.$r8$classId) {
            case 0:
                return null;
            case 1:
                return BandcampExtractorHelper.parseDate(getTextualUploadDate());
            case 2:
                return DateWrapper.fromOffsetDateTime(getTextualUploadDate());
            case 3:
                return SoundcloudParsingHelper.parseDate(getTextualUploadDate());
            case 4:
                JsonObject object = ((JsonObject) this.reelInfo).getObject("releaseDate");
                return new DateWrapper(LocalDate.of(object.getInt(0, "year"), object.getInt(0, "month"), object.getInt(0, "day")).atStartOfDay(ZoneOffset.UTC).toInstant(), true);
            default:
                return DateWrapper.fromOffsetDateTime(getTextualUploadDate());
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final List getUploaderAvatars() {
        switch (this.$r8$classId) {
        }
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public String getUploaderName() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i) {
            case 0:
                return null;
            case 1:
                return ((JsonObject) cloneable).getString("title", null);
            case 2:
                return ((JsonObject) cloneable).getString("conference_title", null);
            case 3:
                return ((JsonObject) cloneable).getObject("user").getString("username", null);
            case 4:
                return ((JsonObject) cloneable).getString("channelName", null);
            default:
                return ((Element) ((Element) cloneable).select("author > name").first$org$jsoup$select$Nodes()).text();
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public String getUploaderUrl() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i) {
            case 0:
                return null;
            case 1:
                return "";
            case 2:
                return ((JsonObject) cloneable).getString("conference_url", null);
            case 3:
                return Utils.replaceHttpWithHttps(((JsonObject) cloneable).getObject("user").getString("permalink_url", null));
            case 4:
                String string = ((JsonObject) cloneable).getString("externalChannelId", null);
                if (Utils.isNullOrEmpty(string)) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get channel ID");
                    return null;
                }
                return YoutubeChannelLinkHandlerFactory.INSTANCE.getUrl("channel/" + string);
            default:
                return ((Element) ((Element) cloneable).select("author > uri").first$org$jsoup$select$Nodes()).text();
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i) {
            case 0:
                try {
                    return YoutubeStreamLinkHandlerFactory.INSTANCE.getUrl(((JsonObject) cloneable).getString("videoId", null));
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get URL", e);
                    return null;
                }
            case 1:
                return Modifier.CC.m(((JsonObject) cloneable).getInt(0, TtmlNode.ATTR_ID), "https://bandcamp.com/?show=");
            case 2:
                return Owner.CC.m("https://media.ccc.de/public/events/", ((JsonObject) cloneable).getString("guid", null));
            case 3:
                return Utils.replaceHttpWithHttps(((JsonObject) cloneable).getString("permalink_url", null));
            case 4:
                return YoutubeStreamLinkHandlerFactory.INSTANCE.getUrl(((JsonObject) cloneable).getString(TtmlNode.ATTR_ID, null));
            default:
                return ((Element) ((Element) cloneable).getElementsByTag("link").first$org$jsoup$select$Nodes()).attr("href");
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getViewCount() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.reelInfo;
        switch (i) {
            case 0:
                String textFromObject = YoutubeParsingHelper.getTextFromObject(((JsonObject) cloneable).getObject("viewCountText"), false);
                if (Utils.isNullOrEmpty(textFromObject)) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get short view count");
                    return 0L;
                }
                if (textFromObject.toLowerCase().contains("no views")) {
                    return 0L;
                }
                return Utils.mixedNumberWordToLong(textFromObject);
            case 1:
                return -1L;
            case 2:
                return ((JsonObject) cloneable).getInt(0, "view_count");
            case 3:
                return ((JsonObject) cloneable).getLong("playback_count", 0L);
            case 4:
                return -1L;
            default:
                return Long.parseLong(((Element) ((Element) cloneable).getElementsByTag("media:statistics").first$org$jsoup$select$Nodes()).attr("views"));
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isAd() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isShortFormContent() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public boolean isUploaderVerified() {
        switch (this.$r8$classId) {
            case 0:
                return false;
            case 1:
                return false;
            case 2:
                return false;
            case 3:
                return ((JsonObject) this.reelInfo).getObject("user").getBoolean("verified");
            case 4:
                return false;
            default:
                return false;
        }
    }
}
