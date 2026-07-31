package com.google.common.collect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Iterators$9 extends UnmodifiableIterator {
    public boolean done;
    public final /* synthetic */ Object val$value;

    public Iterators$9(Object obj) {
        this.val$value = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.done;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.done) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return null;
        }
        this.done = true;
        return this.val$value;
    }
}
