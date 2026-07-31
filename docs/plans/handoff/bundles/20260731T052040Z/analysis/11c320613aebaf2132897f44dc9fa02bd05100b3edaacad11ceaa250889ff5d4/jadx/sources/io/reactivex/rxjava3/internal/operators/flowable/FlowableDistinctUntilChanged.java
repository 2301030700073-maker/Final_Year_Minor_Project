package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import j$.util.Objects;
import okio.ByteString;
import okio.Path;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableDistinctUntilChanged extends AbstractFlowableWithUpstream {
    public final ByteString.Companion comparer;
    public final Path.Companion keySelector;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DistinctUntilChangedConditionalSubscriber extends BasicFuseableConditionalSubscriber {
        public final ByteString.Companion comparer;
        public boolean hasValue;
        public final Function keySelector;
        public Object last;

        public DistinctUntilChangedConditionalSubscriber(ConditionalSubscriber conditionalSubscriber, Path.Companion companion, ByteString.Companion companion2) {
            super(conditionalSubscriber);
            this.keySelector = companion;
            this.comparer = companion2;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (tryOnNext(obj)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            while (true) {
                Object poll = this.qs.poll();
                if (poll == null) {
                    return null;
                }
                Object apply = this.keySelector.apply(poll);
                if (!this.hasValue) {
                    this.hasValue = true;
                    this.last = apply;
                    return poll;
                }
                Object obj = this.last;
                this.comparer.getClass();
                if (!Objects.equals(obj, apply)) {
                    this.last = apply;
                    return poll;
                }
                this.last = apply;
                if (this.sourceMode != 1) {
                    this.upstream.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public final boolean tryOnNext(Object obj) {
            if (this.done) {
                return false;
            }
            int i = this.sourceMode;
            ConditionalSubscriber conditionalSubscriber = this.downstream;
            if (i != 0) {
                return conditionalSubscriber.tryOnNext(obj);
            }
            try {
                Object apply = this.keySelector.apply(obj);
                if (this.hasValue) {
                    ByteString.Companion companion = this.comparer;
                    Object obj2 = this.last;
                    companion.getClass();
                    boolean equals = Objects.equals(obj2, apply);
                    this.last = apply;
                    if (equals) {
                        return false;
                    }
                } else {
                    this.hasValue = true;
                    this.last = apply;
                }
                conditionalSubscriber.onNext(obj);
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DistinctUntilChangedSubscriber extends BasicFuseableSubscriber implements ConditionalSubscriber {
        public final ByteString.Companion comparer;
        public boolean hasValue;
        public final Function keySelector;
        public Object last;

        public DistinctUntilChangedSubscriber(Subscriber subscriber, Path.Companion companion, ByteString.Companion companion2) {
            super(subscriber);
            this.keySelector = companion;
            this.comparer = companion2;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (tryOnNext(obj)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            while (true) {
                Object poll = this.qs.poll();
                if (poll == null) {
                    return null;
                }
                Object apply = this.keySelector.apply(poll);
                if (!this.hasValue) {
                    this.hasValue = true;
                    this.last = apply;
                    return poll;
                }
                Object obj = this.last;
                this.comparer.getClass();
                if (!Objects.equals(obj, apply)) {
                    this.last = apply;
                    return poll;
                }
                this.last = apply;
                if (this.sourceMode != 1) {
                    this.upstream.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public final boolean tryOnNext(Object obj) {
            if (this.done) {
                return false;
            }
            int i = this.sourceMode;
            Subscriber subscriber = this.downstream;
            if (i != 0) {
                subscriber.onNext(obj);
                return true;
            }
            try {
                Object apply = this.keySelector.apply(obj);
                if (this.hasValue) {
                    ByteString.Companion companion = this.comparer;
                    Object obj2 = this.last;
                    companion.getClass();
                    boolean equals = Objects.equals(obj2, apply);
                    this.last = apply;
                    if (equals) {
                        return false;
                    }
                } else {
                    this.hasValue = true;
                    this.last = apply;
                }
                subscriber.onNext(obj);
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowableDistinctUntilChanged(Flowable flowable) {
        super(flowable);
        Path.Companion companion = Functions.IDENTITY;
        ByteString.Companion companion2 = Functions.EQUALS;
        this.keySelector = companion;
        this.comparer = companion2;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        boolean z = flowableSubscriber instanceof ConditionalSubscriber;
        ByteString.Companion companion = this.comparer;
        Path.Companion companion2 = this.keySelector;
        Flowable flowable = this.source;
        if (z) {
            flowable.subscribe((FlowableSubscriber) new DistinctUntilChangedConditionalSubscriber((ConditionalSubscriber) flowableSubscriber, companion2, companion));
        } else {
            flowable.subscribe((FlowableSubscriber) new DistinctUntilChangedSubscriber(flowableSubscriber, companion2, companion));
        }
    }
}
