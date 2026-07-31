package okhttp3.internal.http1;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Offset;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HeadersReader {
    public final /* synthetic */ int $r8$classId;
    public long headerLimit;
    public Object source;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HeadersReader(Orientation orientation, int i) {
        this(0L, (i & 1) != 0 ? null : orientation);
        this.$r8$classId = 1;
    }

    public void clear(int i) {
        if (i < 64) {
            this.headerLimit &= ~(1 << i);
            return;
        }
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader != null) {
            headersReader.clear(i - 64);
        }
    }

    public int countOnesBefore(int i) {
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader == null) {
            long j = this.headerLimit;
            return i >= 64 ? Long.bitCount(j) : Long.bitCount(((1 << i) - 1) & j);
        }
        if (i < 64) {
            return Long.bitCount(((1 << i) - 1) & this.headerLimit);
        }
        return Long.bitCount(this.headerLimit) + headersReader.countOnesBefore(i - 64);
    }

    public void ensureNext() {
        if (((HeadersReader) this.source) == null) {
            this.source = new HeadersReader();
        }
    }

    public boolean get(int i) {
        if (i < 64) {
            return ((1 << i) & this.headerLimit) != 0;
        }
        ensureNext();
        return ((HeadersReader) this.source).get(i - 64);
    }

    /* renamed from: getPostSlopOffset-qto3Fdw, reason: not valid java name */
    public long m873getPostSlopOffsetqto3Fdw(float f, long j, boolean z) {
        long m386plusMKHz9U;
        long j2 = this.headerLimit;
        if (z) {
            m386plusMKHz9U = Offset.m386plusMKHz9U(j2, j);
            this.headerLimit = m386plusMKHz9U;
        } else {
            m386plusMKHz9U = Offset.m386plusMKHz9U(j2, j);
        }
        if ((((Orientation) this.source) == null ? Offset.m384getDistanceimpl(m386plusMKHz9U) : Math.abs(m874mainAxisk4lQ0M(m386plusMKHz9U))) < f) {
            return 9205357640488583168L;
        }
        Orientation orientation = (Orientation) this.source;
        long j3 = this.headerLimit;
        if (orientation == null) {
            float intBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32)) / Offset.m384getDistanceimpl(j3);
            return Offset.m385minusMKHz9U(this.headerLimit, Offset.m387timestuRUvjQ(f, (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 & 4294967295L)) / r7) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32)));
        }
        float m874mainAxisk4lQ0M = m874mainAxisk4lQ0M(j3) - (Math.signum(m874mainAxisk4lQ0M(this.headerLimit)) * f);
        long j4 = this.headerLimit;
        Orientation orientation2 = (Orientation) this.source;
        Orientation orientation3 = Orientation.Horizontal;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (orientation2 == orientation3 ? j4 & 4294967295L : j4 >> 32));
        if (((Orientation) this.source) != orientation3) {
            return (Float.floatToRawIntBits(intBitsToFloat2) << 32) | (Float.floatToRawIntBits(m874mainAxisk4lQ0M) & 4294967295L);
        }
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(m874mainAxisk4lQ0M) << 32);
    }

    public void insert(int i, boolean z) {
        if (i >= 64) {
            ensureNext();
            ((HeadersReader) this.source).insert(i - 64, z);
            return;
        }
        long j = this.headerLimit;
        boolean z2 = (Long.MIN_VALUE & j) != 0;
        long j2 = (1 << i) - 1;
        this.headerLimit = ((j & (~j2)) << 1) | (j & j2);
        if (z) {
            set(i);
        } else {
            clear(i);
        }
        if (z2 || ((HeadersReader) this.source) != null) {
            ensureNext();
            ((HeadersReader) this.source).insert(0, z2);
        }
    }

    /* renamed from: mainAxis-k-4lQ0M, reason: not valid java name */
    public float m874mainAxisk4lQ0M(long j) {
        return Float.intBitsToFloat(((Orientation) this.source) == Orientation.Horizontal ? (int) (j >> 32) : (int) (j & 4294967295L));
    }

    public boolean remove(int i) {
        if (i >= 64) {
            ensureNext();
            return ((HeadersReader) this.source).remove(i - 64);
        }
        long j = 1 << i;
        long j2 = this.headerLimit;
        boolean z = (j2 & j) != 0;
        long j3 = j2 & (~j);
        this.headerLimit = j3;
        long j4 = j - 1;
        this.headerLimit = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader != null) {
            if (headersReader.get(0)) {
                set(63);
            }
            ((HeadersReader) this.source).remove(0);
        }
        return z;
    }

    public void reset() {
        this.headerLimit = 0L;
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader != null) {
            headersReader.reset();
        }
    }

    public void set(int i) {
        if (i < 64) {
            this.headerLimit |= 1 << i;
        } else {
            ensureNext();
            ((HeadersReader) this.source).set(i - 64);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                if (((HeadersReader) this.source) == null) {
                    return Long.toBinaryString(this.headerLimit);
                }
                return ((HeadersReader) this.source).toString() + "xx" + Long.toBinaryString(this.headerLimit);
            default:
                return super.toString();
        }
    }

    public HeadersReader(RealBufferedSource realBufferedSource) {
        this.$r8$classId = 0;
        this.source = realBufferedSource;
        this.headerLimit = 262144L;
    }

    public HeadersReader() {
        this.$r8$classId = 2;
        this.headerLimit = 0L;
    }

    public HeadersReader(long j, Orientation orientation) {
        this.$r8$classId = 1;
        this.source = orientation;
        this.headerLimit = j;
    }
}
