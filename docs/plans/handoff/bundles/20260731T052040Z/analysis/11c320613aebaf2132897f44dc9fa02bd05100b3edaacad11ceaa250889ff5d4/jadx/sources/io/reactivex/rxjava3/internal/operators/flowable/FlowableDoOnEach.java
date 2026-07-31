package io.reactivex.rxjava3.internal.operators.flowable;

import androidx.transition.Transition;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableDoOnEach extends AbstractFlowableWithUpstream {
    public final Transition.AnonymousClass1 onAfterTerminate;
    public final Action onComplete;
    public final Consumer onError;
    public final Consumer onNext;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DoOnEachConditionalSubscriber extends BasicFuseableConditionalSubscriber {
        public final Action onAfterTerminate;
        public final Action onComplete;
        public final Consumer onError;
        public final Consumer onNext;

        public DoOnEachConditionalSubscriber(ConditionalSubscriber conditionalSubscriber, Consumer consumer, Consumer consumer2, Action action, Transition.AnonymousClass1 anonymousClass1) {
            super(conditionalSubscriber);
            this.onNext = consumer;
            this.onError = consumer2;
            this.onComplete = action;
            this.onAfterTerminate = anonymousClass1;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber, org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            try {
                this.onComplete.run();
                this.done = true;
                this.downstream.onComplete();
                try {
                    this.onAfterTerminate.run();
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    MathKt.onError(th);
                }
            } catch (Throwable th2) {
                fail(th2);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber, org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            ConditionalSubscriber conditionalSubscriber = this.downstream;
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.done = true;
            try {
                this.onError.accept(th);
                conditionalSubscriber.onError(th);
            } catch (Throwable th2) {
                AppKt.throwIfFatal(th2);
                conditionalSubscriber.onError(new CompositeException(th, th2));
            }
            try {
                this.onAfterTerminate.run();
            } catch (Throwable th3) {
                AppKt.throwIfFatal(th3);
                MathKt.onError(th3);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            int i = this.sourceMode;
            ConditionalSubscriber conditionalSubscriber = this.downstream;
            if (i != 0) {
                conditionalSubscriber.onNext(null);
                return;
            }
            try {
                this.onNext.accept(obj);
                conditionalSubscriber.onNext(obj);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Consumer consumer = this.onError;
            try {
                Object poll = this.qs.poll();
                Action action = this.onAfterTerminate;
                if (poll == null) {
                    if (this.sourceMode == 1) {
                        this.onComplete.run();
                        action.run();
                    }
                    return poll;
                }
                try {
                    this.onNext.accept(poll);
                    action.run();
                    return poll;
                } catch (Throwable th) {
                    try {
                        AppKt.throwIfFatal(th);
                        try {
                            consumer.accept(th);
                            ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
                            if (th instanceof Exception) {
                                throw th;
                            }
                            throw th;
                        } catch (Throwable th2) {
                            AppKt.throwIfFatal(th2);
                            throw new CompositeException(th, th2);
                        }
                    } catch (Throwable th3) {
                        action.run();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                AppKt.throwIfFatal(th4);
                try {
                    consumer.accept(th4);
                    ExceptionHelper.Termination termination2 = ExceptionHelper.TERMINATED;
                    if (th4 instanceof Exception) {
                        throw th4;
                    }
                    throw th4;
                } catch (Throwable th5) {
                    AppKt.throwIfFatal(th5);
                    throw new CompositeException(th4, th5);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public final boolean tryOnNext(Object obj) {
            if (this.done) {
                return false;
            }
            try {
                this.onNext.accept(obj);
                return this.downstream.tryOnNext(obj);
            } catch (Throwable th) {
                fail(th);
                return false;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DoOnEachSubscriber extends BasicFuseableSubscriber {
        public final Action onAfterTerminate;
        public final Action onComplete;
        public final Consumer onError;
        public final Consumer onNext;

        public DoOnEachSubscriber(Subscriber subscriber, Consumer consumer, Consumer consumer2, Action action, Transition.AnonymousClass1 anonymousClass1) {
            super(subscriber);
            this.onNext = consumer;
            this.onError = consumer2;
            this.onComplete = action;
            this.onAfterTerminate = anonymousClass1;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            try {
                this.onComplete.run();
                this.done = true;
                this.downstream.onComplete();
                try {
                    this.onAfterTerminate.run();
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    MathKt.onError(th);
                }
            } catch (Throwable th2) {
                fail(th2);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            Subscriber subscriber = this.downstream;
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.done = true;
            try {
                this.onError.accept(th);
                subscriber.onError(th);
            } catch (Throwable th2) {
                AppKt.throwIfFatal(th2);
                subscriber.onError(new CompositeException(th, th2));
            }
            try {
                this.onAfterTerminate.run();
            } catch (Throwable th3) {
                AppKt.throwIfFatal(th3);
                MathKt.onError(th3);
            }
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
                this.onNext.accept(obj);
                subscriber.onNext(obj);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Consumer consumer = this.onError;
            try {
                Object poll = this.qs.poll();
                Action action = this.onAfterTerminate;
                if (poll == null) {
                    if (this.sourceMode == 1) {
                        this.onComplete.run();
                        action.run();
                    }
                    return poll;
                }
                try {
                    this.onNext.accept(poll);
                    action.run();
                    return poll;
                } catch (Throwable th) {
                    try {
                        AppKt.throwIfFatal(th);
                        try {
                            consumer.accept(th);
                            ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
                            if (th instanceof Exception) {
                                throw th;
                            }
                            throw th;
                        } catch (Throwable th2) {
                            AppKt.throwIfFatal(th2);
                            throw new CompositeException(th, th2);
                        }
                    } catch (Throwable th3) {
                        action.run();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                AppKt.throwIfFatal(th4);
                try {
                    consumer.accept(th4);
                    ExceptionHelper.Termination termination2 = ExceptionHelper.TERMINATED;
                    if (th4 instanceof Exception) {
                        throw th4;
                    }
                    throw th4;
                } catch (Throwable th5) {
                    AppKt.throwIfFatal(th5);
                    throw new CompositeException(th4, th5);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowableDoOnEach(Flowable flowable, Consumer consumer, Consumer consumer2, Action action) {
        super(flowable);
        Transition.AnonymousClass1 anonymousClass1 = Functions.EMPTY_ACTION;
        this.onNext = consumer;
        this.onError = consumer2;
        this.onComplete = action;
        this.onAfterTerminate = anonymousClass1;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        boolean z = flowableSubscriber instanceof ConditionalSubscriber;
        Flowable flowable = this.source;
        Consumer consumer = this.onNext;
        if (z) {
            flowable.subscribe((FlowableSubscriber) new DoOnEachConditionalSubscriber((ConditionalSubscriber) flowableSubscriber, consumer, this.onError, this.onComplete, this.onAfterTerminate));
        } else {
            flowable.subscribe((FlowableSubscriber) new DoOnEachSubscriber(flowableSubscriber, consumer, this.onError, this.onComplete, this.onAfterTerminate));
        }
    }
}
