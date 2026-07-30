package com.android.launcher3.util;

import android.os.Trace;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class TraceHelper {
    public static Object whitelistIpcs(String str, Supplier supplier) {
        Trace.beginSection(str);
        try {
            return supplier.get();
        } finally {
            Trace.endSection();
        }
    }
}
