package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: UInt.kt */
/* loaded from: classes.dex */
public final class UInt implements Comparable {
    public static final Companion Companion = new Companion(null);
    private final int data;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UInt m2678boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2679constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2680equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m2683unboximpl();
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2681hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2680equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m2681hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2683unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return UnsignedKt.uintCompare(m2683unboximpl(), ((UInt) obj).m2683unboximpl());
    }

    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    /* compiled from: UInt.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2682toStringimpl(int i) {
        return String.valueOf(i & BodyPartID.bodyIdMax);
    }

    public String toString() {
        return m2682toStringimpl(this.data);
    }
}
