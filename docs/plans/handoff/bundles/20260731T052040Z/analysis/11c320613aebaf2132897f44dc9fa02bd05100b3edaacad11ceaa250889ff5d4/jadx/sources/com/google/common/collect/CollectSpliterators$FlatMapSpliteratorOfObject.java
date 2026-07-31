package com.google.common.collect;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CollectSpliterators$FlatMapSpliteratorOfObject implements Spliterator {
    public int characteristics;
    public long estimatedSize;
    public final Spliterator from;
    public final Function function;
    public Spliterator prefix;

    public CollectSpliterators$FlatMapSpliteratorOfObject(Spliterator spliterator, Spliterator spliterator2, Function function, int i, long j) {
        this.prefix = spliterator;
        this.from = spliterator2;
        this.function = function;
        this.characteristics = i;
        this.estimatedSize = j;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.characteristics;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        Spliterator spliterator = this.prefix;
        if (spliterator != null) {
            this.estimatedSize = Math.max(this.estimatedSize, spliterator.estimateSize());
        }
        return Math.max(this.estimatedSize, 0L);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Spliterator spliterator = this.prefix;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            this.prefix = null;
        }
        this.from.forEachRemaining(new PrettyTime$$ExternalSyntheticLambda0(this, consumer, 1));
        this.estimatedSize = 0L;
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
        int i;
        do {
            Spliterator spliterator = this.prefix;
            i = 1;
            if (spliterator != null && spliterator.tryAdvance(consumer)) {
                long j = this.estimatedSize;
                if (j != Long.MAX_VALUE) {
                    this.estimatedSize = j - 1;
                }
                return true;
            }
            this.prefix = null;
        } while (this.from.tryAdvance(new Player$$ExternalSyntheticLambda1(this, i)));
        return false;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator trySplit = this.from.trySplit();
        if (trySplit == null) {
            Spliterator spliterator = this.prefix;
            if (spliterator == null) {
                return null;
            }
            this.prefix = null;
            return spliterator;
        }
        int i = this.characteristics & (-65);
        long estimateSize = estimateSize();
        if (estimateSize < Long.MAX_VALUE) {
            estimateSize /= 2;
            this.estimatedSize -= estimateSize;
            this.characteristics = i;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject collectSpliterators$FlatMapSpliteratorOfObject = new CollectSpliterators$FlatMapSpliteratorOfObject(this.prefix, trySplit, this.function, i, estimateSize);
        this.prefix = null;
        return collectSpliterators$FlatMapSpliteratorOfObject;
    }
}
