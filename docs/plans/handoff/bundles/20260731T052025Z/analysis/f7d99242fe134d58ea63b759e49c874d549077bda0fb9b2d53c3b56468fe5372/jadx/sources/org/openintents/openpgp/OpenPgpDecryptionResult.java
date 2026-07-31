package org.openintents.openpgp;

import android.os.Parcel;
import android.os.Parcelable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpDecryptionResult implements Parcelable {
    public static final Parcelable.Creator<OpenPgpDecryptionResult> CREATOR = new OpenPgpError.AnonymousClass1(11);
    public final byte[] decryptedSessionKey;
    public final int result;
    public final byte[] sessionKey;

    public OpenPgpDecryptionResult(int i, byte[] bArr, byte[] bArr2) {
        this.result = i;
        if ((bArr == null) != (bArr2 == null)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "sessionkey must be null iff decryptedSessionKey is null");
            throw null;
        }
        this.sessionKey = bArr;
        this.decryptedSessionKey = bArr2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "\nresult: " + this.result;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(2);
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        int dataPosition2 = parcel.dataPosition();
        parcel.writeInt(this.result);
        parcel.writeByteArray(this.sessionKey);
        parcel.writeByteArray(this.decryptedSessionKey);
        int dataPosition3 = parcel.dataPosition() - dataPosition2;
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3);
        parcel.setDataPosition(dataPosition3 + dataPosition2);
    }
}
