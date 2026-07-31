package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.util.Iterator;
import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampAlbumInfoItemExtractor implements PlaylistInfoItemExtractor {
    public final /* synthetic */ int $r8$classId = 2;
    public final Cloneable albumInfoItem;
    public final Object uploaderUrl;

    public BandcampAlbumInfoItemExtractor(JsonObject jsonObject, JsonArray jsonArray, String str) {
        this.albumInfoItem = jsonObject;
        this.uploaderUrl = jsonArray.getObject("music_albums".equals(str) ? 2 : 0);
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
        Cloneable cloneable = this.albumInfoItem;
        switch (i) {
            case 0:
                return ((JsonObject) cloneable).getString("title", null);
            case 1:
                return ((Element) this.uploaderUrl).getElementsByClass("heading").text();
            default:
                String textFromObject = YoutubeParsingHelper.getTextFromObject(((JsonObject) cloneable).getArray("flexColumns").getObject(0).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text"), false);
                if (!Utils.isNullOrEmpty(textFromObject)) {
                    return textFromObject;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final /* synthetic */ PlaylistInfo.PlaylistType getPlaylistType() {
        int i = this.$r8$classId;
        return PlaylistInfo.PlaylistType.NORMAL;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final long getStreamCount() {
        switch (this.$r8$classId) {
            case 0:
                return -1L;
            case 1:
                return Integer.parseInt(((Element) this.uploaderUrl).getElementsByClass("length").text().split(" track")[0]);
            default:
                return -1L;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.albumInfoItem;
        switch (i) {
            case 0:
                return BandcampExtractorHelper.getImagesFromImageId(((JsonObject) cloneable).getLong("art_id", 0L), true);
            case 1:
                return BandcampExtractorHelper.getImagesFromSearchResult((Element) cloneable);
            default:
                try {
                    return YoutubeParsingHelper.getImagesFromThumbnailsArray(((JsonObject) cloneable).getObject("thumbnail").getObject("musicThumbnailRenderer").getObject("thumbnail").getArray("thumbnails"));
                } catch (Exception e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails", e);
                    return null;
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderName() {
        int i = this.$r8$classId;
        Object obj = this.uploaderUrl;
        switch (i) {
            case 0:
                return ((JsonObject) this.albumInfoItem).getString("band_name", null);
            case 1:
                return ((Element) obj).getElementsByClass("subhead").text().split(" by")[0];
            default:
                String string = ((JsonObject) obj).getString("text", null);
                if (!Utils.isNullOrEmpty(string)) {
                    return string;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderUrl() {
        int i = this.$r8$classId;
        Object obj = this.uploaderUrl;
        switch (i) {
            case 0:
                return (String) obj;
            case 1:
                return null;
            default:
                JsonObject jsonObject = (JsonObject) obj;
                Iterator<E> it = ((JsonObject) this.albumInfoItem).getObject("menu").getObject("menuRenderer").getArray("items").iterator();
                while (it.hasNext()) {
                    JsonObject object = ((JsonObject) it.next()).getObject("menuNavigationItemRenderer");
                    if (object.getObject("icon").getString("iconType", "").equals("ARTIST")) {
                        return YoutubeParsingHelper.getUrlFromNavigationEndpoint(object.getObject("navigationEndpoint"));
                    }
                }
                if (jsonObject.containsKey("navigationEndpoint")) {
                    return YoutubeParsingHelper.getUrlFromNavigationEndpoint(jsonObject.getObject("navigationEndpoint"));
                }
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.albumInfoItem;
        switch (i) {
            case 0:
                JsonObject jsonObject = (JsonObject) cloneable;
                return BandcampExtractorHelper.getStreamUrlFromIds(jsonObject.getLong("band_id", 0L), jsonObject.getString("item_type", null), jsonObject.getLong("item_id", 0L));
            case 1:
                return ((Element) this.uploaderUrl).getElementsByClass("itemurl").text();
            default:
                JsonObject jsonObject2 = (JsonObject) cloneable;
                String string = RecordTag.m(jsonObject2.getObject("menu").getObject("menuRenderer").getArray("items").getObject(4), "toggleMenuServiceItemRenderer", "toggledServiceEndpoint", "likeEndpoint", "target").getString("playlistId", null);
                if (Utils.isNullOrEmpty(string)) {
                    string = RecordTag.m480m(RecordTag.m(jsonObject2, "overlay", "musicItemThumbnailOverlayRenderer", "content", "musicPlayButtonRenderer"), "playNavigationEndpoint", "watchPlaylistEndpoint", "playlistId", (String) null);
                }
                if (!Utils.isNullOrEmpty(string)) {
                    return Owner.CC.m("https://music.youtube.com/playlist?list=", string);
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get URL");
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final boolean isUploaderVerified() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    public BandcampAlbumInfoItemExtractor(JsonObject jsonObject, String str) {
        this.albumInfoItem = jsonObject;
        this.uploaderUrl = str;
    }

    public BandcampAlbumInfoItemExtractor(Element element) {
        this.albumInfoItem = element;
        this.uploaderUrl = (Element) element.getElementsByClass("result-info").first$org$jsoup$select$Nodes();
    }
}
