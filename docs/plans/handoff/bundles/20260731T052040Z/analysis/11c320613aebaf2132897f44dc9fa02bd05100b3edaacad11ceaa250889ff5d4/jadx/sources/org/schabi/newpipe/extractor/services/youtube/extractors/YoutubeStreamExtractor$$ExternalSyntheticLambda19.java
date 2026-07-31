package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonObject;
import j$.util.function.Function$CC;
import java.util.function.Function;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeStreamExtractor$$ExternalSyntheticLambda19 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TimeAgoParser f$0;

    public /* synthetic */ YoutubeStreamExtractor$$ExternalSyntheticLambda19(TimeAgoParser timeAgoParser, int i) {
        this.$r8$classId = i;
        this.f$0 = timeAgoParser;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.$r8$classId;
        TimeAgoParser timeAgoParser = this.f$0;
        JsonObject jsonObject = (JsonObject) obj;
        switch (i) {
            case 0:
                if (jsonObject.containsKey("compactVideoRenderer")) {
                    return new YoutubeStreamInfoItemExtractor(jsonObject.getObject("compactVideoRenderer"), timeAgoParser);
                }
                if (jsonObject.containsKey("compactRadioRenderer")) {
                    return new YoutubePlaylistInfoItemExtractor(jsonObject.getObject("compactRadioRenderer"), 3);
                }
                if (jsonObject.containsKey("compactPlaylistRenderer")) {
                    return new YoutubePlaylistInfoItemExtractor(jsonObject.getObject("compactPlaylistRenderer"), 3);
                }
                if (jsonObject.containsKey("lockupViewModel")) {
                    JsonObject object = jsonObject.getObject("lockupViewModel");
                    String string = object.getString("contentType", null);
                    if ("LOCKUP_CONTENT_TYPE_PLAYLIST".equals(string) || "LOCKUP_CONTENT_TYPE_PODCAST".equals(string)) {
                        return new YoutubeMixOrPlaylistLockupInfoItemExtractor(object);
                    }
                    if ("LOCKUP_CONTENT_TYPE_VIDEO".equals(string)) {
                        return new YoutubeStreamInfoItemLockupExtractor(object, timeAgoParser);
                    }
                }
                return null;
            default:
                return new YoutubeStreamInfoItemExtractor(jsonObject.getObject("playlistPanelVideoRenderer"), timeAgoParser);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
