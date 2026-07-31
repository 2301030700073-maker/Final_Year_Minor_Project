package net.thunderbird.core.android.account;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Identity implements Parcelable {
    public static final Parcelable.Creator<Identity> CREATOR = new OpenPgpError.AnonymousClass1(9);
    public final String description;
    public final String email;
    public final String name;
    public final String replyTo;
    public final String signature;
    public final boolean signatureUse;

    public /* synthetic */ Identity(String str, String str2, String str3, String str4, boolean z, int i) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? false : z, (String) null);
    }

    public static Identity copy$default(Identity identity, String str, String str2, String str3, boolean z, int i) {
        String str4 = identity.description;
        if ((i & 2) != 0) {
            str = identity.name;
        }
        String str5 = str;
        if ((i & 4) != 0) {
            str2 = identity.email;
        }
        String str6 = str2;
        if ((i & 8) != 0) {
            str3 = identity.signature;
        }
        String str7 = str3;
        if ((i & 16) != 0) {
            z = identity.signatureUse;
        }
        String str8 = identity.replyTo;
        identity.getClass();
        return new Identity(str4, str5, str6, str7, z, str8);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Identity)) {
            return false;
        }
        Identity identity = (Identity) obj;
        return Intrinsics.areEqual(this.description, identity.description) && Intrinsics.areEqual(this.name, identity.name) && Intrinsics.areEqual(this.email, identity.email) && Intrinsics.areEqual(this.signature, identity.signature) && this.signatureUse == identity.signatureUse && Intrinsics.areEqual(this.replyTo, identity.replyTo);
    }

    public final int hashCode() {
        String str = this.description;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.email;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.signature;
        int hashCode4 = (((hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + (this.signatureUse ? 1231 : 1237)) * 31;
        String str5 = this.replyTo;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("Identity(description=", this.description, ", name=", this.name, ", email=");
        Modifier.CC.m(m, this.email, ", signature=", this.signature, ", signatureUse=");
        m.append(this.signatureUse);
        m.append(", replyTo=");
        m.append(this.replyTo);
        m.append(")");
        return m.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.description);
        parcel.writeString(this.name);
        parcel.writeString(this.email);
        parcel.writeString(this.signature);
        parcel.writeInt(this.signatureUse ? 1 : 0);
        parcel.writeString(this.replyTo);
    }

    public Identity(String str, String str2, String str3, String str4, boolean z, String str5) {
        this.description = str;
        this.name = str2;
        this.email = str3;
        this.signature = str4;
        this.signatureUse = z;
        this.replyTo = str5;
    }
}
