package j$.util;

import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;

/* renamed from: j$.util.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2975c implements Comparator, Serializable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Comparator b;
    public final /* synthetic */ Object c;

    public /* synthetic */ C2975c(Comparator comparator, Object obj, int i) {
        this.a = i;
        this.b = comparator;
        this.c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Comparator comparator = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                Comparator comparator2 = (Comparator) obj3;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Function function = (Function) obj3;
                return comparator.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
