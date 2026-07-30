package j$.util;

import java.io.Serializable;

/* renamed from: j$.util.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2979f extends RuntimeException {
    public C2979f(String str) {
        super(str);
    }

    public static void a(Serializable serializable, String str) {
        throw new C2979f("Unsupported " + str + " :" + serializable);
    }
}
