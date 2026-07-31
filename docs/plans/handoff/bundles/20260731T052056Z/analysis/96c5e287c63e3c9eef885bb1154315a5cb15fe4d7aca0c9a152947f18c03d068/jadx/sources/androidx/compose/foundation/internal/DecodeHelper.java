package androidx.compose.foundation.internal;

import android.os.Parcel;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DecodeHelper {
    public Parcel parcel;

    /* renamed from: decodeColor-0d7_KjU, reason: not valid java name */
    public long m107decodeColor0d7_KjU() {
        int i = Color.$r8$clinit;
        long readLong = this.parcel.readLong();
        long j = 63 & readLong;
        return j < 16 ? readLong : (readLong & (-64)) | (j + 1);
    }

    /* renamed from: decodeTextUnit-XSAIIZE, reason: not valid java name */
    public long m108decodeTextUnitXSAIIZE() {
        Parcel parcel = this.parcel;
        byte readByte = parcel.readByte();
        long j = readByte == 1 ? 4294967296L : readByte == 2 ? 8589934592L : 0L;
        return TextUnitType.m728equalsimpl0(j, 0L) ? TextUnit.Unspecified : ContextsKt.pack(parcel.readFloat(), j);
    }

    public void encode(byte b) {
        this.parcel.writeByte(b);
    }

    /* renamed from: encode--R2X_6o, reason: not valid java name */
    public void m109encodeR2X_6o(long j) {
        long m724getTypeUIouoOA = TextUnit.m724getTypeUIouoOA(j);
        byte b = 0;
        if (!TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 0L)) {
            if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 4294967296L)) {
                b = 1;
            } else if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 8589934592L)) {
                b = 2;
            }
        }
        encode(b);
        if (TextUnitType.m728equalsimpl0(TextUnit.m724getTypeUIouoOA(j), 0L)) {
            return;
        }
        encode(TextUnit.m725getValueimpl(j));
    }

    public void encode(float f) {
        this.parcel.writeFloat(f);
    }
}
