package kotlin;

import com.android.volley.BuildConfig;
import kotlin.jvm.JvmInline;
import kotlin.ranges.UIntRange;

/* compiled from: UInt.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 y2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001yB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0005J\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u000fJ\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u000bJ\u001b\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0016J\u001a\u0010\u001f\u001a\u00020 2\b\u0010\t\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b\"\u0010#J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010\u000fJ\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b&\u0010\u000bJ\u001b\u0010$\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010\u001dJ\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010\u0016J\u0010\u0010)\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b*\u0010\u0005J\u0016\u0010+\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u0010\u0005J\u0016\u0010-\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010\u0005J\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b0\u0010\u000fJ\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b1\u0010\u000bJ\u001b\u0010/\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b2\u0010\u001dJ\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b3\u0010\u0016J\u001b\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u00106J\u001b\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b7\u0010\u000bJ\u001b\u00104\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b8\u0010\u001dJ\u001b\u00104\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b9\u0010:J\u001b\u0010;\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b<\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b>\u0010\u000fJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b?\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b@\u0010\u001dJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bA\u0010\u0016J\u001b\u0010B\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bD\u0010EJ\u001b\u0010F\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\bG\u0010\u000fJ\u001b\u0010F\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bH\u0010\u000bJ\u001b\u0010F\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bI\u0010\u001dJ\u001b\u0010F\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bJ\u0010\u0016J\u001e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0003H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bM\u0010\u000bJ\u001e\u0010N\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0003H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bO\u0010\u000bJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\bQ\u0010\u000fJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bR\u0010\u000bJ\u001b\u0010P\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bS\u0010\u001dJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bT\u0010\u0016J\u0010\u0010U\u001a\u00020VH\u0087\b¢\u0006\u0004\bW\u0010XJ\u0010\u0010Y\u001a\u00020ZH\u0087\b¢\u0006\u0004\b[\u0010\\J\u0010\u0010]\u001a\u00020^H\u0087\b¢\u0006\u0004\b_\u0010`J\u0010\u0010a\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bb\u0010\u0005J\u0010\u0010c\u001a\u00020dH\u0087\b¢\u0006\u0004\be\u0010fJ\u0010\u0010g\u001a\u00020hH\u0087\b¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u0016\u0010o\u001a\u00020\rH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bp\u0010XJ\u0016\u0010q\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\br\u0010\u0005J\u0016\u0010s\u001a\u00020\u0011H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bt\u0010fJ\u0016\u0010u\u001a\u00020\u0014H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bv\u0010jJ\u001b\u0010w\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bx\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006z"}, d2 = {"Lkotlin/UInt;", BuildConfig.FLAVOR, "data", BuildConfig.FLAVOR, "constructor-impl", "(I)I", "getData$annotations", "()V", "and", "other", "and-WZ4Q5Ns", "(II)I", "compareTo", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec", "dec-pVg5ArA", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "equals", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "equals-impl", "(ILjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "inc", "inc-pVg5ArA", "inv", "inv-pVg5ArA", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "(IB)B", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "(IS)S", "or", "or-WZ4Q5Ns", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", BuildConfig.FLAVOR, "toByte-impl", "(I)B", "toDouble", BuildConfig.FLAVOR, "toDouble-impl", "(I)D", "toFloat", BuildConfig.FLAVOR, "toFloat-impl", "(I)F", "toInt", "toInt-impl", "toLong", BuildConfig.FLAVOR, "toLong-impl", "(I)J", "toShort", BuildConfig.FLAVOR, "toShort-impl", "(I)S", "toString", BuildConfig.FLAVOR, "toString-impl", "(I)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-WZ4Q5Ns", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
/* loaded from: classes.dex */
public final class UInt implements Comparable<UInt> {
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UInt m126boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private int m129compareToWZ4Q5Ns(int i) {
        return m130compareToWZ4Q5Ns(this.data, i);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m138equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).getData();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m139equalsimpl0(int i, int i2) {
        return i == i2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m144hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m138equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m144hashCodeimpl(this.data);
    }

    public String toString() {
        return m177toStringimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getData() {
        return this.data;
    }

    private /* synthetic */ UInt(int data) {
        this.data = data;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m132constructorimpl(int data) {
        return data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return m129compareToWZ4Q5Ns(uInt.getData());
    }

    /* renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m127compareTo7apg3OU(int $this, byte other) {
        return UnsignedKt.uintCompare($this, m132constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static final int m131compareToxj2QHRw(int $this, short other) {
        return UnsignedKt.uintCompare($this, m132constructorimpl(65535 & other));
    }

    /* renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static int m130compareToWZ4Q5Ns(int $this, int other) {
        return UnsignedKt.uintCompare($this, other);
    }

    /* renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static final int m128compareToVKZWuLQ(int $this, long other) {
        return UnsignedKt.ulongCompare(ULong.m210constructorimpl($this & 4294967295L), other);
    }

    /* renamed from: plus-7apg3OU, reason: not valid java name */
    private static final int m156plus7apg3OU(int $this, byte other) {
        return m132constructorimpl(m132constructorimpl(other & UByte.MAX_VALUE) + $this);
    }

    /* renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final int m159plusxj2QHRw(int $this, short other) {
        return m132constructorimpl(m132constructorimpl(65535 & other) + $this);
    }

    /* renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final int m158plusWZ4Q5Ns(int $this, int other) {
        return m132constructorimpl($this + other);
    }

    /* renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m157plusVKZWuLQ(int $this, long other) {
        return ULong.m210constructorimpl(ULong.m210constructorimpl($this & 4294967295L) + other);
    }

    /* renamed from: minus-7apg3OU, reason: not valid java name */
    private static final int m147minus7apg3OU(int $this, byte other) {
        return m132constructorimpl($this - m132constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final int m150minusxj2QHRw(int $this, short other) {
        return m132constructorimpl($this - m132constructorimpl(65535 & other));
    }

    /* renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final int m149minusWZ4Q5Ns(int $this, int other) {
        return m132constructorimpl($this - other);
    }

    /* renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m148minusVKZWuLQ(int $this, long other) {
        return ULong.m210constructorimpl(ULong.m210constructorimpl($this & 4294967295L) - other);
    }

    /* renamed from: times-7apg3OU, reason: not valid java name */
    private static final int m167times7apg3OU(int $this, byte other) {
        return m132constructorimpl(m132constructorimpl(other & UByte.MAX_VALUE) * $this);
    }

    /* renamed from: times-xj2QHRw, reason: not valid java name */
    private static final int m170timesxj2QHRw(int $this, short other) {
        return m132constructorimpl(m132constructorimpl(65535 & other) * $this);
    }

    /* renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final int m169timesWZ4Q5Ns(int $this, int other) {
        return m132constructorimpl($this * other);
    }

    /* renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m168timesVKZWuLQ(int $this, long other) {
        return ULong.m210constructorimpl(ULong.m210constructorimpl($this & 4294967295L) * other);
    }

    /* renamed from: div-7apg3OU, reason: not valid java name */
    private static final int m134div7apg3OU(int $this, byte other) {
        return UnsignedKt.m385uintDivideJ1ME1BU($this, m132constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: div-xj2QHRw, reason: not valid java name */
    private static final int m137divxj2QHRw(int $this, short other) {
        return UnsignedKt.m385uintDivideJ1ME1BU($this, m132constructorimpl(65535 & other));
    }

    /* renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final int m136divWZ4Q5Ns(int $this, int other) {
        return UnsignedKt.m385uintDivideJ1ME1BU($this, other);
    }

    /* renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m135divVKZWuLQ(int $this, long other) {
        return UnsignedKt.m387ulongDivideeb3DHEI(ULong.m210constructorimpl($this & 4294967295L), other);
    }

    /* renamed from: rem-7apg3OU, reason: not valid java name */
    private static final int m161rem7apg3OU(int $this, byte other) {
        return UnsignedKt.m386uintRemainderJ1ME1BU($this, m132constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final int m164remxj2QHRw(int $this, short other) {
        return UnsignedKt.m386uintRemainderJ1ME1BU($this, m132constructorimpl(65535 & other));
    }

    /* renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final int m163remWZ4Q5Ns(int $this, int other) {
        return UnsignedKt.m386uintRemainderJ1ME1BU($this, other);
    }

    /* renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m162remVKZWuLQ(int $this, long other) {
        return UnsignedKt.m388ulongRemaindereb3DHEI(ULong.m210constructorimpl($this & 4294967295L), other);
    }

    /* renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final int m140floorDiv7apg3OU(int $this, byte other) {
        return UnsignedKt.m385uintDivideJ1ME1BU($this, m132constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final int m143floorDivxj2QHRw(int $this, short other) {
        return UnsignedKt.m385uintDivideJ1ME1BU($this, m132constructorimpl(65535 & other));
    }

    /* renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final int m142floorDivWZ4Q5Ns(int $this, int other) {
        return UnsignedKt.m385uintDivideJ1ME1BU($this, other);
    }

    /* renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m141floorDivVKZWuLQ(int $this, long other) {
        return UnsignedKt.m387ulongDivideeb3DHEI(ULong.m210constructorimpl($this & 4294967295L), other);
    }

    /* renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m151mod7apg3OU(int $this, byte other) {
        return UByte.m56constructorimpl((byte) UnsignedKt.m386uintRemainderJ1ME1BU($this, m132constructorimpl(other & UByte.MAX_VALUE)));
    }

    /* renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m154modxj2QHRw(int $this, short other) {
        return UShort.m316constructorimpl((short) UnsignedKt.m386uintRemainderJ1ME1BU($this, m132constructorimpl(65535 & other)));
    }

    /* renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m153modWZ4Q5Ns(int $this, int other) {
        return UnsignedKt.m386uintRemainderJ1ME1BU($this, other);
    }

    /* renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m152modVKZWuLQ(int $this, long other) {
        return UnsignedKt.m388ulongRemaindereb3DHEI(ULong.m210constructorimpl($this & 4294967295L), other);
    }

    /* renamed from: inc-pVg5ArA, reason: not valid java name */
    private static final int m145incpVg5ArA(int $this) {
        return m132constructorimpl($this + 1);
    }

    /* renamed from: dec-pVg5ArA, reason: not valid java name */
    private static final int m133decpVg5ArA(int $this) {
        return m132constructorimpl($this - 1);
    }

    /* renamed from: rangeTo-WZ4Q5Ns, reason: not valid java name */
    private static final UIntRange m160rangeToWZ4Q5Ns(int $this, int other) {
        return new UIntRange($this, other, null);
    }

    /* renamed from: shl-pVg5ArA, reason: not valid java name */
    private static final int m165shlpVg5ArA(int $this, int bitCount) {
        return m132constructorimpl($this << bitCount);
    }

    /* renamed from: shr-pVg5ArA, reason: not valid java name */
    private static final int m166shrpVg5ArA(int $this, int bitCount) {
        return m132constructorimpl($this >>> bitCount);
    }

    /* renamed from: and-WZ4Q5Ns, reason: not valid java name */
    private static final int m125andWZ4Q5Ns(int $this, int other) {
        return m132constructorimpl($this & other);
    }

    /* renamed from: or-WZ4Q5Ns, reason: not valid java name */
    private static final int m155orWZ4Q5Ns(int $this, int other) {
        return m132constructorimpl($this | other);
    }

    /* renamed from: xor-WZ4Q5Ns, reason: not valid java name */
    private static final int m182xorWZ4Q5Ns(int $this, int other) {
        return m132constructorimpl($this ^ other);
    }

    /* renamed from: inv-pVg5ArA, reason: not valid java name */
    private static final int m146invpVg5ArA(int $this) {
        return m132constructorimpl(~$this);
    }

    /* renamed from: toByte-impl, reason: not valid java name */
    private static final byte m171toByteimpl(int $this) {
        return (byte) $this;
    }

    /* renamed from: toShort-impl, reason: not valid java name */
    private static final short m176toShortimpl(int $this) {
        return (short) $this;
    }

    /* renamed from: toInt-impl, reason: not valid java name */
    private static final int m174toIntimpl(int $this) {
        return $this;
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    private static final long m175toLongimpl(int $this) {
        return $this & 4294967295L;
    }

    /* renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m178toUBytew2LRezQ(int $this) {
        return UByte.m56constructorimpl((byte) $this);
    }

    /* renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m181toUShortMh2AYeg(int $this) {
        return UShort.m316constructorimpl((short) $this);
    }

    /* renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m179toUIntpVg5ArA(int $this) {
        return $this;
    }

    /* renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m180toULongsVKNKU(int $this) {
        return ULong.m210constructorimpl($this & 4294967295L);
    }

    /* renamed from: toFloat-impl, reason: not valid java name */
    private static final float m173toFloatimpl(int $this) {
        return (float) UnsignedKt.uintToDouble($this);
    }

    /* renamed from: toDouble-impl, reason: not valid java name */
    private static final double m172toDoubleimpl(int $this) {
        return UnsignedKt.uintToDouble($this);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m177toStringimpl(int $this) {
        return String.valueOf($this & 4294967295L);
    }
}
