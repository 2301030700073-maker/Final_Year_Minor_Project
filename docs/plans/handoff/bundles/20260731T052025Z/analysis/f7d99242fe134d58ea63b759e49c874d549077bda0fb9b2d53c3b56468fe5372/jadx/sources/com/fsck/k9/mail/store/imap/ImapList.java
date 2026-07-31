package com.fsck.k9.mail.store.imap;

import androidx.compose.material.ripple.StateLayer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ImapList extends ArrayList {
    public static final SimpleDateFormat BAD_DATE_TIME_FORMAT;
    public static final SimpleDateFormat BAD_DATE_TIME_FORMAT_2;
    public static final SimpleDateFormat BAD_DATE_TIME_FORMAT_3;
    public static final SimpleDateFormat DATE_FORMAT;

    static {
        Locale locale = Locale.US;
        DATE_FORMAT = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss Z", locale);
        BAD_DATE_TIME_FORMAT = new SimpleDateFormat("dd MMM yyyy HH:mm:ss Z", locale);
        BAD_DATE_TIME_FORMAT_2 = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss Z", locale);
        BAD_DATE_TIME_FORMAT_3 = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss", locale);
    }

    public static Date parseDate(String str) {
        Date parse;
        try {
            try {
                SimpleDateFormat simpleDateFormat = DATE_FORMAT;
                synchronized (simpleDateFormat) {
                    parse = simpleDateFormat.parse(str);
                }
                return parse;
            } catch (Exception unused) {
                SimpleDateFormat simpleDateFormat2 = BAD_DATE_TIME_FORMAT;
                synchronized (simpleDateFormat2) {
                    try {
                        return simpleDateFormat2.parse(str);
                    } catch (Exception unused2) {
                        SimpleDateFormat simpleDateFormat3 = BAD_DATE_TIME_FORMAT_3;
                        synchronized (simpleDateFormat3) {
                            return simpleDateFormat3.parse(str);
                        }
                    }
                }
            }
        } catch (Exception unused3) {
            SimpleDateFormat simpleDateFormat4 = BAD_DATE_TIME_FORMAT_2;
            synchronized (simpleDateFormat4) {
                return simpleDateFormat4.parse(str);
            }
        }
    }

    public final boolean containsKey(String str) {
        int size = size() - 1;
        for (int i = 0; i < size; i++) {
            if (StateLayer.equalsIgnoreCase(get(i), str)) {
                return true;
            }
        }
        return false;
    }

    public final Object getKeyedValue(String str) {
        int size = size() - 1;
        for (int i = 0; i < size; i++) {
            if (StateLayer.equalsIgnoreCase(get(i), str)) {
                return get(i + 1);
            }
        }
        return null;
    }

    public final boolean isList(int i) {
        return i >= 0 && i < size() && (get(i) instanceof ImapList);
    }

    public final boolean isString(int i) {
        return i >= 0 && i < size() && (get(i) instanceof String);
    }
}
