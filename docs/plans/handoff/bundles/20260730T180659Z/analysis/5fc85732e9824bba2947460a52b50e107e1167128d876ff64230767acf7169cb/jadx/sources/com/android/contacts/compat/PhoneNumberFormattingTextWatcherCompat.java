package com.android.contacts.compat;

import android.telephony.PhoneNumberFormattingTextWatcher;

/* loaded from: classes.dex */
public class PhoneNumberFormattingTextWatcherCompat {
    public static PhoneNumberFormattingTextWatcher newInstance(String str) {
        if (CompatUtils.isLollipopCompatible()) {
            return new PhoneNumberFormattingTextWatcher(str);
        }
        return new PhoneNumberFormattingTextWatcher();
    }
}
