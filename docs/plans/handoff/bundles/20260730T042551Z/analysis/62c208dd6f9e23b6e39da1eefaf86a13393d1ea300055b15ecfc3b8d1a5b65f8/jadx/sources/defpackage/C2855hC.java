package defpackage;

import java.util.Locale;

/* renamed from: hC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2855hC extends Exception {
    public /* synthetic */ C2855hC(String str, SecurityException securityException) {
        super(str, securityException);
    }

    public /* synthetic */ C2855hC(String str) {
        super(str);
        if (str == null) {
            return;
        }
        str.toLowerCase(Locale.US).getClass();
    }
}
