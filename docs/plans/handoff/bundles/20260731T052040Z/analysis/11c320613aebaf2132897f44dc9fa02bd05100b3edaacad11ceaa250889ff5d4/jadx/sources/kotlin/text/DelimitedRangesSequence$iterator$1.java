package kotlin.text;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DelimitedRangesSequence$iterator$1 implements Iterator, KMappedMarker {
    public int counter;
    public int currentStartIndex;
    public IntRange nextItem;
    public int nextSearchIndex;
    public int nextState = -1;
    public final /* synthetic */ DelimitedRangesSequence this$0;

    public DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        this.this$0 = delimitedRangesSequence;
        int coerceIn = RangesKt.coerceIn(0, 0, delimitedRangesSequence.input.length());
        this.currentStartIndex = coerceIn;
        this.nextSearchIndex = coerceIn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        if (r7 < r4) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void calcNext$2() {
        /*
            r8 = this;
            kotlin.text.DelimitedRangesSequence r0 = r8.this$0
            java.lang.CharSequence r1 = r0.input
            int r2 = r8.nextSearchIndex
            r3 = 0
            if (r2 >= 0) goto Lf
            r8.nextState = r3
            r0 = 0
            r8.nextItem = r0
            return
        Lf:
            int r4 = r0.limit
            r5 = -1
            r6 = 1
            if (r4 <= 0) goto L1c
            int r7 = r8.counter
            int r7 = r7 + r6
            r8.counter = r7
            if (r7 >= r4) goto L22
        L1c:
            int r4 = r1.length()
            if (r2 <= r4) goto L36
        L22:
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            int r2 = r8.currentStartIndex
            r1.getClass()
            int r1 = r1.length()
            int r1 = r1 - r6
            r0.<init>(r2, r1, r6)
            r8.nextItem = r0
            r8.nextSearchIndex = r5
            goto L7f
        L36:
            kotlin.jvm.functions.Function2 r0 = r0.getNextMatch
            int r2 = r8.nextSearchIndex
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.invoke(r1, r2)
            kotlin.Pair r0 = (kotlin.Pair) r0
            if (r0 != 0) goto L5a
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            int r2 = r8.currentStartIndex
            r1.getClass()
            int r1 = r1.length()
            int r1 = r1 - r6
            r0.<init>(r2, r1, r6)
            r8.nextItem = r0
            r8.nextSearchIndex = r5
            goto L7f
        L5a:
            java.lang.Object r1 = r0.component1()
            java.lang.Number r1 = (java.lang.Number) r1
            int r1 = r1.intValue()
            java.lang.Object r0 = r0.component2()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r2 = r8.currentStartIndex
            kotlin.ranges.IntRange r2 = kotlin.ranges.RangesKt.until(r2, r1)
            r8.nextItem = r2
            int r1 = r1 + r0
            r8.currentStartIndex = r1
            if (r0 != 0) goto L7c
            r3 = r6
        L7c:
            int r1 = r1 + r3
            r8.nextSearchIndex = r1
        L7f:
            r8.nextState = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.DelimitedRangesSequence$iterator$1.calcNext$2():void");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.nextState == -1) {
            calcNext$2();
        }
        return this.nextState == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.nextState == -1) {
            calcNext$2();
        }
        if (this.nextState == 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return null;
        }
        IntRange intRange = this.nextItem;
        intRange.getClass();
        this.nextItem = null;
        this.nextState = -1;
        return intRange;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
