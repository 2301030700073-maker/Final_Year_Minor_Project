package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractFlowableWithUpstream extends Flowable {
    public final Flowable source;

    public AbstractFlowableWithUpstream(Flowable flowable) {
        Objects.requireNonNull(flowable, "source is null");
        this.source = flowable;
    }
}
