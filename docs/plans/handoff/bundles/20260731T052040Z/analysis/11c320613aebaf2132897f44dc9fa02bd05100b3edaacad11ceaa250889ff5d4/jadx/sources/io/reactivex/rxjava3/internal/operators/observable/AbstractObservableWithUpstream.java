package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractObservableWithUpstream extends Observable {
    public final Observable source;

    public AbstractObservableWithUpstream(Observable observable) {
        this.source = observable;
    }
}
