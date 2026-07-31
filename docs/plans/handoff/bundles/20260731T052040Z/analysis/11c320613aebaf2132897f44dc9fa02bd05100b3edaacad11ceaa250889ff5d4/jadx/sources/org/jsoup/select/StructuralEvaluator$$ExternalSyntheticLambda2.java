package org.jsoup.select;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.source.MediaSource;
import j$.util.function.Function$CC;
import java.util.function.Function;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediasource.LoadedMediaSource;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.util.ServiceHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StructuralEvaluator$$ExternalSyntheticLambda2 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ StructuralEvaluator$$ExternalSyntheticLambda2(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
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
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(((StructuralEvaluator) obj3).evaluator.matches((Element) obj2, (Node) obj));
            default:
                final StreamInfo streamInfo = (StreamInfo) obj3;
                final PlayQueueItem playQueueItem = (PlayQueueItem) obj2;
                final MediaSource mediaSource = (MediaSource) obj;
                return RecordTag.from(mediaSource.getMediaItem()).map(new Function() { // from class: org.schabi.newpipe.player.playback.MediaSourceManager$$ExternalSyntheticLambda9
                    @Override // java.util.function.Function
                    /* renamed from: andThen */
                    public /* synthetic */ Function mo646andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj4) {
                        MediaItemTag mediaItemTag = (MediaItemTag) obj4;
                        int serviceId = StreamInfo.this.getServiceId();
                        long currentTimeMillis = System.currentTimeMillis();
                        YoutubeService youtubeService = ServiceHelper.DEFAULT_FALLBACK_SERVICE;
                        return new LoadedMediaSource(mediaSource, mediaItemTag, playQueueItem, (serviceId == ServiceList.SoundCloud.serviceId ? 300000L : 3600000L) + currentTimeMillis);
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                });
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
