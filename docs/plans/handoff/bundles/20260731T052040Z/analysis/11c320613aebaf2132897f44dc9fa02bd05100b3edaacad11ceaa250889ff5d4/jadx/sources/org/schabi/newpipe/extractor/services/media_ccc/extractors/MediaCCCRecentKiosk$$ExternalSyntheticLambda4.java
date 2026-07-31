package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonObject;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaCCCRecentKiosk$$ExternalSyntheticLambda4 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamInfoItemsCollector f$0;

    public /* synthetic */ MediaCCCRecentKiosk$$ExternalSyntheticLambda4(StreamInfoItemsCollector streamInfoItemsCollector, int i) {
        this.$r8$classId = i;
        this.f$0 = streamInfoItemsCollector;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        StreamInfoItemsCollector streamInfoItemsCollector = this.f$0;
        switch (i) {
            case 0:
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) obj);
                break;
            case 1:
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) obj);
                break;
            default:
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeReelInfoItemExtractor((JsonObject) obj, 4));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
