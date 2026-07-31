package org.schabi.newpipe.extractor.services.youtube.extractors.kiosk;

import com.grack.nanojson.JsonObject;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeTrendingExtractor$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamInfoItemsCollector f$0;
    public final /* synthetic */ TimeAgoParser f$1;

    public /* synthetic */ YoutubeTrendingExtractor$$ExternalSyntheticLambda2(StreamInfoItemsCollector streamInfoItemsCollector, TimeAgoParser timeAgoParser, int i) {
        this.$r8$classId = i;
        this.f$0 = streamInfoItemsCollector;
        this.f$1 = timeAgoParser;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        TimeAgoParser timeAgoParser = this.f$1;
        StreamInfoItemsCollector streamInfoItemsCollector = this.f$0;
        JsonObject jsonObject = (JsonObject) obj;
        switch (i) {
            case 0:
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemExtractor(jsonObject, timeAgoParser));
                break;
            case 1:
                if (!jsonObject.containsKey("richItemRenderer")) {
                    if (!jsonObject.containsKey("gridVideoRenderer")) {
                        if (jsonObject.containsKey("lockupViewModel")) {
                            JsonObject object = jsonObject.getObject("lockupViewModel");
                            if ("LOCKUP_CONTENT_TYPE_VIDEO".equals(object.getString("contentType", null))) {
                                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemLockupExtractor(object, timeAgoParser));
                                break;
                            }
                        }
                    } else {
                        streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemExtractor(jsonObject.getObject("gridVideoRenderer"), timeAgoParser));
                        break;
                    }
                } else {
                    JsonObject object2 = jsonObject.getObject("richItemRenderer").getObject("content");
                    if (object2.containsKey("videoRenderer")) {
                        streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemExtractor(object2.getObject("videoRenderer"), timeAgoParser));
                        break;
                    }
                }
                break;
            default:
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemExtractor(jsonObject, timeAgoParser));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
