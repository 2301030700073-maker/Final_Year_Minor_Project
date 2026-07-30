package j$.util;

import j$.util.stream.C2997b;
import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2974b implements Comparator, Serializable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C2974b(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                C2997b c2997b = (C2997b) ((ToDoubleFunction) obj3);
                return Double.compare(c2997b.applyAsDouble(obj), c2997b.applyAsDouble(obj2));
            case 1:
                C2997b c2997b2 = (C2997b) ((ToIntFunction) obj3);
                return Integer.compare(c2997b2.applyAsInt(obj), c2997b2.applyAsInt(obj2));
            case 2:
                C2997b c2997b3 = (C2997b) ((ToLongFunction) obj3);
                return Long.compare(c2997b3.applyAsLong(obj), c2997b3.applyAsLong(obj2));
            default:
                Function function = (Function) obj3;
                return ((Comparable) function.apply(obj)).compareTo(function.apply(obj2));
        }
    }
}
