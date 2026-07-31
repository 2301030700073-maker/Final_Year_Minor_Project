package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.rxjava3.internal.operators.parallel.ParallelMap;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.operators.QueueSubscription;
import j$.util.Objects;
import java.util.ArrayList;
import net.newpipe.app.AppKt;
import org.reactivestreams.Subscriber;
import org.schabi.newpipe.local.feed.service.FeedLoadManager$notification$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableMap extends AbstractFlowableWithUpstream implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final Object mapper;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MapConditionalSubscriber extends BasicFuseableConditionalSubscriber {
        public final /* synthetic */ int $r8$classId;
        public final Object mapper;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MapConditionalSubscriber(ConditionalSubscriber conditionalSubscriber, Object obj, int i) {
            super(conditionalSubscriber);
            this.$r8$classId = i;
            this.mapper = obj;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    if (!this.done) {
                        int i = this.sourceMode;
                        ConditionalSubscriber conditionalSubscriber = this.downstream;
                        if (i != 0) {
                            conditionalSubscriber.onNext(null);
                            break;
                        } else {
                            try {
                                Object apply = ((Function) this.mapper).apply(obj);
                                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                                conditionalSubscriber.onNext(apply);
                                break;
                            } catch (Throwable th) {
                                fail(th);
                                return;
                            }
                        }
                    }
                    break;
                default:
                    if (!tryOnNext(obj)) {
                        this.upstream.request(1L);
                        break;
                    }
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            int i = this.$r8$classId;
            Object obj = this.mapper;
            switch (i) {
                case 0:
                    Object poll = this.qs.poll();
                    if (poll == null) {
                        return null;
                    }
                    Object apply = ((Function) obj).apply(poll);
                    Objects.requireNonNull(apply, "The mapper function returned a null value.");
                    return apply;
                default:
                    QueueSubscription queueSubscription = this.qs;
                    Predicate predicate = (Predicate) obj;
                    while (true) {
                        Object poll2 = queueSubscription.poll();
                        if (poll2 == null) {
                            return null;
                        }
                        if (predicate.test(poll2)) {
                            return poll2;
                        }
                        if (this.sourceMode == 2) {
                            queueSubscription.request(1L);
                        }
                    }
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public final boolean tryOnNext(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.mapper;
            ConditionalSubscriber conditionalSubscriber = this.downstream;
            switch (i) {
                case 0:
                    if (!this.done) {
                        if (this.sourceMode != 0) {
                            conditionalSubscriber.tryOnNext(null);
                            break;
                        } else {
                            try {
                                Object apply = ((Function) obj2).apply(obj);
                                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                                break;
                            } catch (Throwable th) {
                                fail(th);
                                return true;
                            }
                        }
                    }
                    break;
                default:
                    if (!this.done) {
                        if (this.sourceMode != 0) {
                            break;
                        } else {
                            try {
                                if (!((Predicate) obj2).test(obj) || !conditionalSubscriber.tryOnNext(obj)) {
                                }
                            } catch (Throwable th2) {
                                this.fail(th2);
                                return true;
                            }
                        }
                    }
                    break;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MapSubscriber extends BasicFuseableSubscriber {
        public final Function mapper;

        public MapSubscriber(Subscriber subscriber, Function function) {
            super(subscriber);
            this.mapper = function;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            int i = this.sourceMode;
            Subscriber subscriber = this.downstream;
            if (i != 0) {
                subscriber.onNext(null);
                return;
            }
            try {
                Object apply = this.mapper.apply(obj);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                subscriber.onNext(apply);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object poll = this.qs.poll();
            if (poll == null) {
                return null;
            }
            Object apply = this.mapper.apply(poll);
            Objects.requireNonNull(apply, "The mapper function returned a null value.");
            return apply;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowableMap(FlowableSubscribeOn flowableSubscribeOn) {
        super(flowableSubscribeOn);
        this.$r8$classId = 4;
        this.mapper = ArrayListSupplier.INSTANCE;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        int i = this.$r8$classId;
        int i2 = 1;
        Flowable flowable = this.source;
        Object obj = this.mapper;
        switch (i) {
            case 0:
                Function function = (Function) obj;
                if (!(flowableSubscriber instanceof ConditionalSubscriber)) {
                    flowable.subscribe((FlowableSubscriber) new MapSubscriber(flowableSubscriber, function));
                    break;
                } else {
                    flowable.subscribe((FlowableSubscriber) new MapConditionalSubscriber((ConditionalSubscriber) flowableSubscriber, function, 0));
                    break;
                }
            case 1:
                Predicate predicate = (Predicate) obj;
                if (!(flowableSubscriber instanceof ConditionalSubscriber)) {
                    flowable.subscribe((FlowableSubscriber) new FlowableFilter$FilterSubscriber(flowableSubscriber, predicate));
                    break;
                } else {
                    flowable.subscribe((FlowableSubscriber) new MapConditionalSubscriber((ConditionalSubscriber) flowableSubscriber, predicate, i2));
                    break;
                }
            case 2:
                flowable.subscribe((FlowableSubscriber) new FlowableOnBackpressureDrop$BackpressureDropSubscriber(flowableSubscriber, (FlowableMap) obj));
                break;
            case 3:
                flowable.subscribe((FlowableSubscriber) new ParallelMap.ParallelMapSubscriber(flowableSubscriber, (FeedLoadManager$notification$1) obj, i2));
                break;
            default:
                try {
                    ((ArrayListSupplier) obj).getClass();
                    ArrayList arrayList = new ArrayList();
                    ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
                    flowable.subscribe((FlowableSubscriber) new FlowableToList$ToListSubscriber(flowableSubscriber, arrayList));
                    break;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    EmptySubscription.error(th, flowableSubscriber);
                    return;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowableMap(Flowable flowable, Object obj, int i) {
        super(flowable);
        this.$r8$classId = i;
        this.mapper = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowableMap(MaybeConcatArray maybeConcatArray) {
        super(maybeConcatArray);
        this.$r8$classId = 2;
        this.mapper = this;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
    }
}
