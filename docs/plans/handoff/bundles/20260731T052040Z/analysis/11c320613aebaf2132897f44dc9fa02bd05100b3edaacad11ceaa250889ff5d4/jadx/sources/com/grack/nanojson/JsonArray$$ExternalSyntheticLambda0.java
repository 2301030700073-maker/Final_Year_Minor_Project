package com.grack.nanojson;

import androidx.appcompat.app.AppCompatActivity;
import com.android.tools.r8.RecordTag;
import j$.util.Objects;
import j$.util.function.Predicate$CC;
import java.util.Map;
import java.util.function.Predicate;
import kotlin.math.MathKt;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCRecentKioskExtractor;
import org.schabi.newpipe.extractor.services.youtube.protos.video.Xtags$KeyValuePair;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class JsonArray$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ JsonArray$$ExternalSyntheticLambda0(int i) {
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
                return JsonObject.class.isInstance(obj);
            case 1:
                return Objects.nonNull((String) obj);
            case 2:
                return MathKt.isStreamsTab((ListLinkHandler) obj);
            case 3:
                return !((AppCompatActivity) obj).isFinishing();
            case 4:
                return Objects.nonNull((Element) obj);
            case 5:
                return !((String) obj).isEmpty();
            case 6:
                return !Utils.isNullOrEmpty((String) obj);
            case 7:
                return !"dash".equals(((MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO) obj).urlKey);
            case 8:
                return ((Map.Entry) obj).getValue() instanceof JsonObject;
            case 9:
                return ((MediaCCCRecentKioskExtractor) obj).getDuration() > 0;
            case 10:
                return !Utils.isNullOrEmpty(((JsonObject) obj).getString("path", null));
            case 11:
                return ((JsonObject) obj).containsKey("channelAgeGateRenderer");
            case 12:
                return ((JsonObject) obj).containsKey("topicChannelDetailsRenderer");
            case 13:
                return ((JsonObject) obj).containsKey("topicChannelDetailsRenderer");
            case 14:
                return (obj instanceof JsonObject) && ((JsonObject) obj).containsKey("singleActionEmergencySupportRenderer");
            case 15:
                return "acont".equals(((Xtags$KeyValuePair) obj).getKey());
            case 16:
                return !Utils.isNullOrEmpty((String) obj);
            case 17:
                return RecordTag.m((JsonObject) obj, "element", "type", "imageType", "image").getArray("sources").streamAsJsonObjects().anyMatch(new JsonArray$$ExternalSyntheticLambda0(19));
            case 18:
                return !Utils.isNullOrEmpty(((JsonObject) obj).getString("url", null));
            case 19:
                String string = ((JsonObject) obj).getObject("clientResource").getString("imageName", null);
                return "CHECK_CIRCLE_FILLED".equals(string) || "AUDIO_BADGE".equals(string) || "MUSIC_FILLED".equals(string);
            case 20:
                return ((JsonObject) obj).containsKey("tabRenderer");
            case 21:
                return String.class.isInstance(obj);
            case 22:
                return ((JsonObject) obj).containsKey("appendContinuationItemsAction");
            case 23:
                return ((JsonObject) obj).containsKey("tabRenderer");
            case 24:
                JsonArray array = ((JsonObject) obj).getObject("content").getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer").getArray("contents");
                return (array.size() == 1 && array.getObject(0).containsKey("messageRenderer")) ? false : true;
            case 25:
                return Objects.nonNull((JsonObject) obj);
            case 26:
                try {
                    return "comments-section".equals((String) Parser.getInstanceOf((JsonObject) obj, "itemSectionRenderer.targetId", String.class));
                } catch (ParsingException unused) {
                    return false;
                }
            case 27:
                return ((JsonObject) obj).containsKey("thumbnailOverlayBadgeViewModel");
            case 28:
                return ((JsonObject) obj).containsKey("thumbnailBadgeViewModel");
            default:
                return ((JsonObject) obj).containsKey("showingResultsForRenderer");
        }
    }
}
