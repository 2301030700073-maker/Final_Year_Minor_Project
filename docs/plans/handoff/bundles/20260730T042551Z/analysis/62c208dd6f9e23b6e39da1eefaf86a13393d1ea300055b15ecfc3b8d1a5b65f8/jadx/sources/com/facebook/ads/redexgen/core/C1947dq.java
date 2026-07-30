package com.facebook.ads.redexgen.core;

import android.system.ErrnoException;
import android.system.OsConstants;

/* renamed from: com.facebook.ads.redexgen.X.dq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1947dq {
    public static boolean A00(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
