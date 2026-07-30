package defpackage;

import java.util.Iterator;
import java.util.List;

/* renamed from: rr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3648rr {

    /* renamed from: do, reason: not valid java name */
    public static final AbstractC3531pr f15331do;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [wa] */
    static {
        String str;
        Object next;
        int i = C4087zG.f16882do;
        AbstractC3531pr abstractC3531pr = null;
        try {
            str = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null) {
            Boolean.parseBoolean(str);
        }
        Iterator m7975case = Creturn.m7975case();
        C0173Do.m401try(m7975case, "<this>");
        C3376nC c3376nC = new C3376nC(m7975case);
        if (!(c3376nC instanceof C3926wa)) {
            c3376nC = new C3926wa(c3376nC);
        }
        List<? extends InterfaceC3590qr> m7448while = C3317mC.m7448while(c3376nC);
        Iterator it = m7448while.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int mo1575for = ((InterfaceC3590qr) next).mo1575for();
                do {
                    Object next2 = it.next();
                    int mo1575for2 = ((InterfaceC3590qr) next2).mo1575for();
                    if (mo1575for < mo1575for2) {
                        next = next2;
                        mo1575for = mo1575for2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        InterfaceC3590qr interfaceC3590qr = (InterfaceC3590qr) next;
        if (interfaceC3590qr != null) {
            try {
                abstractC3531pr = interfaceC3590qr.mo1574do(m7448while);
            } catch (Throwable unused2) {
                interfaceC3590qr.mo1576if();
            }
            if (abstractC3531pr != null) {
                f15331do = abstractC3531pr;
                return;
            }
        }
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }
}
