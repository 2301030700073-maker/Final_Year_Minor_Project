package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.util.MimeTypes;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import kotlin.io.CloseableKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BandcampStreamExtractor extends ListExtractor {
    public final /* synthetic */ int $r8$classId;
    public JsonObject albumJson;
    public JsonObject current;
    public Object document;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BandcampStreamExtractor(StreamingService streamingService, LinkHandler linkHandler, int i) {
        super(streamingService, linkHandler, 2);
        this.$r8$classId = i;
    }

    public static JsonObject getAlbumInfoJson(String str) {
        try {
            return Parser.getJsonData(str, "data-tralbum");
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Faulty JSON; page likely does not contain album data", e);
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            Utils$$ExternalSyntheticBUOutline0.m("JSON does not exist", e2);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public List getAudioStreams() {
        switch (this.$r8$classId) {
            case 0:
                AudioStream.Builder builder = new AudioStream.Builder();
                builder.id = "mp3-128";
                builder.content = this.albumJson.getArray("trackinfo").getObject(0).getObject("file").getString("mp3-128", null);
                builder.isUrl = true;
                builder.mediaFormat = MediaFormat.MP3;
                builder.averageBitrate = 128;
                return Collections.singletonList(builder.build());
            default:
                return getStreams(MimeTypes.BASE_TYPE_AUDIO, new YoutubeChannelHelper$$ExternalSyntheticLambda2(8));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getCategory() {
        switch (this.$r8$classId) {
            case 0:
                return (String) Collection.EL.stream(((Document) this.document).getElementsByClass("tralbum-tags")).flatMap(new YoutubeChannelHelper$$ExternalSyntheticLambda2(4)).map(new Nodes$$ExternalSyntheticLambda0(10)).findFirst().orElse("");
            default:
                return (String) this.document;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getDashMpdUrl() {
        switch (this.$r8$classId) {
            case 1:
                return getManifestOfDeliveryMethodWanted("dash");
            default:
                return super.getDashMpdUrl();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public Description mo861getDescription() {
        switch (this.$r8$classId) {
            case 0:
                return new Description(Utils.nonEmptyAndNullJoin(this.current.getString("about", null), this.current.getString("lyrics", null), this.current.getString("credits", null)), 3);
            default:
                return new Description(Owner.CC.m(this.albumJson.getString("description", null), " - ", (String) this.document), 3);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getHlsUrl() {
        switch (this.$r8$classId) {
            case 1:
                return getManifestOfDeliveryMethodWanted("hls");
            default:
                return super.getHlsUrl();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public long getLength() {
        switch (this.$r8$classId) {
            case 0:
                V v = this.albumJson.getArray("trackinfo").getObject(0).get("duration");
                return (long) (v instanceof Number ? ((Number) v).doubleValue() : 0.0d);
            default:
                return super.getLength();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getLicence() {
        switch (this.$r8$classId) {
            case 0:
                switch (this.current.getInt(0, "license_type")) {
                    case 1:
                        return "All rights reserved ©";
                    case 2:
                        return "CC BY-NC-ND 3.0";
                    case 3:
                        return "CC BY-NC-SA 3.0";
                    case 4:
                        return "CC BY-NC 3.0";
                    case 5:
                        return "CC BY-ND 3.0";
                    case 6:
                        return "CC BY 3.0";
                    case 7:
                    default:
                        return "Unknown";
                    case 8:
                        return "CC BY-SA 3.0";
                }
            default:
                return super.getLicence();
        }
    }

    public String getManifestOfDeliveryMethodWanted(String str) {
        return (String) this.current.getArray("streams").streamAsJsonObjects().map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(9)).filter(new NewPipe$$ExternalSyntheticLambda2(str, 4)).map(new ListHelper$$ExternalSyntheticLambda3(str, 2)).findFirst().orElse("");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getName() {
        switch (this.$r8$classId) {
            case 0:
                return this.current.getString("title", null);
            default:
                return this.current.getString("display", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public StreamInfoItemsCollector getRelatedItems() {
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 3);
        Collection.EL.stream(((Document) this.document).getElementsByClass("recommended-album")).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(5)).forEach(new Player$$ExternalSyntheticLambda1(streamInfoItemsCollector, 4));
        return streamInfoItemsCollector;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamType getStreamType() {
        switch (this.$r8$classId) {
            case 0:
                return StreamType.AUDIO_STREAM;
            default:
                return StreamType.LIVE_STREAM;
        }
    }

    public List getStreams(String str, Function function) {
        return (List) Collection.EL.stream(this.current.getArray("streams")).filter(new JsonArray$$ExternalSyntheticLambda0(0)).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(10)).filter(new NewPipe$$ExternalSyntheticLambda2(str, 5)).flatMap(new YoutubeChannelHelper$$ExternalSyntheticLambda2(11)).filter(new JsonArray$$ExternalSyntheticLambda0(7)).map(function).collect(Collectors.toList());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public List getTags() {
        switch (this.$r8$classId) {
            case 0:
                Document document = (Document) this.document;
                document.getClass();
                return (List) Collection.EL.stream(SQLite.collect(new Evaluator.AttributeWithValue("itemprop", "keywords", 0), document)).map(new Nodes$$ExternalSyntheticLambda0(10)).collect(Collectors.toList());
            default:
                return super.getTags();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getTextualUploadDate() {
        switch (this.$r8$classId) {
            case 0:
                return this.current.getString("publish_date", null);
            default:
                return super.getTextualUploadDate();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public List getThumbnails() {
        switch (this.$r8$classId) {
            case 0:
                return this.albumJson.isNull("art_id") ? Collections.EMPTY_LIST : BandcampExtractorHelper.getImagesFromImageId(this.albumJson.getLong("art_id", 0L), true);
            default:
                return MediaCCCParsingHelper.getThumbnailsFromObject(this.current, "thumb", "poster");
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public DateWrapper getUploadDate() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampExtractorHelper.parseDate(getTextualUploadDate());
            default:
                return super.getUploadDate();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public List getUploaderAvatars() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampExtractorHelper.getImagesFromImageUrl((String) Collection.EL.stream(((Document) this.document).getElementsByClass("band-photo")).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(3)).findFirst().orElse(""));
            default:
                return super.getUploaderAvatars();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getUploaderName() {
        switch (this.$r8$classId) {
            case 0:
                return this.albumJson.getString("artist", null);
            default:
                return this.albumJson.getString("conference", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getUploaderUrl() {
        switch (this.$r8$classId) {
            case 0:
                return Modifier.CC.m("https://", getUrl().split("/")[2], "/");
            default:
                return Owner.CC.m("https://streaming.media.ccc.de/", this.albumJson.getString("slug", null));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getUrl() {
        switch (this.$r8$classId) {
            case 0:
                return Utils.replaceHttpWithHttps(this.albumJson.getString("url", null));
            default:
                return super.getUrl();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoOnlyStreams() {
        switch (this.$r8$classId) {
        }
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoStreams() {
        switch (this.$r8$classId) {
            case 0:
                return Collections.EMPTY_LIST;
            default:
                return getStreams(MimeTypes.BASE_TYPE_VIDEO, new YoutubeChannelHelper$$ExternalSyntheticLambda2(7));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public long getViewCount() {
        switch (this.$r8$classId) {
            case 1:
                return -1L;
            default:
                return super.getViewCount();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public void onFetchPage(CloseableKt closeableKt) {
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        switch (i) {
            case 0:
                String str = (String) closeableKt.get(linkHandler.getUrl()).mHiddenViews;
                this.document = Jsoup.parse(str);
                JsonObject albumInfoJson = getAlbumInfoJson(str);
                this.albumJson = albumInfoJson;
                this.current = albumInfoJson.getObject("current");
                if (this.albumJson.getArray("trackinfo").size() > 1) {
                    throw new ExtractionException("Page is actually an album, not a track");
                }
                if (this.albumJson.getArray("trackinfo").getObject(0).isNull("file")) {
                    throw new PaidContentException("This track is not available without being purchased");
                }
                return;
            default:
                JsonArray liveStreams = MediaCCCParsingHelper.getLiveStreams(closeableKt, this.service.getLocalization());
                for (int i2 = 0; i2 < liveStreams.size(); i2++) {
                    JsonObject object = liveStreams.getObject(i2);
                    JsonArray array = object.getArray("groups");
                    for (int i3 = 0; i3 < array.size(); i3++) {
                        String str2 = null;
                        String string = array.getObject(i3).getString("group", null);
                        JsonArray array2 = array.getObject(i3).getArray("rooms");
                        int i4 = 0;
                        while (i4 < array2.size()) {
                            JsonObject object2 = array2.getObject(i4);
                            if (linkHandler.getId().equals(object.getString("slug", str2) + "/" + object2.getString("slug", str2))) {
                                this.albumJson = object;
                                this.document = string;
                                this.current = object2;
                                return;
                            }
                            i4++;
                            str2 = null;
                        }
                    }
                }
                throw new ExtractionException(Modifier.CC.m("Could not find room matching id: '", linkHandler.getId(), "'"));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public /* bridge */ /* synthetic */ InfoItemsCollector getRelatedItems() {
        switch (this.$r8$classId) {
            case 0:
                return getRelatedItems();
            default:
                return super.getRelatedItems();
        }
    }
}
