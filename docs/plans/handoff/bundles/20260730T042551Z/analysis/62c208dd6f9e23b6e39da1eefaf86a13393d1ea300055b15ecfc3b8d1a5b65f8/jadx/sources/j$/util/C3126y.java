package j$.util;

import j$.time.AbstractC2959a;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C3126y implements LongConsumer, IntConsumer {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    public final void a(C3126y c3126y) {
        this.count += c3126y.count;
        this.sum += c3126y.sum;
        this.min = Math.min(this.min, c3126y.min);
        this.max = Math.max(this.max, c3126y.max);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        accept(i);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    public final String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C3126y.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
