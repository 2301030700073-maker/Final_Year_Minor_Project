package j$.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class EnumC2978e implements Comparator, InterfaceC2977d {
    public static final EnumC2978e INSTANCE;
    private static final /* synthetic */ EnumC2978e[] a;

    static {
        EnumC2978e enumC2978e = new EnumC2978e();
        INSTANCE = enumC2978e;
        a = new EnumC2978e[]{enumC2978e};
    }

    private EnumC2978e() {
    }

    public static EnumC2978e valueOf(String str) {
        return (EnumC2978e) Enum.valueOf(EnumC2978e.class, str);
    }

    public static EnumC2978e[] values() {
        return (EnumC2978e[]) a.clone();
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return Collections.reverseOrder();
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return new C2975c(this, comparator, 0);
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Function function) {
        Objects.requireNonNull(function);
        return E.k(this, new C2974b(3, function));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Function function, Comparator comparator) {
        return E.k(this, Comparator$CC.comparing(function, comparator));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return E.k(this, new C2974b(0, toDoubleFunction));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return E.k(this, new C2974b(1, toIntFunction));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return E.k(this, new C2974b(2, toLongFunction));
    }
}
