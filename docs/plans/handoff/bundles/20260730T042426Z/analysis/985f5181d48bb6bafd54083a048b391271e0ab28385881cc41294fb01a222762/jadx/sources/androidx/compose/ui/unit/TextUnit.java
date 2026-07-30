package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: TextUnit.kt */
/* loaded from: classes.dex */
public final class TextUnit {
    public static final Companion Companion = new Companion(null);
    private static final TextUnitType[] TextUnitTypes;
    private static final long Unspecified;
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextUnit m2492boximpl(long j) {
        return new TextUnit(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2493constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2494equalsimpl(long j, Object obj) {
        return (obj instanceof TextUnit) && j == ((TextUnit) obj).m2501unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2495equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getRawType-impl, reason: not valid java name */
    public static final long m2496getRawTypeimpl(long j) {
        return j & 1095216660480L;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2499hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2494equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2499hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2501unboximpl() {
        return this.packedValue;
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    public static final float m2498getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    private /* synthetic */ TextUnit(long j) {
        this.packedValue = j;
    }

    public String toString() {
        return m2500toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2500toStringimpl(long j) {
        long m2497getTypeUIouoOA = m2497getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2517getUnspecifiedUIouoOA())) {
            return "Unspecified";
        }
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
            return m2498getValueimpl(j) + ".sp";
        }
        if (!TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA())) {
            return "Invalid";
        }
        return m2498getValueimpl(j) + ".em";
    }

    /* compiled from: TextUnit.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-XSAIIZE, reason: not valid java name */
        public final long m2502getUnspecifiedXSAIIZE() {
            return TextUnit.Unspecified;
        }
    }

    static {
        TextUnitType.Companion companion = TextUnitType.Companion;
        TextUnitTypes = new TextUnitType[]{TextUnitType.m2508boximpl(companion.m2517getUnspecifiedUIouoOA()), TextUnitType.m2508boximpl(companion.m2516getSpUIouoOA()), TextUnitType.m2508boximpl(companion.m2515getEmUIouoOA())};
        Unspecified = TextUnitKt.pack(0L, Float.NaN);
    }

    /* renamed from: getType-UIouoOA, reason: not valid java name */
    public static final long m2497getTypeUIouoOA(long j) {
        return TextUnitTypes[(int) (m2496getRawTypeimpl(j) >>> 32)].m2514unboximpl();
    }
}
