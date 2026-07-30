package defpackage;

import android.util.Base64;

/* renamed from: wC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3906wC {

    /* renamed from: do, reason: not valid java name */
    public static final String f16306do;

    /* renamed from: if, reason: not valid java name */
    public static final String f16307if;

    static {
        byte[] bytes = Ix.m993if().getBytes(C3548q7.f15043do);
        C0173Do.m399new(bytes, "this as java.lang.String).getBytes(charset)");
        String encodeToString = Base64.encodeToString(bytes, 10);
        f16306do = Cif.m6908case("firebase_session_", encodeToString, "_data");
        f16307if = Cif.m6908case("firebase_session_", encodeToString, "_settings");
    }
}
