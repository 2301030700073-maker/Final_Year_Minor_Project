package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* renamed from: bh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0765bh {

    /* renamed from: do, reason: not valid java name */
    public static volatile C0765bh f8438do;

    /* renamed from: if, reason: not valid java name */
    public static final C0765bh f8439if = new C0765bh(0);

    public C0765bh() {
        new HashMap();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4853do() {
        if (f8438do == null) {
            synchronized (C0765bh.class) {
                if (f8438do == null) {
                    Class<?> cls = C0648Zg.f4892do;
                    C0765bh c0765bh = null;
                    if (cls != null) {
                        try {
                            c0765bh = (C0765bh) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                    if (c0765bh == null) {
                        c0765bh = f8439if;
                    }
                    f8438do = c0765bh;
                }
            }
        }
    }

    public C0765bh(int i) {
        Collections.emptyMap();
    }
}
