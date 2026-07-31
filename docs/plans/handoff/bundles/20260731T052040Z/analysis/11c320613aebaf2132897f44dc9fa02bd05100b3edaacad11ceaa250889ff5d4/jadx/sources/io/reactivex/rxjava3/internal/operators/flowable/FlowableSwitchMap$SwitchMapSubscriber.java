package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableSwitchMap$SwitchMapSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription {
    public static final FlowableSwitchMap$SwitchMapInnerSubscriber CANCELLED;
    private static final long serialVersionUID = -3491074160481096299L;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final Subscriber downstream;
    final Function mapper;
    volatile long unique;
    Subscription upstream;
    final AtomicReference<FlowableSwitchMap$SwitchMapInnerSubscriber> active = new AtomicReference<>();
    final AtomicLong requested = new AtomicLong();
    final boolean delayErrors = false;
    final AtomicThrowable errors = new AtomicThrowable();

    static {
        FlowableSwitchMap$SwitchMapInnerSubscriber flowableSwitchMap$SwitchMapInnerSubscriber = new FlowableSwitchMap$SwitchMapInnerSubscriber(null, -1L, 1);
        CANCELLED = flowableSwitchMap$SwitchMapInnerSubscriber;
        SubscriptionHelper.cancel(flowableSwitchMap$SwitchMapInnerSubscriber);
    }

    public FlowableSwitchMap$SwitchMapSubscriber(Subscriber subscriber, VideoPlayerUi.AnonymousClass1 anonymousClass1, int i) {
        this.downstream = subscriber;
        this.mapper = anonymousClass1;
        this.bufferSize = i;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        disposeInner();
        this.errors.tryTerminateAndReport();
    }

    public final void disposeInner() {
        AtomicReference<FlowableSwitchMap$SwitchMapInnerSubscriber> atomicReference = this.active;
        FlowableSwitchMap$SwitchMapInnerSubscriber flowableSwitchMap$SwitchMapInnerSubscriber = CANCELLED;
        FlowableSwitchMap$SwitchMapInnerSubscriber andSet = atomicReference.getAndSet(flowableSwitchMap$SwitchMapInnerSubscriber);
        if (andSet == flowableSwitchMap$SwitchMapInnerSubscriber || andSet == null) {
            return;
        }
        SubscriptionHelper.cancel(andSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x00de, code lost:
    
        r15 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drain() {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.FlowableSwitchMap$SwitchMapSubscriber.drain():void");
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        if (!this.done) {
            AtomicThrowable atomicThrowable = this.errors;
            atomicThrowable.getClass();
            if (ExceptionHelper.addThrowable(atomicThrowable, th)) {
                if (!this.delayErrors) {
                    disposeInner();
                }
                this.done = true;
                drain();
                return;
            }
        }
        MathKt.onError(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (this.done) {
            return;
        }
        long j = this.unique + 1;
        this.unique = j;
        FlowableSwitchMap$SwitchMapInnerSubscriber flowableSwitchMap$SwitchMapInnerSubscriber = this.active.get();
        if (flowableSwitchMap$SwitchMapInnerSubscriber != null) {
            SubscriptionHelper.cancel(flowableSwitchMap$SwitchMapInnerSubscriber);
        }
        try {
            Object apply = this.mapper.apply(obj);
            Objects.requireNonNull(apply, "The publisher returned is null");
            Publisher publisher = (Publisher) apply;
            FlowableSwitchMap$SwitchMapInnerSubscriber flowableSwitchMap$SwitchMapInnerSubscriber2 = new FlowableSwitchMap$SwitchMapInnerSubscriber(this, j, this.bufferSize);
            while (true) {
                FlowableSwitchMap$SwitchMapInnerSubscriber flowableSwitchMap$SwitchMapInnerSubscriber3 = this.active.get();
                if (flowableSwitchMap$SwitchMapInnerSubscriber3 == CANCELLED) {
                    return;
                }
                AtomicReference<FlowableSwitchMap$SwitchMapInnerSubscriber> atomicReference = this.active;
                while (!atomicReference.compareAndSet(flowableSwitchMap$SwitchMapInnerSubscriber3, flowableSwitchMap$SwitchMapInnerSubscriber2)) {
                    if (atomicReference.get() != flowableSwitchMap$SwitchMapInnerSubscriber3) {
                        break;
                    }
                }
                ((Flowable) publisher).subscribe((Subscriber) flowableSwitchMap$SwitchMapInnerSubscriber2);
                return;
            }
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.upstream.cancel();
            onError(th);
        }
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
            Options.Companion.add(this.requested, j);
            if (this.unique == 0) {
                this.upstream.request(Long.MAX_VALUE);
            } else {
                drain();
            }
        }
    }
}
