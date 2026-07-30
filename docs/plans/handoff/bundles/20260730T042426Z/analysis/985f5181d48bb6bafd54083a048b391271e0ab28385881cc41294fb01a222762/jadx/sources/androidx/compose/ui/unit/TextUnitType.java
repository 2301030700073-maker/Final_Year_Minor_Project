package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextUnit.kt */
/* loaded from: classes.dex */
public final class TextUnitType {
    private final long type;
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = m2509constructorimpl(0);
    private static final long Sp = m2509constructorimpl(4294967296L);
    private static final long Em = m2509constructorimpl(8589934592L);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextUnitType m2508boximpl(long j) {
        return new TextUnitType(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2509constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2510equalsimpl(long j, Object obj) {
        return (obj instanceof TextUnitType) && j == ((TextUnitType) obj).m2514unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2511equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2512hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2510equalsimpl(this.type, obj);
    }

    public int hashCode() {
        return m2512hashCodeimpl(this.type);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2514unboximpl() {
        return this.type;
    }

    private /* synthetic */ TextUnitType(long j) {
        this.type = j;
    }

    public String toString() {
        return m2513toStringimpl(this.type);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2513toStringimpl(long j) {
        return m2511equalsimpl0(j, Unspecified) ? "Unspecified" : m2511equalsimpl0(j, Sp) ? "Sp" : m2511equalsimpl0(j, Em) ? "Em" : "Invalid";
    }

    /* compiled from: TextUnit.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-UIouoOA, reason: not valid java name */
        public final long m2517getUnspecifiedUIouoOA() {
            return TextUnitType.Unspecified;
        }

        /* renamed from: getSp-UIouoOA, reason: not valid java name */
        public final long m2516getSpUIouoOA() {
            return TextUnitType.Sp;
        }

        /* renamed from: getEm-UIouoOA, reason: not valid java name */
        public final long m2515getEmUIouoOA() {
            return TextUnitType.Em;
        }
    }
}
