package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompletablePeek extends Completable {
    public final Consumer onError;
    public final Consumer onSubscribe;
    public final Completable source;

    public CompletablePeek(Completable completable, Consumer consumer, Consumer consumer2) {
        this.source = completable;
        this.onSubscribe = consumer;
        this.onError = consumer2;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public final void subscribeActual(CompletableObserver completableObserver) {
        this.source.subscribe(new MaybeMap.MapMaybeObserver(this, completableObserver));
    }
}
