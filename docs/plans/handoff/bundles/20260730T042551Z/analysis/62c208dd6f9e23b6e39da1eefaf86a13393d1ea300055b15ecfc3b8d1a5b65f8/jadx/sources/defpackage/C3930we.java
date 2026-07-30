package defpackage;

import java.util.ArrayList;
import java.util.HashSet;

/* renamed from: we, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3930we {

    /* renamed from: do, reason: not valid java name */
    public final Object f16373do;

    /* renamed from: for, reason: not valid java name */
    public final Object f16374for;

    /* renamed from: if, reason: not valid java name */
    public final Object f16375if;

    /* renamed from: new, reason: not valid java name */
    public final Object f16376new;

    public /* synthetic */ C3930we(String str, String str2, StackTraceElement[] stackTraceElementArr, C3930we c3930we) {
        this.f16373do = str;
        this.f16375if = str2;
        this.f16374for = stackTraceElementArr;
        this.f16376new = c3930we;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8579do(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((C2680eE) this.f16375if).getOrDefault(obj, null);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m8579do(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public /* synthetic */ C3930we() {
        this.f16373do = new C0781bx(10);
        this.f16375if = new C2680eE();
        this.f16374for = new ArrayList();
        this.f16376new = new HashSet();
    }
}
