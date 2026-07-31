package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonObject;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubePlaylistExtractor$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ StreamInfoItemsCollector f$1;
    public final /* synthetic */ TimeAgoParser f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ YoutubePlaylistExtractor f$4;

    public /* synthetic */ YoutubePlaylistExtractor$$ExternalSyntheticLambda1(YoutubePlaylistExtractor youtubePlaylistExtractor, StreamInfoItemsCollector streamInfoItemsCollector, TimeAgoParser timeAgoParser, boolean z, YoutubePlaylistExtractor youtubePlaylistExtractor2) {
        this.f$1 = streamInfoItemsCollector;
        this.f$2 = timeAgoParser;
        this.f$3 = z;
        this.f$4 = youtubePlaylistExtractor2;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        JsonObject jsonObject = (JsonObject) obj;
        boolean containsKey = jsonObject.containsKey("playlistVideoRenderer");
        StreamInfoItemsCollector streamInfoItemsCollector = this.f$1;
        TimeAgoParser timeAgoParser = this.f$2;
        final boolean z = this.f$3;
        final YoutubePlaylistExtractor youtubePlaylistExtractor = this.f$4;
        if (containsKey) {
            streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemExtractor(jsonObject.getObject("playlistVideoRenderer"), timeAgoParser) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistExtractor.1
                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final String getUploaderName() {
                    return z ? youtubePlaylistExtractor.getUploaderName() : super.getUploaderName();
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final String getUploaderUrl() {
                    return z ? youtubePlaylistExtractor.getUploaderUrl() : super.getUploaderUrl();
                }
            });
            return;
        }
        if (!jsonObject.containsKey("richItemRenderer")) {
            if (jsonObject.containsKey("lockupViewModel")) {
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeStreamInfoItemLockupExtractor(jsonObject.getObject("lockupViewModel"), timeAgoParser) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistExtractor.2
                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderName() {
                        return z ? youtubePlaylistExtractor.getUploaderName() : super.getUploaderName();
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderUrl() {
                        return z ? youtubePlaylistExtractor.getUploaderUrl() : super.getUploaderUrl();
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor
                    public final boolean isChannelOrCoursePlaylistLockupItem() {
                        return z;
                    }
                });
                return;
            }
            return;
        }
        JsonObject object = jsonObject.getObject("richItemRenderer");
        if (object.containsKey("content")) {
            JsonObject object2 = object.getObject("content");
            if (object2.containsKey("reelItemRenderer")) {
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeReelInfoItemExtractor(object2.getObject("reelItemRenderer"), 0));
            }
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
