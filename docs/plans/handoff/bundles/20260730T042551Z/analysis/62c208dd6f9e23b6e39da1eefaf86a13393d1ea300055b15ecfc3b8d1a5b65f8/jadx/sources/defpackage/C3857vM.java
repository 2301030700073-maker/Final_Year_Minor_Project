package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: vM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3857vM extends FM {

    /* renamed from: do, reason: not valid java name */
    public final int f16072do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GM f16073do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2661dw f16074do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16075do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f16076do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<? extends RM> f16077do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16078do;

    /* renamed from: if, reason: not valid java name */
    public final ArrayList f16079if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final List<C3857vM> f16080if;

    static {
        AbstractC0614Xq.m2870try("WorkContinuationImpl");
    }

    public C3857vM() {
        throw null;
    }

    public C3857vM(GM gm, List<? extends RM> list) {
        this.f16073do = gm;
        this.f16075do = null;
        this.f16072do = 2;
        this.f16077do = list;
        this.f16080if = null;
        this.f16076do = new ArrayList(list.size());
        this.f16079if = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String uuid = list.get(i).f3166do.toString();
            this.f16076do.add(uuid);
            this.f16079if.add(uuid);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m8472for(C3857vM c3857vM, HashSet hashSet) {
        hashSet.addAll(c3857vM.f16076do);
        HashSet m8473new = m8473new(c3857vM);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (m8473new.contains((String) it.next())) {
                return true;
            }
        }
        List<C3857vM> list = c3857vM.f16080if;
        if (list != null && !list.isEmpty()) {
            Iterator<C3857vM> it2 = list.iterator();
            while (it2.hasNext()) {
                if (m8472for(it2.next(), hashSet)) {
                    return true;
                }
            }
        }
        hashSet.removeAll(c3857vM.f16076do);
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public static HashSet m8473new(C3857vM c3857vM) {
        HashSet hashSet = new HashSet();
        List<C3857vM> list = c3857vM.f16080if;
        if (list != null && !list.isEmpty()) {
            Iterator<C3857vM> it = list.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().f16076do);
            }
        }
        return hashSet;
    }
}
