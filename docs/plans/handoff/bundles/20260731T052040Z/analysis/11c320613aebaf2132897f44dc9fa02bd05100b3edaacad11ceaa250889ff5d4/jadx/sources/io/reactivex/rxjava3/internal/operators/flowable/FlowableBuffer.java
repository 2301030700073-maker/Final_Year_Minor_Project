package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import kotlin.text.UStringsKt;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableBuffer extends AbstractFlowableWithUpstream {
    public final /* synthetic */ int $r8$classId = 1;
    public final Function bufferSupplier;
    public final int size;
    public final int skip;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PublisherBufferExactSubscriber implements FlowableSubscriber, Subscription {
        public Collection buffer;
        public final Supplier bufferSupplier;
        public boolean done;
        public final Subscriber downstream;
        public int index;
        public final int size;
        public Subscription upstream;

        public PublisherBufferExactSubscriber(Subscriber subscriber, int i, ArrayListSupplier arrayListSupplier) {
            this.downstream = subscriber;
            this.size = i;
            this.bufferSupplier = arrayListSupplier;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            Collection collection = this.buffer;
            this.buffer = null;
            Subscriber subscriber = this.downstream;
            if (collection != null) {
                subscriber.onNext(collection);
            }
            subscriber.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.buffer = null;
            this.done = true;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            Collection collection = this.buffer;
            if (collection == null) {
                try {
                    Object obj2 = this.bufferSupplier.get();
                    Objects.requireNonNull(obj2, "The bufferSupplier returned a null buffer");
                    collection = (Collection) obj2;
                    this.buffer = collection;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            collection.add(obj);
            int i = this.index + 1;
            if (i != this.size) {
                this.index = i;
                return;
            }
            this.index = 0;
            this.buffer = null;
            this.downstream.onNext(collection);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.upstream.request(Options.Companion.multiplyCap(j, this.size));
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PublisherBufferOverlappingSubscriber extends AtomicLong implements FlowableSubscriber, Subscription {
        private static final long serialVersionUID = -7370244972039324525L;
        final Supplier bufferSupplier;
        volatile boolean cancelled;
        boolean done;
        final Subscriber downstream;
        int index;
        long produced;
        final int size;
        final int skip;
        Subscription upstream;
        final AtomicBoolean once = new AtomicBoolean();
        final ArrayDeque<Collection<Object>> buffers = new ArrayDeque<>();

        public PublisherBufferOverlappingSubscriber(Subscriber subscriber, int i, int i2, ArrayListSupplier arrayListSupplier) {
            this.downstream = subscriber;
            this.size = i;
            this.skip = i2;
            this.bufferSupplier = arrayListSupplier;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
        }

        public final boolean getAsBoolean() {
            return this.cancelled;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            long j;
            long j2;
            if (this.done) {
                return;
            }
            this.done = true;
            long j3 = this.produced;
            if (j3 != 0) {
                Options.Companion.produced(this, j3);
            }
            Subscriber subscriber = this.downstream;
            ArrayDeque<Collection<Object>> arrayDeque = this.buffers;
            if (arrayDeque.isEmpty()) {
                subscriber.onComplete();
                return;
            }
            if (CloseableKt.postCompleteDrain(get(), subscriber, arrayDeque, this, this)) {
                return;
            }
            do {
                j = get();
                if ((j & Long.MIN_VALUE) != 0) {
                    return;
                } else {
                    j2 = Long.MIN_VALUE | j;
                }
            } while (!compareAndSet(j, j2));
            if (j != 0) {
                CloseableKt.postCompleteDrain(j2, subscriber, arrayDeque, this, this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.done = true;
            this.buffers.clear();
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            ArrayDeque<Collection<Object>> arrayDeque = this.buffers;
            int i = this.index;
            int i2 = i + 1;
            if (i == 0) {
                try {
                    Object obj2 = this.bufferSupplier.get();
                    Objects.requireNonNull(obj2, "The bufferSupplier returned a null buffer");
                    arrayDeque.offer((Collection) obj2);
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            Collection<Object> peek = arrayDeque.peek();
            if (peek.size() + 1 == this.size) {
                arrayDeque.poll();
                peek.add(obj);
                this.produced++;
                this.downstream.onNext(peek);
            }
            Iterator<Collection<Object>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().add(obj);
            }
            if (i2 == this.skip) {
                i2 = 0;
            }
            this.index = i2;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            long j2;
            if (SubscriptionHelper.validate(j)) {
                Subscriber subscriber = this.downstream;
                ArrayDeque<Collection<Object>> arrayDeque = this.buffers;
                do {
                    j2 = get();
                } while (!compareAndSet(j2, Options.Companion.addCap(Long.MAX_VALUE & j2, j) | (j2 & Long.MIN_VALUE)));
                if (j2 == Long.MIN_VALUE) {
                    CloseableKt.postCompleteDrain(j | Long.MIN_VALUE, subscriber, arrayDeque, this, this);
                    return;
                }
                if (this.once.get() || !this.once.compareAndSet(false, true)) {
                    this.upstream.request(Options.Companion.multiplyCap(this.skip, j));
                } else {
                    this.upstream.request(Options.Companion.addCap(this.size, Options.Companion.multiplyCap(this.skip, j - 1)));
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PublisherBufferSkipSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription {
        private static final long serialVersionUID = -5616169793639412593L;
        Collection<Object> buffer;
        final Supplier bufferSupplier;
        boolean done;
        final Subscriber downstream;
        int index;
        final int size;
        final int skip;
        Subscription upstream;

        public PublisherBufferSkipSubscriber(Subscriber subscriber, int i, int i2, ArrayListSupplier arrayListSupplier) {
            this.downstream = subscriber;
            this.size = i;
            this.skip = i2;
            this.bufferSupplier = arrayListSupplier;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            Collection<Object> collection = this.buffer;
            this.buffer = null;
            if (collection != null) {
                this.downstream.onNext(collection);
            }
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.done = true;
            this.buffer = null;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            Collection<Object> collection = this.buffer;
            int i = this.index;
            int i2 = i + 1;
            if (i == 0) {
                try {
                    Object obj2 = this.bufferSupplier.get();
                    Objects.requireNonNull(obj2, "The bufferSupplier returned a null buffer");
                    collection = (Collection) obj2;
                    this.buffer = collection;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            if (collection != null) {
                collection.add(obj);
                if (collection.size() == this.size) {
                    this.buffer = null;
                    this.downstream.onNext(collection);
                }
            }
            if (i2 == this.skip) {
                i2 = 0;
            }
            this.index = i2;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                if (get() != 0 || !compareAndSet(0, 1)) {
                    this.upstream.request(Options.Companion.multiplyCap(this.skip, j));
                    return;
                }
                this.upstream.request(Options.Companion.addCap(Options.Companion.multiplyCap(j, this.size), Options.Companion.multiplyCap(this.skip - this.size, j - 1)));
            }
        }
    }

    public FlowableBuffer(FlowableObserveOn flowableObserveOn) {
        super(flowableObserveOn);
        this.size = 20;
        this.skip = 20;
        this.bufferSupplier = ArrayListSupplier.INSTANCE;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        switch (this.$r8$classId) {
            case 0:
                ArrayListSupplier arrayListSupplier = (ArrayListSupplier) this.bufferSupplier;
                Flowable flowable = this.source;
                int i = this.size;
                int i2 = this.skip;
                if (i != i2) {
                    if (i2 <= i) {
                        flowable.subscribe((FlowableSubscriber) new PublisherBufferOverlappingSubscriber(flowableSubscriber, i, i2, arrayListSupplier));
                        break;
                    } else {
                        flowable.subscribe((FlowableSubscriber) new PublisherBufferSkipSubscriber(flowableSubscriber, i, i2, arrayListSupplier));
                        break;
                    }
                } else {
                    flowable.subscribe((FlowableSubscriber) new PublisherBufferExactSubscriber(flowableSubscriber, i, arrayListSupplier));
                    break;
                }
            default:
                Flowable flowable2 = this.source;
                Function function = this.bufferSupplier;
                if (!UStringsKt.tryScalarXMapSubscribe(flowable2, flowableSubscriber, function)) {
                    flowable2.subscribe((FlowableSubscriber) new FlowableFlatMap$MergeSubscriber(flowableSubscriber, function, this.size, this.skip));
                    break;
                }
                break;
        }
    }

    public FlowableBuffer(Flowable flowable, Function function, int i, int i2) {
        super(flowable);
        this.bufferSupplier = function;
        this.size = i;
        this.skip = i2;
    }
}
