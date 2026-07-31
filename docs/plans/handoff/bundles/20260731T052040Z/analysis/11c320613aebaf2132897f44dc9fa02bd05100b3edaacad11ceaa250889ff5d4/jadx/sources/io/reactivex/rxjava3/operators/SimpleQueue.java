package io.reactivex.rxjava3.operators;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SimpleQueue {
    void clear();

    boolean isEmpty();

    boolean offer(Object obj);

    Object poll();
}
