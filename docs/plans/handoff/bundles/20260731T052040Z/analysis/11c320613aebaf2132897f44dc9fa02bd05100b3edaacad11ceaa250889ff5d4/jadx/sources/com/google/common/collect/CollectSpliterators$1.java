package com.google.common.collect;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CollectSpliterators$1 implements Spliterator {
    public final /* synthetic */ Spliterator val$fromSpliterator;
    public final /* synthetic */ Function val$function;

    public CollectSpliterators$1(Spliterator spliterator, Function function) {
        this.val$fromSpliterator = spliterator;
        this.val$function = function;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.val$fromSpliterator.characteristics() & (-262);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.val$fromSpliterator.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        this.val$fromSpliterator.forEachRemaining(new CollectSpliterators$1$$ExternalSyntheticLambda0(consumer, this.val$function, 0));
    }

    @Override // j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return Spliterator.CC.$default$getComparator(this);
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
        return this.val$fromSpliterator.tryAdvance(new CollectSpliterators$1$$ExternalSyntheticLambda0(consumer, this.val$function, 1));
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator trySplit = this.val$fromSpliterator.trySplit();
        if (trySplit != null) {
            return new CollectSpliterators$1(trySplit, this.val$function);
        }
        return null;
    }
}
