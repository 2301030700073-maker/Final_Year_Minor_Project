package com.fsck.k9.activity.setup;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSetupCompositionContract$State {
    public final String bccEmail;
    public final Pair selectedSignatureLocations;
    public final String senderEmail;
    public final String senderName;
    public final String signature;
    public final AbstractPersistentList signatureLocations;
    public final boolean useSignature;

    public AccountSetupCompositionContract$State(String str, String str2, String str3, boolean z, String str4, AbstractPersistentList abstractPersistentList, Pair pair) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        abstractPersistentList.getClass();
        pair.getClass();
        this.senderName = str;
        this.senderEmail = str2;
        this.bccEmail = str3;
        this.useSignature = z;
        this.signature = str4;
        this.signatureLocations = abstractPersistentList;
        this.selectedSignatureLocations = pair;
    }

    public static AccountSetupCompositionContract$State copy$default(AccountSetupCompositionContract$State accountSetupCompositionContract$State, String str, String str2, String str3, boolean z, String str4, Pair pair, int i) {
        if ((i & 1) != 0) {
            str = accountSetupCompositionContract$State.senderName;
        }
        String str5 = str;
        if ((i & 2) != 0) {
            str2 = accountSetupCompositionContract$State.senderEmail;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = accountSetupCompositionContract$State.bccEmail;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            z = accountSetupCompositionContract$State.useSignature;
        }
        boolean z2 = z;
        if ((i & 16) != 0) {
            str4 = accountSetupCompositionContract$State.signature;
        }
        String str8 = str4;
        AbstractPersistentList abstractPersistentList = accountSetupCompositionContract$State.signatureLocations;
        if ((i & 64) != 0) {
            pair = accountSetupCompositionContract$State.selectedSignatureLocations;
        }
        Pair pair2 = pair;
        accountSetupCompositionContract$State.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        abstractPersistentList.getClass();
        pair2.getClass();
        return new AccountSetupCompositionContract$State(str5, str6, str7, z2, str8, abstractPersistentList, pair2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountSetupCompositionContract$State)) {
            return false;
        }
        AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj;
        return Intrinsics.areEqual(this.senderName, accountSetupCompositionContract$State.senderName) && Intrinsics.areEqual(this.senderEmail, accountSetupCompositionContract$State.senderEmail) && Intrinsics.areEqual(this.bccEmail, accountSetupCompositionContract$State.bccEmail) && this.useSignature == accountSetupCompositionContract$State.useSignature && Intrinsics.areEqual(this.signature, accountSetupCompositionContract$State.signature) && Intrinsics.areEqual(this.signatureLocations, accountSetupCompositionContract$State.signatureLocations) && Intrinsics.areEqual(this.selectedSignatureLocations, accountSetupCompositionContract$State.selectedSignatureLocations);
    }

    public final int hashCode() {
        return this.selectedSignatureLocations.hashCode() + ((this.signatureLocations.hashCode() + Modifier.CC.m((Modifier.CC.m(Modifier.CC.m(this.senderName.hashCode() * 31, this.senderEmail, 31), this.bccEmail, 31) + (this.useSignature ? 1231 : 1237)) * 31, this.signature, 31)) * 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("State(senderName=", this.senderName, ", senderEmail=", this.senderEmail, ", bccEmail=");
        m.append(this.bccEmail);
        m.append(", useSignature=");
        m.append(this.useSignature);
        m.append(", signature=");
        m.append(this.signature);
        m.append(", signatureLocations=");
        m.append(this.signatureLocations);
        m.append(", selectedSignatureLocations=");
        m.append(this.selectedSignatureLocations);
        m.append(")");
        return m.toString();
    }
}
