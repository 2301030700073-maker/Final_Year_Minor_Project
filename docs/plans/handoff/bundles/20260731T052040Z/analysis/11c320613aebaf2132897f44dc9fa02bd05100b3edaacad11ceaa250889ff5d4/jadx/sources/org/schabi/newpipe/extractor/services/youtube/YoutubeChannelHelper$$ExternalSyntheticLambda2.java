package org.schabi.newpipe.extractor.services.youtube;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.util.Collection;
import j$.util.function.Function$CC;
import j$.util.stream.Stream;
import java.util.Map;
import java.util.function.Function;
import java.util.regex.Matcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.nodes.Element;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRelatedPlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCRecentKioskExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader;
import org.schabi.newpipe.extractor.services.youtube.protos.video.Xtags$KeyValuePair;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeChannelHelper$$ExternalSyntheticLambda2 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ YoutubeChannelHelper$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Stream stream;
        Stream stream2;
        Stream map;
        int i = this.$r8$classId;
        DeliveryMethod deliveryMethod = DeliveryMethod.HLS;
        switch (i) {
            case 0:
                YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader = (YoutubeChannelHelper$ChannelHeader) obj;
                JsonObject jsonObject = youtubeChannelHelper$ChannelHeader.json;
                int ordinal = youtubeChannelHelper$ChannelHeader.headerType.ordinal();
                return (ordinal == 1 || ordinal == 2) ? YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("title"), false) : ordinal != 3 ? jsonObject.getString("title", null) : RecordTag.m(jsonObject, "content", "pageHeaderViewModel", "title", "dynamicTextViewModel").getObject("text").getString("content", jsonObject.getString("pageTitle", null));
            case 1:
                stream = Collection.EL.stream(((Element) obj).getElementsByClass("itemtype"));
                return stream;
            case 2:
                return ((Element) obj).getElementsByTag("li");
            case 3:
                return ((Element) obj).attr("src");
            case 4:
                stream2 = Collection.EL.stream(((Element) obj).getElementsByClass("tag"));
                return stream2;
            case 5:
                return new BandcampRelatedPlaylistInfoItemExtractor((Element) obj);
            case 6:
                return ((JsonObject) obj).getString("name", null);
            case 7:
                MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO = (MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO) obj;
                JsonArray array = mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO.streamJsonObj.getArray("videoSize");
                VideoStream.Builder builder = new VideoStream.Builder();
                builder.deliveryMethod = DeliveryMethod.PROGRESSIVE_HTTP;
                JsonObject jsonObject2 = mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO.urlValue;
                builder.id = jsonObject2.getString("tech", " ");
                builder.content = jsonObject2.getString("url", null);
                builder.isUrl = true;
                builder.isVideoOnly = Boolean.FALSE;
                Object obj2 = array.get(0);
                int intValue = obj2 instanceof Number ? ((Number) obj2).intValue() : 0;
                Object obj3 = array.get(1);
                builder.resolution = intValue + "x" + (obj3 instanceof Number ? ((Number) obj3).intValue() : 0);
                String str = mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO.urlKey;
                if ("hls".equals(str)) {
                    builder.deliveryMethod = deliveryMethod;
                    return builder.build();
                }
                builder.mediaFormat = MediaFormat.getFromSuffix(str);
                return builder.build();
            case 8:
                MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO2 = (MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO) obj;
                AudioStream.Builder builder2 = new AudioStream.Builder();
                builder2.id = mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO2.urlValue.getString("tech", " ");
                builder2.content = mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO2.urlValue.getString("url", null);
                builder2.isUrl = true;
                builder2.averageBitrate = -1;
                String str2 = mediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO2.urlKey;
                if ("hls".equals(str2)) {
                    builder2.deliveryMethod = deliveryMethod;
                    return builder2.build();
                }
                builder2.mediaFormat = MediaFormat.getFromSuffix(str2);
                return builder2.build();
            case 9:
                return ((JsonObject) obj).getObject("urls");
            case 10:
                return (JsonObject) JsonObject.class.cast(obj);
            case 11:
                map = Collection.EL.stream(r0.getObject("urls").entrySet()).filter(new JsonArray$$ExternalSyntheticLambda0(8)).map(new Player$$ExternalSyntheticLambda41((JsonObject) obj, 5));
                return map;
            case 12:
                return ((StreamInfoItem) obj).getUploadDate();
            case 13:
                return ((DateWrapper) obj).getInstant();
            case 14:
                return new MediaCCCRecentKioskExtractor((JsonObject) obj);
            case 15:
                JsonObject jsonObject3 = (JsonObject) obj;
                String valueOf = String.valueOf(jsonObject3.getInt(-1, TtmlNode.ATTR_ID));
                String string = jsonObject3.getString("playlistUrl", "");
                if (valueOf == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
                    return null;
                }
                if (string != null) {
                    return new VideoStream(valueOf, string, true, MediaFormat.MPEG_4, DeliveryMethod.HLS, "", false, null, null);
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
                return null;
            case 16:
                return (String) ((Map.Entry) obj).getKey();
            case 17:
                return new YoutubeChannelHelper$ChannelHeader((JsonObject) obj, YoutubeChannelHelper$ChannelHeader.HeaderType.INTERACTIVE_TABBED);
            case 18:
                return ((JsonObject) obj).getObject("tabRenderer").getObject("content").getObject("sectionListRenderer").getArray("contents").streamAsJsonObjects();
            case 19:
                return ((JsonObject) obj).getObject("channelAgeGateRenderer");
            case 20:
                return new YoutubeChannelHelper$ChannelHeader((JsonObject) obj, YoutubeChannelHelper$ChannelHeader.HeaderType.C4_TABBED);
            case 21:
                return ((JsonObject) obj).getObject("topicChannelDetailsRenderer");
            case 22:
                return new YoutubeChannelHelper$ChannelHeader((JsonObject) obj, YoutubeChannelHelper$ChannelHeader.HeaderType.CAROUSEL);
            case 23:
                return new YoutubeChannelHelper$ChannelHeader((JsonObject) obj, YoutubeChannelHelper$ChannelHeader.HeaderType.PAGE);
            case 24:
                String str3 = (String) obj;
                Matcher matcher = YoutubeDescriptionHelper.LINK_CONTENT_CLEANER_REGEX.matcher(str3);
                return matcher.find() ? matcher.group(1) : str3;
            case 25:
                return ((JsonObject) obj).getObject("singleActionEmergencySupportRenderer");
            case 26:
                return ((Xtags$KeyValuePair) obj).getValue();
            case 27:
                return ((JsonObject) obj).getArray("params").streamAsJsonObjects();
            case 28:
                return ((JsonObject) obj).getString(ES6Iterator.VALUE_PROPERTY, null);
            default:
                JsonObject jsonObject4 = (JsonObject) obj;
                int i2 = jsonObject4.getInt(-1, "height");
                return new Image(YoutubeParsingHelper.fixThumbnailUrl(jsonObject4.getString("url", null)), i2, jsonObject4.getInt(-1, "width"), i2 <= 0 ? Image.ResolutionLevel.UNKNOWN : i2 < 175 ? Image.ResolutionLevel.LOW : i2 < 720 ? Image.ResolutionLevel.MEDIUM : Image.ResolutionLevel.HIGH);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
