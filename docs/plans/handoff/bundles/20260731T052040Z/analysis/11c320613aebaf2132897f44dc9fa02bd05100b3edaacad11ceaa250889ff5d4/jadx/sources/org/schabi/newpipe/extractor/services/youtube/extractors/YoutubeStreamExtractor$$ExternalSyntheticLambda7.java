package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import j$.time.LocalDate;
import j$.util.function.Function$CC;
import java.util.function.Function;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeStreamExtractor$$ExternalSyntheticLambda7 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ YoutubeStreamExtractor$$ExternalSyntheticLambda7(int i) {
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
        switch (this.$r8$classId) {
            case 0:
                return ((JsonObject) obj).getObject("engagementPanelSectionListRenderer").getObject("content").getObject("macroMarkersListRenderer").getArray("contents");
            case 1:
                YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader = (YoutubeChannelHelper$ChannelHeader) obj;
                int ordinal = youtubeChannelHelper$ChannelHeader.headerType.ordinal();
                JsonObject jsonObject = youtubeChannelHelper$ChannelHeader.json;
                if (ordinal == 1) {
                    return jsonObject.getObject("boxArt").getArray("thumbnails");
                }
                if (ordinal != 3) {
                    return jsonObject.getObject("avatar").getArray("thumbnails");
                }
                JsonObject object = jsonObject.getObject("content").getObject("pageHeaderViewModel").getObject("image");
                return object.containsKey("contentPreviewImageViewModel") ? object.getObject("contentPreviewImageViewModel").getObject("image").getArray("sources") : object.containsKey("decoratedAvatarViewModel") ? RecordTag.m(object, "decoratedAvatarViewModel", "avatar", "avatarViewModel", "image").getArray("sources") : new JsonArray();
            case 2:
                return ((JsonObject) obj).getObject("tabRenderer");
            case 3:
                YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader2 = (YoutubeChannelHelper$ChannelHeader) obj;
                YoutubeChannelHelper$ChannelHeader.HeaderType headerType = youtubeChannelHelper$ChannelHeader2.headerType;
                JsonObject jsonObject2 = youtubeChannelHelper$ChannelHeader2.json;
                if (headerType != YoutubeChannelHelper$ChannelHeader.HeaderType.PAGE) {
                    return jsonObject2.getObject("banner").getArray("thumbnails");
                }
                JsonObject object2 = jsonObject2.getObject("content").getObject("pageHeaderViewModel");
                return object2.containsKey("banner") ? object2.getObject("banner").getObject("imageBannerViewModel").getObject("image").getArray("sources") : new JsonArray();
            case 4:
                return YoutubeParsingHelper.getImagesFromThumbnailsArray((JsonArray) obj);
            case 5:
                return (String) String.class.cast(obj);
            case 6:
                return ((JsonObject) obj).getObject("appendContinuationItemsAction");
            case 7:
                return ((JsonObject) obj).getObject("tabRenderer");
            case 8:
                return ((JsonObject) obj).getObject(null, "continuationItemRenderer");
            case 9:
                return RecordTag.m480m((JsonObject) obj, "continuationEndpoint", "continuationCommand", "token", (String) null);
            case 10:
                try {
                    return (String) Parser.getInstanceOf(((JsonObject) obj).getObject("itemSectionRenderer").getArray("contents").getObject(0), "continuationItemRenderer.continuationEndpoint.continuationCommand.token", String.class);
                } catch (ParsingException unused) {
                    return null;
                }
            case 11:
                return ((JsonObject) obj).getObject(null, "musicResponsiveListItemRenderer");
            case 12:
                return ((JsonObject) obj).getObject("itemSectionRenderer");
            case 13:
                return ((JsonObject) obj).getArray("contents").getObject(0);
            case 14:
                return ((JsonObject) obj).getObject("playlistSidebarSecondaryInfoRenderer").getObject("videoOwner").getObject("videoOwnerRenderer");
            case 15:
                return ((JsonObject) obj).getObject("playlistSidebarPrimaryInfoRenderer");
            case 16:
                return ((JsonObject) obj).getArray("runs").streamAsJsonObjects();
            case 17:
                return ((JsonObject) obj).getString("text", "");
            case 18:
                return RecordTag.m((JsonObject) obj, "segmentedLikeDislikeButtonViewModel", "likeButtonViewModel", "likeButtonViewModel", "toggleButtonViewModel").getObject("toggleButtonViewModel").getObject("defaultButtonViewModel").getObject("buttonViewModel");
            case 19:
                return ((JsonObject) obj).getObject("segmentedLikeDislikeButtonRenderer").getObject("likeButton").getObject("toggleButtonRenderer");
            case 20:
                return new DateWrapper(((LocalDate) obj).atStartOfDay(), true);
            case 21:
                return ((JsonObject) obj).getObject("macroMarkersListItemRenderer");
            case 22:
                return ((JsonObject) obj).getObject("metadataRowRenderer").getArray("contents").streamAsJsonObjects();
            case 23:
                return ((JsonObject) obj).getObject("metadataBadgeRenderer").getString(TtmlNode.TAG_STYLE, null);
            case 24:
                return YoutubeParsingHelper.getTextFromObject(((JsonObject) obj).getObject("thumbnailOverlayTimeStatusRenderer").getObject("text"), false);
            case 25:
                return ((JsonObject) obj).getObject("thumbnailOverlayTimeStatusRenderer");
            case 26:
                return ((JsonObject) obj).getArray("badges").streamAsJsonObjects();
            case 27:
                return ((JsonObject) obj).getObject("clientResource").getString("imageName", null);
            case 28:
                return ((JsonObject) obj).getObject("badgeViewModel").getString("badgeStyle", null);
            default:
                return ((JsonObject) obj).getObject("thumbnailBottomOverlayViewModel").getArray("badges").streamAsJsonObjects();
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
