package org.openintents.openpgp;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;
import org.openintents.openpgp.OpenPgpError;
import org.openintents.openpgp.util.OpenPgpUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpSignatureResult implements Parcelable {
    public static final Parcelable.Creator<OpenPgpSignatureResult> CREATOR = new OpenPgpError.AnonymousClass1(13);
    public final ArrayList confirmedUserIds;
    public final long keyId;
    public final String primaryUserId;
    public final int result;
    public final SenderStatusResult senderStatusResult;
    public final ArrayList userIds;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class SenderStatusResult {
        public static final /* synthetic */ SenderStatusResult[] $VALUES;
        public static final SenderStatusResult UNKNOWN;
        public static final SenderStatusResult[] VALUES;

        static {
            SenderStatusResult senderStatusResult = new SenderStatusResult("UNKNOWN", 0);
            UNKNOWN = senderStatusResult;
            $VALUES = new SenderStatusResult[]{senderStatusResult, new SenderStatusResult("USER_ID_CONFIRMED", 1), new SenderStatusResult("USER_ID_UNCONFIRMED", 2), new SenderStatusResult("USER_ID_MISSING", 3)};
            VALUES = values();
        }

        public static SenderStatusResult valueOf(String str) {
            return (SenderStatusResult) Enum.valueOf(SenderStatusResult.class, str);
        }

        public static SenderStatusResult[] values() {
            return (SenderStatusResult[]) $VALUES.clone();
        }
    }

    public OpenPgpSignatureResult(Parcel parcel, int i) {
        this.result = parcel.readInt();
        parcel.readByte();
        this.primaryUserId = parcel.readString();
        this.keyId = parcel.readLong();
        if (i > 1) {
            this.userIds = parcel.createStringArrayList();
        } else {
            this.userIds = null;
        }
        if (i <= 2) {
            this.senderStatusResult = SenderStatusResult.UNKNOWN;
            this.confirmedUserIds = null;
            return;
        }
        SenderStatusResult[] senderStatusResultArr = SenderStatusResult.VALUES;
        SenderStatusResult senderStatusResult = SenderStatusResult.UNKNOWN;
        int readInt = parcel.readInt();
        this.senderStatusResult = readInt != -1 ? readInt >= senderStatusResultArr.length ? senderStatusResult : senderStatusResultArr[readInt] : null;
        this.confirmedUserIds = parcel.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("\nresult: " + this.result, "\nprimaryUserId: ");
        m.append(this.primaryUserId);
        StringBuilder m2 = Config.CC.m(m.toString(), "\nuserIds: ");
        m2.append(this.userIds);
        StringBuilder m3 = Config.CC.m(m2.toString(), "\nkeyId: ");
        Pattern pattern = OpenPgpUtils.USER_ID_PATTERN;
        StringBuilder sb = new StringBuilder("0x");
        long j = this.keyId;
        String lowerCase = Long.toHexString((j >> 32) & 4294967295L).toLowerCase(Locale.ENGLISH);
        while (lowerCase.length() < 8) {
            lowerCase = "0".concat(lowerCase);
        }
        sb.append(lowerCase);
        String lowerCase2 = Long.toHexString(j & 4294967295L).toLowerCase(Locale.ENGLISH);
        while (lowerCase2.length() < 8) {
            lowerCase2 = "0".concat(lowerCase2);
        }
        sb.append(lowerCase2);
        m3.append(sb.toString());
        return m3.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(3);
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        int dataPosition2 = parcel.dataPosition();
        parcel.writeInt(this.result);
        parcel.writeByte((byte) 0);
        parcel.writeString(this.primaryUserId);
        parcel.writeLong(this.keyId);
        parcel.writeStringList(this.userIds);
        SenderStatusResult senderStatusResult = this.senderStatusResult;
        if (senderStatusResult == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(senderStatusResult.ordinal());
        }
        parcel.writeStringList(this.confirmedUserIds);
        int dataPosition3 = parcel.dataPosition() - dataPosition2;
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3);
        parcel.setDataPosition(dataPosition3 + dataPosition2);
    }
}
