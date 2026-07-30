package defpackage;

import java.io.Closeable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* renamed from: eL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2687eL {

    /* renamed from: do, reason: not valid java name */
    public final LinkedHashMap f12668do = new LinkedHashMap();

    /* renamed from: do, reason: not valid java name */
    public final void m6559do() {
        for (AbstractC0805cL abstractC0805cL : this.f12668do.values()) {
            abstractC0805cL.f8524do = true;
            HashMap hashMap = abstractC0805cL.f8522do;
            if (hashMap != null) {
                synchronized (hashMap) {
                    Iterator it = abstractC0805cL.f8522do.values().iterator();
                    while (it.hasNext()) {
                        AbstractC0805cL.m4899do(it.next());
                    }
                }
            }
            LinkedHashSet linkedHashSet = abstractC0805cL.f8523do;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    Iterator it2 = abstractC0805cL.f8523do.iterator();
                    while (it2.hasNext()) {
                        AbstractC0805cL.m4899do((Closeable) it2.next());
                    }
                }
            }
            abstractC0805cL.mo4218if();
        }
        this.f12668do.clear();
    }
}
