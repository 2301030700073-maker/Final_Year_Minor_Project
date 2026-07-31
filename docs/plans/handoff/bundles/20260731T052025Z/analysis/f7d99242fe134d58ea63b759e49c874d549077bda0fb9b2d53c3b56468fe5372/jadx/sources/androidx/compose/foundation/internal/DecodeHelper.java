package androidx.compose.foundation.internal;

import android.os.Parcel;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeHelper {
    public Parcel parcel;

    /* renamed from: decodeColor-0d7_KjU, reason: not valid java name */
    public long m197decodeColor0d7_KjU() {
        int i = Color.$r8$clinit;
        long readLong = this.parcel.readLong();
        long j = 63 & readLong;
        return j < 16 ? readLong : (readLong & (-64)) | (j + 1);
    }

    /* renamed from: decodeTextUnit-XSAIIZE, reason: not valid java name */
    public long m198decodeTextUnitXSAIIZE() {
        Parcel parcel = this.parcel;
        byte readByte = parcel.readByte();
        long j = readByte == 1 ? 4294967296L : readByte == 2 ? 8589934592L : 0L;
        return TextUnitType.m776equalsimpl0(j, 0L) ? TextUnit.Unspecified : SQLite.pack(parcel.readFloat(), j);
    }

    public void encode(byte b) {
        this.parcel.writeByte(b);
    }

    /* renamed from: encode--R2X_6o, reason: not valid java name */
    public void m199encodeR2X_6o(long j) {
        long m772getTypeUIouoOA = TextUnit.m772getTypeUIouoOA(j);
        byte b = 0;
        if (!TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 0L)) {
            if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 4294967296L)) {
                b = 1;
            } else if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 8589934592L)) {
                b = 2;
            }
        }
        encode(b);
        if (TextUnitType.m776equalsimpl0(TextUnit.m772getTypeUIouoOA(j), 0L)) {
            return;
        }
        encode(TextUnit.m773getValueimpl(j));
    }

    public void encode(float f) {
        this.parcel.writeFloat(f);
    }
}
