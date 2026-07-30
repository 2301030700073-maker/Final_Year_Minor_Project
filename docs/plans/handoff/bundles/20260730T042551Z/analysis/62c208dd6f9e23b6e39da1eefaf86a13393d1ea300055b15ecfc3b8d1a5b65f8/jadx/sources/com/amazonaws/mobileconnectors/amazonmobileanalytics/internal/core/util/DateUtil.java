package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util;

import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class DateUtil {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f8839do = 0;

    static {
        new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
    }
}
