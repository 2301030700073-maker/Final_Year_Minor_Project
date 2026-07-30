package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: mC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3317mC extends C3435oC {
    /* renamed from: while, reason: not valid java name */
    public static final List m7448while(InterfaceC3140jC interfaceC3140jC) {
        ArrayList arrayList = new ArrayList();
        Iterator it = interfaceC3140jC.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return O4.m1632volatile(arrayList);
    }
}
