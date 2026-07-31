package com.fsck.k9.storage.migrations;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AddressSet {
    public final String bccList;
    public final String ccList;
    public final String replyToList;
    public final String senderList;
    public final String toList;

    public AddressSet(String str, String str2, String str3, String str4, String str5) {
        this.toList = str;
        this.ccList = str2;
        this.bccList = str3;
        this.replyToList = str4;
        this.senderList = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressSet)) {
            return false;
        }
        AddressSet addressSet = (AddressSet) obj;
        return Intrinsics.areEqual(this.toList, addressSet.toList) && Intrinsics.areEqual(this.ccList, addressSet.ccList) && Intrinsics.areEqual(this.bccList, addressSet.bccList) && Intrinsics.areEqual(this.replyToList, addressSet.replyToList) && Intrinsics.areEqual(this.senderList, addressSet.senderList);
    }

    public final int hashCode() {
        String str = this.toList;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.ccList;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.bccList;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.replyToList;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.senderList;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("AddressSet(toList=", this.toList, ", ccList=", this.ccList, ", bccList=");
        Modifier.CC.m(m, this.bccList, ", replyToList=", this.replyToList, ", senderList=");
        return CameraDevices$CC.m(m, this.senderList, ")");
    }
}
