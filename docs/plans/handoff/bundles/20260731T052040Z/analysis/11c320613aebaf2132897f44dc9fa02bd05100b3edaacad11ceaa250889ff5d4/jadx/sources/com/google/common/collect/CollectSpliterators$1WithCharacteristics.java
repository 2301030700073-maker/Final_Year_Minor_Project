package com.google.common.collect;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CollectSpliterators$1WithCharacteristics implements Spliterator {
    public final Spliterator.OfInt delegate;
    public final /* synthetic */ int val$extraCharacteristics;
    public final /* synthetic */ IntFunction val$function;

    public CollectSpliterators$1WithCharacteristics(Spliterator.OfInt ofInt, IntFunction intFunction, int i) {
        this.val$function = intFunction;
        this.val$extraCharacteristics = i;
        this.delegate = ofInt;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.val$extraCharacteristics | 16464;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.delegate.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        this.delegate.forEachRemaining((IntConsumer) new CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0(consumer, this.val$function, 0));
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (hasCharacteristics(4)) {
            return null;
        }
        Node$$ExternalSyntheticBUOutline0.m();
        return null;
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
        return this.delegate.tryAdvance((IntConsumer) new CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0(consumer, this.val$function, 1));
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator.OfInt trySplit = this.delegate.trySplit();
        if (trySplit == null) {
            return null;
        }
        return new CollectSpliterators$1WithCharacteristics(trySplit, this.val$function, this.val$extraCharacteristics);
    }
}
