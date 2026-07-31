package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import kotlin.math.MathKt;
import okio.Okio;
import org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableObserveOn extends AbstractObservableWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final int bufferSize;
    public final Object scheduler;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOnObserver extends BasicIntQueueDisposable implements Observer, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;
        final int bufferSize;
        final boolean delayError = false;
        volatile boolean disposed;
        volatile boolean done;
        final Observer downstream;
        Throwable error;
        boolean outputFused;
        SimpleQueue queue;
        int sourceMode;
        Disposable upstream;
        final Scheduler.Worker worker;

        public ObserveOnObserver(Observer observer, Scheduler.Worker worker, int i) {
            this.downstream = observer;
            this.worker = worker;
            this.bufferSize = i;
        }

        public final boolean checkTerminated(boolean z, boolean z2, Observer observer) {
            if (this.disposed) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                this.disposed = true;
                if (th != null) {
                    observer.onError(th);
                } else {
                    observer.onComplete();
                }
                this.worker.dispose();
                return true;
            }
            if (th != null) {
                this.disposed = true;
                this.queue.clear();
                observer.onError(th);
                this.worker.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.disposed = true;
            observer.onComplete();
            this.worker.dispose();
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.queue.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.upstream.dispose();
            this.worker.dispose();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 2) {
                this.queue.offer(obj);
            }
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueDisposable;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        if (getAndIncrement() == 0) {
                            this.worker.schedule(this);
                            return;
                        }
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueDisposable;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new SpscLinkedArrayQueue(this.bufferSize);
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            return this.queue.poll();
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i) {
            this.outputFused = true;
            return 2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x0072, code lost:
        
            r3 = addAndGet(-r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0077, code lost:
        
            if (r3 != 0) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
        
            return;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r7 = this;
                boolean r0 = r7.outputFused
                r1 = 1
                if (r0 == 0) goto L4c
                r0 = r1
            L6:
                boolean r2 = r7.disposed
                if (r2 == 0) goto Lc
                goto L79
            Lc:
                boolean r2 = r7.done
                java.lang.Throwable r3 = r7.error
                boolean r4 = r7.delayError
                if (r4 != 0) goto L27
                if (r2 == 0) goto L27
                if (r3 == 0) goto L27
                r7.disposed = r1
                io.reactivex.rxjava3.core.Observer r0 = r7.downstream
                java.lang.Throwable r1 = r7.error
                r0.onError(r1)
                io.reactivex.rxjava3.core.Scheduler$Worker r7 = r7.worker
                r7.dispose()
                return
            L27:
                io.reactivex.rxjava3.core.Observer r3 = r7.downstream
                r4 = 0
                r3.onNext(r4)
                if (r2 == 0) goto L44
                r7.disposed = r1
                java.lang.Throwable r0 = r7.error
                io.reactivex.rxjava3.core.Observer r1 = r7.downstream
                if (r0 == 0) goto L3b
                r1.onError(r0)
                goto L3e
            L3b:
                r1.onComplete()
            L3e:
                io.reactivex.rxjava3.core.Scheduler$Worker r7 = r7.worker
                r7.dispose()
                return
            L44:
                int r0 = -r0
                int r0 = r7.addAndGet(r0)
                if (r0 != 0) goto L6
                goto L79
            L4c:
                io.reactivex.rxjava3.operators.SimpleQueue r0 = r7.queue
                io.reactivex.rxjava3.core.Observer r2 = r7.downstream
                r3 = r1
            L51:
                boolean r4 = r7.done
                boolean r5 = r0.isEmpty()
                boolean r4 = r7.checkTerminated(r4, r5, r2)
                if (r4 == 0) goto L5e
                goto L79
            L5e:
                boolean r4 = r7.done
                java.lang.Object r5 = r0.poll()     // Catch: java.lang.Throwable -> L7e
                if (r5 != 0) goto L68
                r6 = r1
                goto L69
            L68:
                r6 = 0
            L69:
                boolean r4 = r7.checkTerminated(r4, r6, r2)
                if (r4 == 0) goto L70
                goto L79
            L70:
                if (r6 == 0) goto L7a
                int r3 = -r3
                int r3 = r7.addAndGet(r3)
                if (r3 != 0) goto L51
            L79:
                return
            L7a:
                r2.onNext(r5)
                goto L5e
            L7e:
                r3 = move-exception
                net.newpipe.app.AppKt.throwIfFatal(r3)
                r7.disposed = r1
                io.reactivex.rxjava3.disposables.Disposable r1 = r7.upstream
                r1.dispose()
                r0.clear()
                r2.onError(r3)
                io.reactivex.rxjava3.core.Scheduler$Worker r7 = r7.worker
                r7.dispose()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn.ObserveOnObserver.run():void");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ObservableObserveOn(Observable observable, Object obj, int i, int i2) {
        super(observable);
        this.$r8$classId = i2;
        this.scheduler = obj;
        this.bufferSize = i;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int i = this.$r8$classId;
        int i2 = this.bufferSize;
        Object obj = this.scheduler;
        Observable observable = this.source;
        switch (i) {
            case 0:
                Scheduler scheduler = (Scheduler) obj;
                if (!(scheduler instanceof TrampolineScheduler)) {
                    observable.subscribe(new ObserveOnObserver(observer, scheduler.createWorker(), i2));
                    break;
                } else {
                    observable.subscribe(observer);
                    break;
                }
            default:
                SearchFragment$$ExternalSyntheticLambda1 searchFragment$$ExternalSyntheticLambda1 = (SearchFragment$$ExternalSyntheticLambda1) obj;
                if (!Okio.tryScalarXMapSubscribe(observable, observer, searchFragment$$ExternalSyntheticLambda1)) {
                    observable.subscribe(new ObservableSwitchMap$SwitchMapObserver(observer, searchFragment$$ExternalSyntheticLambda1, i2));
                    break;
                }
                break;
        }
    }
}
