package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import j$.util.Objects;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.subscription.SubscriptionItem;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeStreamExtractor$$ExternalSyntheticLambda6 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ YoutubeStreamExtractor$$ExternalSyntheticLambda6(int i) {
        this.$r8$classId = i;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return "engagement-panel-macro-markers-description-chapters".equals(((JsonObject) obj).getObject("engagementPanelSectionListRenderer").getString("panelIdentifier", null));
            case 1:
                return !((JsonObject) obj).isEmpty();
            case 2:
                return "engagement-panel-course-metadata".equals(RecordTag.m480m((JsonObject) obj, "showEngagementPanelEndpoint", "identifier", "tag", (String) null));
            case 3:
                return ((JsonObject) obj).containsKey("continuationCommand");
            case 4:
                return ((JsonObject) obj).getObject("playlistSidebarSecondaryInfoRenderer").getObject("videoOwner").containsKey("videoOwnerRenderer");
            case 5:
                return ((JsonObject) obj).containsKey("playlistSidebarPrimaryInfoRenderer");
            case 6:
                return ((String) obj).contains("Age-restricted");
            case 7:
                return Objects.nonNull((ItagInfo) obj);
            case 8:
                return !Utils.isNullOrEmpty((JsonObject) obj);
            case 9:
                return !Utils.isNullOrEmpty((JsonObject) obj);
            case 10:
                return Objects.nonNull((InfoItemExtractor) obj);
            case 11:
                return "PRIVACY_UNLISTED".equals(RecordTag.m480m((JsonObject) obj, "metadataBadgeRenderer", "icon", "iconType", (String) null));
            case 12:
                return "BADGE_STYLE_TYPE_MEMBERS_ONLY".equals((String) obj);
            case 13:
                return ((JsonObject) obj).containsKey("thumbnailOverlayTimeStatusRenderer");
            case 14:
                return !Utils.isNullOrEmpty((String) obj);
            case 15:
                return ((JsonObject) obj).containsKey("thumbnailOverlayTimeStatusRenderer");
            case 16:
                JsonObject jsonObject = (JsonObject) obj;
                return jsonObject.getString(TtmlNode.TAG_STYLE, "").equalsIgnoreCase("SHORTS") || jsonObject.getObject("icon").getString("iconType", "").toLowerCase().contains("shorts");
            case 17:
                return "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE".equals(((JsonObject) obj).getString("badgeStyle", null));
            case 18:
                return "LIVE".equals((String) obj);
            case 19:
                return "BADGE_MEMBERS_ONLY".equals((String) obj);
            case 20:
                JsonObject jsonObject2 = (JsonObject) obj;
                if ("THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE".equals(jsonObject2.getString("badgeStyle", null))) {
                    return true;
                }
                return jsonObject2.getObject("icon").getArray("sources").streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(27)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(18));
            case 21:
                return ((String[]) obj).length >= 3;
            case 22:
                return Objects.nonNull((SubscriptionItem) obj);
            case 23:
                return JsonArray.class.isInstance(obj);
            case 24:
                return !Utils.isBlank((String) obj);
            case 25:
                return ((JsonObject) obj).containsKey("appendContinuationItemsAction");
            case 26:
                return ((JsonObject) obj).containsKey("richItemRenderer");
            case 27:
                return ((JsonObject) obj).getBoolean("selected");
            case 28:
                return ((JsonObject) obj).containsKey("content");
            default:
                return !((JsonObject) obj).containsKey("title");
        }
    }
}
