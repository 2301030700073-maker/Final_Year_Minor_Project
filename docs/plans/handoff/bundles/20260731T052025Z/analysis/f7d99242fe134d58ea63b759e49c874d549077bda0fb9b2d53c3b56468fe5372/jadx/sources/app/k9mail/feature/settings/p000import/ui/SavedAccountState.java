package app.k9mail.feature.settings.p000import.ui;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedAccountState implements Parcelable {
    public static final Parcelable.Creator<SavedAccountState> CREATOR = new Creator();
    public final int accountIndex;
    public final String accountUuid;
    public final String displayName;
    public final ImportStatus importStatus;
    public final String incomingServerName;
    public final boolean incomingServerPasswordNeeded;
    public final String outgoingServerName;
    public final boolean outgoingServerPasswordNeeded;
    public final boolean selected;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            boolean z;
            boolean z2;
            parcel.getClass();
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            boolean z3 = false;
            if (parcel.readInt() != 0) {
                z = false;
                z3 = true;
            } else {
                z = false;
            }
            ImportStatus valueOf = ImportStatus.valueOf(parcel.readString());
            String readString3 = parcel.readString();
            boolean z4 = true;
            String readString4 = parcel.readString();
            if (parcel.readInt() != 0) {
                z2 = true;
            } else {
                z2 = true;
                z4 = z;
            }
            if (parcel.readInt() == 0) {
                z2 = z;
            }
            return new SavedAccountState(readInt, readString, readString2, z3, valueOf, readString3, readString4, z4, z2);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new SavedAccountState[i];
        }
    }

    public SavedAccountState(int i, String str, String str2, boolean z, ImportStatus importStatus, String str3, String str4, boolean z2, boolean z3) {
        str.getClass();
        str2.getClass();
        importStatus.getClass();
        this.accountIndex = i;
        this.displayName = str;
        this.accountUuid = str2;
        this.selected = z;
        this.importStatus = importStatus;
        this.incomingServerName = str3;
        this.outgoingServerName = str4;
        this.incomingServerPasswordNeeded = z2;
        this.outgoingServerPasswordNeeded = z3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.accountIndex);
        parcel.writeString(this.displayName);
        parcel.writeString(this.accountUuid);
        parcel.writeInt(this.selected ? 1 : 0);
        parcel.writeString(this.importStatus.name());
        parcel.writeString(this.incomingServerName);
        parcel.writeString(this.outgoingServerName);
        parcel.writeInt(this.incomingServerPasswordNeeded ? 1 : 0);
        parcel.writeInt(this.outgoingServerPasswordNeeded ? 1 : 0);
    }
}
