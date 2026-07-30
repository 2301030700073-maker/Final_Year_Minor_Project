package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UByte.kt */
/* loaded from: classes.dex */
public final class UByte implements Comparable {
    public static final Companion Companion = new Companion(null);
    private final byte data;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UByte m2656boximpl(byte b) {
        return new UByte(b);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static byte m2657constructorimpl(byte b) {
        return b;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2658equalsimpl(byte b, Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).m2661unboximpl();
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2659hashCodeimpl(byte b) {
        return b;
    }

    public boolean equals(Object obj) {
        return m2658equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m2659hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ byte m2661unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Intrinsics.compare(m2661unboximpl() & 255, ((UByte) obj).m2661unboximpl() & 255);
    }

    private /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    /* compiled from: UByte.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2660toStringimpl(byte b) {
        return String.valueOf(b & 255);
    }

    public String toString() {
        return m2660toStringimpl(this.data);
    }
}
