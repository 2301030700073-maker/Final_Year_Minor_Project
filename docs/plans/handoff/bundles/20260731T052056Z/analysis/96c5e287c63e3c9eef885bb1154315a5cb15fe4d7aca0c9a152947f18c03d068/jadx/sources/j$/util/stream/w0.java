package j$.util.stream;

import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.function.ToLongFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class w0 implements IntFunction, ObjLongConsumer, BiConsumer, LongFunction, Supplier, LongBinaryOperator, ToLongFunction, Consumer, BinaryOperator {
    public final /* synthetic */ int a;

    public /* synthetic */ w0(int i) {
        this.a = i;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 2:
                ((j$.util.x) obj).a((j$.util.x) obj2);
                break;
            default:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 0:
                return Integer.valueOf(i);
            case 3:
                return new Long[i];
            case IMAGE_VALUE:
                return new Object[i];
            case RADIO_COLUMN_VALUE:
                return new Object[i];
            case SIZE_BOX_VALUE:
                return new Integer[i];
            case 23:
                return new Long[i];
            case 24:
                return new Double[i];
            case 27:
                return new Integer[i];
            case 28:
                return new Integer[i];
            default:
                return new Long[i];
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.a) {
            case 8:
                return Math.max(j, j2);
            case 9:
                return j + j2;
            default:
                return Math.min(j, j2);
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new long[2];
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 12:
                break;
            case 25:
                break;
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        switch (this.a) {
            case 1:
                ((j$.util.x) obj).accept(j);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + j;
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        int i = this.a;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.a) {
            case 4:
                return Long.valueOf(j);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return v3.F(j);
            case LAZY_VERTICAL_GRID_VALUE:
                return v3.N(j);
            default:
                return v3.O(j);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 15:
                return new n2((a2) obj, (a2) obj2);
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            default:
                return new r2((g2) obj, (g2) obj2);
            case VERTICAL_GRID_ITEM_VALUE:
                return new o2((c2) obj, (c2) obj2);
            case RADIO_BUTTON_VALUE:
                return new p2((e2) obj, (e2) obj2);
        }
    }

    private final void accept$j$$util$stream$Node$0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$1(Object obj) {
    }
}
