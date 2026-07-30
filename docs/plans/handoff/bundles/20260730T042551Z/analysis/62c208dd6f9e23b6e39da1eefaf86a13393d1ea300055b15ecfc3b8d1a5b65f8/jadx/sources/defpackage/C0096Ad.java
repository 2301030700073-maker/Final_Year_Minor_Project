package defpackage;

import j$.util.DesugarCollections;
import java.util.Iterator;
import java.util.Set;

/* renamed from: Ad, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0096Ad implements FJ {

    /* renamed from: do, reason: not valid java name */
    public final C2768fl f111do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f112do;

    public C0096Ad(Set<AbstractC0657Zp> set, C2768fl c2768fl) {
        this.f112do = m80if(set);
        this.f111do = c2768fl;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m80if(Set<AbstractC0657Zp> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC0657Zp> it = set.iterator();
        while (it.hasNext()) {
            AbstractC0657Zp next = it.next();
            sb.append(next.mo3067do());
            sb.append('/');
            sb.append(next.mo3068if());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // defpackage.FJ
    /* renamed from: do, reason: not valid java name */
    public final String mo81do() {
        Set unmodifiableSet;
        C2768fl c2768fl = this.f111do;
        synchronized (c2768fl.f12984do) {
            unmodifiableSet = DesugarCollections.unmodifiableSet(c2768fl.f12984do);
        }
        boolean isEmpty = unmodifiableSet.isEmpty();
        String str = this.f112do;
        if (isEmpty) {
            return str;
        }
        return str + ' ' + m80if(c2768fl.m6680do());
    }
}
