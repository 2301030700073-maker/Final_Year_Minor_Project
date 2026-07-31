package org.schabi.newpipe.util;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.ui.node.Owner;
import org.schabi.newpipe.error.ErrorInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SavedState implements Parcelable {
    public static final Parcelable.Creator<SavedState> CREATOR = new ErrorInfo.Creator(6);
    public final String pathFileSaved;
    public final String prefixFileSaved;

    public SavedState(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.prefixFileSaved = str;
        this.pathFileSaved = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return Owner.CC.m(this.prefixFileSaved, " > ", this.pathFileSaved);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.prefixFileSaved);
        parcel.writeString(this.pathFileSaved);
    }
}
