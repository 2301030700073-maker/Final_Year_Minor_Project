package org.schabi.newpipe.player.playqueue;

import com.google.android.exoplayer2.C;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.player.mediasource.FailedMediaSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlayQueueItem$$ExternalSyntheticLambda0 implements Predicate, Function, Consumer {
    public final /* synthetic */ PlayQueueItem f$0;

    public /* synthetic */ PlayQueueItem$$ExternalSyntheticLambda0(PlayQueueItem playQueueItem) {
        this.f$0 = playQueueItem;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        this.f$0.error = (Throwable) obj;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        Throwable th = (Throwable) obj;
        boolean z = th instanceof ExtractionException;
        PlayQueueItem playQueueItem = this.f$0;
        return z ? new FailedMediaSource(playQueueItem, new FailedMediaSource.StreamInfoLoadException(th), Long.MAX_VALUE) : new FailedMediaSource(playQueueItem, new Exception(th), System.currentTimeMillis() + C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        return ((StreamStateEntity) obj).isValid(this.f$0.getDuration());
    }
}
