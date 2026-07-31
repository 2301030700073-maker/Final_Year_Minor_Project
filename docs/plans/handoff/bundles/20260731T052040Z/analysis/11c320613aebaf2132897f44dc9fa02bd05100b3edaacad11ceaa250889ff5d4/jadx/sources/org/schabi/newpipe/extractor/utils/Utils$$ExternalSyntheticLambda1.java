package org.schabi.newpipe.extractor.utils;

import android.view.View;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import j$.net.URLDecoder;
import j$.util.function.Function$CC;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.function.Function;
import java.util.regex.Pattern;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.search.SearchFragment;
import org.schabi.newpipe.fragments.list.search.SuggestionItem;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Utils$$ExternalSyntheticLambda1 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Utils$$ExternalSyntheticLambda1(int i) {
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
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                return Pattern.compile((String) obj);
            case 1:
                return ((JsonObject) obj).getObject("thumbnailBadgeViewModel").getString("text", null);
            case 2:
                return ((JsonObject) obj).getObject("thumbnailOverlayBadgeViewModel").getArray("thumbnailBadges").streamAsJsonObjects();
            case 3:
                return ((JsonObject) obj).getObject("thumbnailBadgeViewModel");
            case 4:
                return ((JsonObject) obj).getObject("thumbnailBottomOverlayViewModel").getArray("badges").streamAsJsonObjects();
            case 5:
                return ((JsonObject) obj).getObject("thumbnailBadgeViewModel");
            case 6:
                return ((JsonObject) obj).getObject("listItemViewModel");
            case 7:
                return ((String) obj).split(",");
            case 8:
                return (JsonArray) JsonArray.class.cast(obj);
            case 9:
                Object obj2 = ((JsonArray) obj).get(0);
                if (obj2 instanceof String) {
                    return (String) obj2;
                }
                return null;
            case 10:
                return ((JsonObject) obj).getObject("appendContinuationItemsAction");
            case 11:
                return ((JsonObject) obj).getObject("richItemRenderer").getObject("content").getObject("videoRenderer");
            case 12:
                return ((JsonObject) obj).getObject("itemSectionRenderer").getArray("contents").streamAsJsonObjects();
            case 13:
                return ((JsonObject) obj).getObject("shelfRenderer");
            case 14:
                return ((JsonObject) obj).getObject("content").getObject("expandedShelfContentsRenderer").getArray("items").streamAsJsonObjects();
            case 15:
                return ((JsonObject) obj).getObject("videoRenderer");
            case 16:
                return ((JsonObject) obj).getObject("tabRenderer");
            case 17:
                return new LinkedHashMap();
            case 18:
                return ((String) obj).split("=");
            case 19:
                return ((String[]) obj)[0];
            case 20:
                String str = ((String[]) obj)[1];
                Pattern pattern = Utils.M_PATTERN;
                return URLDecoder.decode(str, StandardCharsets.UTF_8);
            case 21:
                LinkedList linkedList = VideoDetailFragment.stack;
                return ((Player) obj).UIs.get(VideoPlayerUi.class);
            case 22:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                return ((VideoPlayerUi) obj).binding.rootView;
            case 23:
                MainPlayerUi mainPlayerUi = (MainPlayerUi) obj;
                LinkedList linkedList3 = VideoDetailFragment.stack;
                if (mainPlayerUi.isFullscreen && !mainPlayerUi.isVerticalVideo) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 24:
                return ((VideoStream) obj).resolution;
            case 25:
                return ((View) obj).getParent();
            case 26:
                return Boolean.valueOf(((VideoPlayerUi) obj).isFullscreen());
            case 27:
                return (StreamInfoItem) StreamInfoItem.class.cast((InfoItem) obj);
            case 28:
                return new StreamEntity((PlayQueueItem) obj);
            default:
                int i = SearchFragment.$r8$clinit;
                return new SuggestionItem(true, (String) obj);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
