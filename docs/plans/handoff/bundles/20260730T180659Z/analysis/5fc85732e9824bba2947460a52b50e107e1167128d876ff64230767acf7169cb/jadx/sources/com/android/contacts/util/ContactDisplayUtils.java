package com.android.contacts.util;

import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Patterns;
import com.android.contacts.R;
import com.android.contacts.compat.PhoneNumberUtilsCompat;
import com.android.contacts.preference.ContactsPreferences;

/* loaded from: classes.dex */
public class ContactDisplayUtils {
    private static final String TAG = "ContactDisplayUtils";

    public static boolean isCustomPhoneType(Integer num) {
        return num.intValue() == 0 || num.intValue() == 19;
    }

    public static int getPhoneLabelResourceId(Integer num) {
        if (num == null) {
            return R.string.call_other;
        }
        switch (num.intValue()) {
        }
        return R.string.call_other;
    }

    public static int getSmsLabelResourceId(Integer num) {
        if (num == null) {
            return R.string.sms_other;
        }
        switch (num.intValue()) {
        }
        return R.string.sms_other;
    }

    public static boolean isPossiblePhoneNumber(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        return Patterns.PHONE.matcher(charSequence.toString()).matches();
    }

    public static Spannable getTelephoneTtsSpannable(String str, String str2) {
        if (str == null) {
            return null;
        }
        SpannableString spannableString = new SpannableString(str);
        int indexOf = str2 == null ? -1 : str.indexOf(str2);
        while (indexOf >= 0) {
            int length = str2.length() + indexOf;
            spannableString.setSpan(PhoneNumberUtilsCompat.createTtsSpan(str2), indexOf, length, 33);
            indexOf = str.indexOf(str2, length);
        }
        return spannableString;
    }

    public static CharSequence getTtsSpannedPhoneNumber(Resources resources, int i, String str) {
        return getTelephoneTtsSpannable(resources.getString(i, str), str);
    }

    public static String getPreferredDisplayName(String str, String str2, ContactsPreferences contactsPreferences) {
        return contactsPreferences == null ? str != null ? str : str2 : (contactsPreferences.getDisplayOrder() == 1 || contactsPreferences.getDisplayOrder() != 2 || TextUtils.isEmpty(str2)) ? str : str2;
    }

    public static String getPreferredSortName(String str, String str2, ContactsPreferences contactsPreferences) {
        return contactsPreferences == null ? str != null ? str : str2 : (contactsPreferences.getSortOrder() == 1 || contactsPreferences.getSortOrder() != 2 || TextUtils.isEmpty(str2)) ? str : str2;
    }
}
