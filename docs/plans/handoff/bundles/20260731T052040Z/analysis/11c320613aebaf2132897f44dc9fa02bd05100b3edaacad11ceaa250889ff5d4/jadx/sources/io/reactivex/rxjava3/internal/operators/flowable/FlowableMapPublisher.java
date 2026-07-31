package io.reactivex.rxjava3.internal.operators.flowable;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.single.SingleFlatMapPublisher$SingleFlatMapPublisherObserver;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.ScalarSubscription;
import j$.util.Objects;
import net.newpipe.app.AppKt;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableMapPublisher extends Flowable {
    public final /* synthetic */ int $r8$classId;
    public final Function mapper;
    public final Object source;

    public /* synthetic */ FlowableMapPublisher(Object obj, Function function, int i) {
        this.$r8$classId = i;
        this.source = obj;
        this.mapper = function;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        int i = this.$r8$classId;
        Function function = this.mapper;
        Object obj = this.source;
        switch (i) {
            case 0:
                ((Flowable) ((Publisher) obj)).subscribe((Subscriber) new FlowableMap.MapSubscriber(flowableSubscriber, (JsonBuilder) function));
                break;
            case 1:
                try {
                    Object apply = function.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                    Publisher publisher = (Publisher) apply;
                    if (!(publisher instanceof Supplier)) {
                        ((Flowable) publisher).subscribe((Subscriber) flowableSubscriber);
                        break;
                    } else {
                        try {
                            Object obj2 = ((Supplier) publisher).get();
                            if (obj2 != null) {
                                flowableSubscriber.onSubscribe(new ScalarSubscription(flowableSubscriber, obj2));
                                break;
                            } else {
                                EmptySubscription.complete(flowableSubscriber);
                                break;
                            }
                        } catch (Throwable th) {
                            AppKt.throwIfFatal(th);
                            EmptySubscription.error(th, flowableSubscriber);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    AppKt.throwIfFatal(th2);
                    EmptySubscription.error(th2, flowableSubscriber);
                    return;
                }
            default:
                ((Single) obj).subscribe(new SingleFlatMapPublisher$SingleFlatMapPublisherObserver(flowableSubscriber, function));
                break;
        }
    }
}
