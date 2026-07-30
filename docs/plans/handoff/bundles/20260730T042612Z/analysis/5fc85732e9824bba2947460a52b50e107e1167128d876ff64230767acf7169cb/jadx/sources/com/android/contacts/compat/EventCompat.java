package com.android.contacts.compat;

import android.content.res.Resources;
import android.provider.ContactsContract;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class EventCompat {
    public static CharSequence getTypeLabel(Resources resources, int i, CharSequence charSequence) {
        if (CompatUtils.isLollipopCompatible()) {
            return ContactsContract.CommonDataKinds.Event.getTypeLabel(resources, i, charSequence);
        }
        return getTypeLabelInternal(resources, i, charSequence);
    }

    private static CharSequence getTypeLabelInternal(Resources resources, int i, CharSequence charSequence) {
        return (i != 0 || TextUtils.isEmpty(charSequence)) ? resources.getText(ContactsContract.CommonDataKinds.Event.getTypeResource(Integer.valueOf(i))) : charSequence;
    }
}
