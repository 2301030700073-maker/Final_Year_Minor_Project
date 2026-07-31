package org.openintents.openpgp;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.camera.core.impl.Config;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpMetadata implements Parcelable {
    public static final Parcelable.Creator<OpenPgpMetadata> CREATOR = new OpenPgpError.AnonymousClass1(12);
    public String charset;
    public String filename;
    public String mimeType;
    public long modificationTime;
    public long originalSize;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("\nfilename: " + this.filename, "\nmimeType: ");
        m.append(this.mimeType);
        StringBuilder m2 = Config.CC.m(m.toString(), "\nmodificationTime: ");
        m2.append(this.modificationTime);
        StringBuilder m3 = Config.CC.m(m2.toString(), "\noriginalSize: ");
        m3.append(this.originalSize);
        StringBuilder m4 = Config.CC.m(m3.toString(), "\ncharset: ");
        m4.append(this.charset);
        return m4.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(2);
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        int dataPosition2 = parcel.dataPosition();
        parcel.writeString(this.filename);
        parcel.writeString(this.mimeType);
        parcel.writeLong(this.modificationTime);
        parcel.writeLong(this.originalSize);
        parcel.writeString(this.charset);
        int dataPosition3 = parcel.dataPosition() - dataPosition2;
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3);
        parcel.setDataPosition(dataPosition3 + dataPosition2);
    }
}
