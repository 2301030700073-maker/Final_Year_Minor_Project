package com.amazonaws.util;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import java.util.Locale;

/* loaded from: classes.dex */
public class StringUtils {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f9077do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name */
    public static String m5191do(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str.toLowerCase(Locale.ENGLISH);
    }
}
