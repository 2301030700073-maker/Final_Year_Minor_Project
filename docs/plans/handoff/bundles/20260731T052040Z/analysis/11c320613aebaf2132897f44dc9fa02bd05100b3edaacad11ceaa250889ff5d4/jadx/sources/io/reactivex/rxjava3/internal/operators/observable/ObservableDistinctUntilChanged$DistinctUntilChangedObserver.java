package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import j$.util.Objects;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableDistinctUntilChanged$DistinctUntilChangedObserver extends BasicFuseableObserver {
    public boolean hasValue;
    public Object last;

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.done) {
            return;
        }
        int i = this.sourceMode;
        Observer observer = this.downstream;
        if (i != 0) {
            observer.onNext(obj);
            return;
        }
        try {
            if (this.hasValue) {
                boolean equals = Objects.equals(this.last, obj);
                this.last = obj;
                if (equals) {
                    return;
                }
            } else {
                this.hasValue = true;
                this.last = obj;
            }
            observer.onNext(obj);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.upstream.dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        while (true) {
            Object poll = this.qd.poll();
            if (poll == null) {
                return null;
            }
            if (!this.hasValue) {
                this.hasValue = true;
                this.last = poll;
                return poll;
            }
            if (!Objects.equals(this.last, poll)) {
                this.last = poll;
                return poll;
            }
            this.last = poll;
        }
    }
}
