package org.openintents.openpgp;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AutocryptPeerUpdate implements Parcelable {
    public static final Parcelable.Creator<AutocryptPeerUpdate> CREATOR = new OpenPgpError.AnonymousClass1(10);
    public final Date effectiveDate;
    public final byte[] keyData;
    public final PreferEncrypt preferEncrypt;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class PreferEncrypt {
        public static final /* synthetic */ PreferEncrypt[] $VALUES;
        public static final PreferEncrypt MUTUAL;
        public static final PreferEncrypt NOPREFERENCE;

        static {
            PreferEncrypt preferEncrypt = new PreferEncrypt("NOPREFERENCE", 0);
            NOPREFERENCE = preferEncrypt;
            PreferEncrypt preferEncrypt2 = new PreferEncrypt("MUTUAL", 1);
            MUTUAL = preferEncrypt2;
            $VALUES = new PreferEncrypt[]{preferEncrypt, preferEncrypt2};
        }

        public static PreferEncrypt valueOf(String str) {
            return (PreferEncrypt) Enum.valueOf(PreferEncrypt.class, str);
        }

        public static PreferEncrypt[] values() {
            return (PreferEncrypt[]) $VALUES.clone();
        }
    }

    public AutocryptPeerUpdate(Parcel parcel) {
        this.keyData = parcel.createByteArray();
        this.effectiveDate = parcel.readInt() != 0 ? new Date(parcel.readLong()) : null;
        this.preferEncrypt = PreferEncrypt.values()[parcel.readInt()];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(1);
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        int dataPosition2 = parcel.dataPosition();
        parcel.writeByteArray(this.keyData);
        Date date = this.effectiveDate;
        if (date != null) {
            parcel.writeInt(1);
            parcel.writeLong(date.getTime());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.preferEncrypt.ordinal());
        int dataPosition3 = parcel.dataPosition() - dataPosition2;
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3);
        parcel.setDataPosition(dataPosition3 + dataPosition2);
    }

    public AutocryptPeerUpdate(byte[] bArr, Date date, PreferEncrypt preferEncrypt) {
        this.keyData = bArr;
        this.effectiveDate = date;
        this.preferEncrypt = preferEncrypt;
    }
}
