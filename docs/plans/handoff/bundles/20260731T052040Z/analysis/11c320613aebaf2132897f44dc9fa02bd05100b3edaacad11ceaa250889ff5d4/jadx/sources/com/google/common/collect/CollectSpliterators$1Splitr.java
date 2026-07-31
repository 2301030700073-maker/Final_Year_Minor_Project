package com.google.common.collect;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CollectSpliterators$1Splitr implements Spliterator, Consumer {
    public Object holder = null;
    public final /* synthetic */ Spliterator val$fromSpliterator;
    public final /* synthetic */ Predicate val$predicate;

    public CollectSpliterators$1Splitr(Spliterator spliterator, Predicate predicate) {
        this.val$fromSpliterator = spliterator;
        this.val$predicate = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.holder = obj;
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.val$fromSpliterator.characteristics() & 277;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.val$fromSpliterator.estimateSize() / 2;
    }

    @Override // j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Spliterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.val$fromSpliterator.getComparator();
    }

    @Override // j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return Spliterator.CC.$default$getExactSizeIfKnown(this);
    }

    @Override // j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        while (this.val$fromSpliterator.tryAdvance(this)) {
            try {
                Object obj = this.holder;
                if (this.val$predicate.test(obj)) {
                    consumer.accept(obj);
                    this.holder = null;
                    return true;
                }
            } finally {
                this.holder = null;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator trySplit = this.val$fromSpliterator.trySplit();
        if (trySplit == null) {
            return null;
        }
        Predicate predicate = this.val$predicate;
        predicate.getClass();
        return new CollectSpliterators$1Splitr(trySplit, predicate);
    }
}
