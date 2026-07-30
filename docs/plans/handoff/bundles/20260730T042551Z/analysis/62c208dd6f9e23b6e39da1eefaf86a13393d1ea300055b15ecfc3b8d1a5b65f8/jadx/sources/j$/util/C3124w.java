package j$.util;

import j$.time.AbstractC2959a;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C3124w implements DoubleConsumer {
    private double a;
    private double b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final void a(C3124w c3124w) {
        this.count += c3124w.count;
        this.b += c3124w.b;
        double d = c3124w.sum - this.a;
        double d2 = this.sum;
        double d3 = d2 + d;
        double d4 = (d3 - d2) - d;
        this.a = d4;
        double d5 = c3124w.a - d4;
        double d6 = d3 + d5;
        this.a = (d6 - d3) - d5;
        this.sum = d6;
        this.min = Math.min(this.min, c3124w.min);
        this.max = Math.max(this.max, c3124w.max);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.count++;
        this.b += d;
        double d2 = d - this.a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.a = (d4 - d3) - d2;
        this.sum = d4;
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    public final String toString() {
        double d;
        Object[] objArr = new Object[6];
        objArr[0] = C3124w.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        double d2 = this.sum + this.a;
        if (Double.isNaN(d2) && Double.isInfinite(this.b)) {
            d2 = this.b;
        }
        objArr[2] = Double.valueOf(d2);
        objArr[3] = Double.valueOf(this.min);
        if (this.count > 0) {
            double d3 = this.sum + this.a;
            if (Double.isNaN(d3) && Double.isInfinite(this.b)) {
                d3 = this.b;
            }
            d = d3 / this.count;
        } else {
            d = 0.0d;
        }
        objArr[4] = Double.valueOf(d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
