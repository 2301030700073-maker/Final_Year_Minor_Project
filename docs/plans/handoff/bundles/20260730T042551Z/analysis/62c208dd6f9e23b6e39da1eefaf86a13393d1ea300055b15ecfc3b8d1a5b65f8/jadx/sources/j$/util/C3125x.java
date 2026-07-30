package j$.util;

import com.google.android.gms.common.api.Api;
import j$.time.AbstractC2959a;
import java.util.function.IntConsumer;

/* renamed from: j$.util.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C3125x implements IntConsumer {
    private long count;
    private long sum;
    private int min = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    private int max = Integer.MIN_VALUE;

    public final void a(C3125x c3125x) {
        this.count += c3125x.count;
        this.sum += c3125x.sum;
        this.min = Math.min(this.min, c3125x.min);
        this.max = Math.max(this.max, c3125x.max);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    public final String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C3125x.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
