package com.android.contacts.compat;

import android.os.Bundle;
import android.telecom.PhoneAccount;

/* loaded from: classes.dex */
public class PhoneAccountSdkCompat {
    public static Bundle getExtras(PhoneAccount phoneAccount) {
        if (CompatUtils.isNCompatible()) {
            return phoneAccount.getExtras();
        }
        return null;
    }
}
