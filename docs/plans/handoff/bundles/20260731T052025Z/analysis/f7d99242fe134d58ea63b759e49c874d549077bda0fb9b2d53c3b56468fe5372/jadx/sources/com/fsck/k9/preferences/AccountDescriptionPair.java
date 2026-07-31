package com.fsck.k9.preferences;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountDescriptionPair {
    public final boolean authorizationNeeded;
    public final AccountDescription imported;
    public final boolean incomingPasswordNeeded;
    public final String incomingServerName;
    public final AccountDescription original;
    public final boolean outgoingPasswordNeeded;
    public final String outgoingServerName;

    public AccountDescriptionPair(AccountDescription accountDescription, AccountDescription accountDescription2, boolean z, boolean z2, boolean z3, String str, String str2) {
        accountDescription.getClass();
        accountDescription2.getClass();
        this.original = accountDescription;
        this.imported = accountDescription2;
        this.authorizationNeeded = z;
        this.incomingPasswordNeeded = z2;
        this.outgoingPasswordNeeded = z3;
        this.incomingServerName = str;
        this.outgoingServerName = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountDescriptionPair)) {
            return false;
        }
        AccountDescriptionPair accountDescriptionPair = (AccountDescriptionPair) obj;
        return Intrinsics.areEqual(this.original, accountDescriptionPair.original) && Intrinsics.areEqual(this.imported, accountDescriptionPair.imported) && this.authorizationNeeded == accountDescriptionPair.authorizationNeeded && this.incomingPasswordNeeded == accountDescriptionPair.incomingPasswordNeeded && this.outgoingPasswordNeeded == accountDescriptionPair.outgoingPasswordNeeded && this.incomingServerName.equals(accountDescriptionPair.incomingServerName) && this.outgoingServerName.equals(accountDescriptionPair.outgoingServerName);
    }

    public final int hashCode() {
        return this.outgoingServerName.hashCode() + Modifier.CC.m((((((((this.imported.hashCode() + (this.original.hashCode() * 31)) * 31) + (this.authorizationNeeded ? 1231 : 1237)) * 31) + (this.incomingPasswordNeeded ? 1231 : 1237)) * 31) + (this.outgoingPasswordNeeded ? 1231 : 1237)) * 31, this.incomingServerName, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccountDescriptionPair(original=");
        sb.append(this.original);
        sb.append(", imported=");
        sb.append(this.imported);
        sb.append(", authorizationNeeded=");
        ViewSizeResolver.CC.m(sb, this.authorizationNeeded, ", incomingPasswordNeeded=", this.incomingPasswordNeeded, ", outgoingPasswordNeeded=");
        sb.append(this.outgoingPasswordNeeded);
        sb.append(", incomingServerName=");
        sb.append(this.incomingServerName);
        sb.append(", outgoingServerName=");
        return CameraDevices$CC.m(sb, this.outgoingServerName, ")");
    }
}
