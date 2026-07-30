package androidx.compose.ui.graphics.colorspace;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: ColorModel.kt */
/* loaded from: classes.dex */
public abstract class ColorModel {
    private static final long Cmyk;
    public static final Companion Companion = new Companion(null);
    private static final long Lab;
    private static final long Rgb;
    private static final long Xyz;

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1444constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1445equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getComponentCount-impl, reason: not valid java name */
    public static final int m1446getComponentCountimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1447hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* compiled from: ColorModel.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getRgb-xdoWZVw, reason: not valid java name */
        public final long m1450getRgbxdoWZVw() {
            return ColorModel.Rgb;
        }

        /* renamed from: getXyz-xdoWZVw, reason: not valid java name */
        public final long m1451getXyzxdoWZVw() {
            return ColorModel.Xyz;
        }

        /* renamed from: getLab-xdoWZVw, reason: not valid java name */
        public final long m1449getLabxdoWZVw() {
            return ColorModel.Lab;
        }
    }

    static {
        long j = 3;
        long j2 = j << 32;
        Rgb = m1444constructorimpl((0 & BodyPartID.bodyIdMax) | j2);
        Xyz = m1444constructorimpl((1 & BodyPartID.bodyIdMax) | j2);
        Lab = m1444constructorimpl(j2 | (2 & BodyPartID.bodyIdMax));
        Cmyk = m1444constructorimpl((j & BodyPartID.bodyIdMax) | (4 << 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1448toStringimpl(long j) {
        return m1445equalsimpl0(j, Rgb) ? "Rgb" : m1445equalsimpl0(j, Xyz) ? "Xyz" : m1445equalsimpl0(j, Lab) ? "Lab" : m1445equalsimpl0(j, Cmyk) ? "Cmyk" : "Unknown";
    }
}
