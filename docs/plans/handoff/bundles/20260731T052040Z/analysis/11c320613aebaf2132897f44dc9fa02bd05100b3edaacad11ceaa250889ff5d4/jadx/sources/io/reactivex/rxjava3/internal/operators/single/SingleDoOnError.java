package io.reactivex.rxjava3.internal.operators.single;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.local.feed.service.FeedLoadManager$startLoading$8;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleDoOnError extends Single {
    public final /* synthetic */ int $r8$classId;
    public final Consumer onError;
    public final Single source;

    public /* synthetic */ SingleDoOnError(Single single, Consumer consumer, int i) {
        this.$r8$classId = i;
        this.source = single;
        this.onError = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        int i = this.$r8$classId;
        Single single = this.source;
        switch (i) {
            case 0:
                single.subscribe(new JsonBuilder((Single) this, singleObserver, 18));
                break;
            default:
                single.subscribe(new FeedLoadManager$startLoading$8(singleObserver, this.onError));
                break;
        }
    }
}
