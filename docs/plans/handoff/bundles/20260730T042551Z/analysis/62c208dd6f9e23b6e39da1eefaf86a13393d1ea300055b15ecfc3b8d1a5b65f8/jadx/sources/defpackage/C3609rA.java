package defpackage;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* renamed from: rA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3609rA {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f15223do = new ArrayList();

    /* renamed from: do, reason: not valid java name */
    public final int f15222do = 128;

    /* renamed from: do, reason: not valid java name */
    public final synchronized List<AbstractC3551qA> m7936do() {
        return DesugarCollections.unmodifiableList(new ArrayList(this.f15223do));
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized boolean m7937if(List<AbstractC3551qA> list) {
        this.f15223do.clear();
        int size = list.size();
        int i = this.f15222do;
        if (size <= i) {
            return this.f15223do.addAll(list);
        }
        return this.f15223do.addAll(list.subList(0, i));
    }
}
