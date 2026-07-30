package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: Ec, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0183Ec {

    /* renamed from: Ec$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final C0793c9<?> f865do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashSet f866do = new HashSet();

        /* renamed from: if, reason: not valid java name */
        public final HashSet f867if = new HashSet();

        public Cdo(C0793c9<?> c0793c9) {
            this.f865do = c0793c9;
        }
    }

    /* renamed from: Ec$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Dy<?> f868do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f869do;

        public Cif() {
            throw null;
        }

        public Cif(Dy dy, boolean z) {
            this.f868do = dy;
            this.f869do = z;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return cif.f868do.equals(this.f868do) && cif.f869do == this.f869do;
        }

        public final int hashCode() {
            return ((this.f868do.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f869do).hashCode();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m489do(ArrayList arrayList) {
        HashMap hashMap = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                Iterator it2 = hashMap.values().iterator();
                while (it2.hasNext()) {
                    for (Cdo cdo : (Set) it2.next()) {
                        for (C0513Td c0513Td : cdo.f865do.f8504if) {
                            if (c0513Td.f3718if == 0) {
                                Set<Cdo> set = (Set) hashMap.get(new Cif(c0513Td.f3717do, c0513Td.f3716do == 2));
                                if (set != null) {
                                    for (Cdo cdo2 : set) {
                                        cdo.f866do.add(cdo2);
                                        cdo2.f867if.add(cdo);
                                    }
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    Cdo cdo3 = (Cdo) it4.next();
                    if (cdo3.f867if.isEmpty()) {
                        hashSet2.add(cdo3);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    Cdo cdo4 = (Cdo) hashSet2.iterator().next();
                    hashSet2.remove(cdo4);
                    i++;
                    Iterator it5 = cdo4.f866do.iterator();
                    while (it5.hasNext()) {
                        Cdo cdo5 = (Cdo) it5.next();
                        cdo5.f867if.remove(cdo4);
                        if (cdo5.f867if.isEmpty()) {
                            hashSet2.add(cdo5);
                        }
                    }
                }
                if (i == arrayList.size()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it6 = hashSet.iterator();
                while (it6.hasNext()) {
                    Cdo cdo6 = (Cdo) it6.next();
                    if (!cdo6.f867if.isEmpty() && !cdo6.f866do.isEmpty()) {
                        arrayList2.add(cdo6.f865do);
                    }
                }
                throw new C0557Vd(arrayList2);
            }
            C0793c9 c0793c9 = (C0793c9) it.next();
            Cdo cdo7 = new Cdo(c0793c9);
            Iterator it7 = c0793c9.f8500do.iterator();
            while (it7.hasNext()) {
                Dy dy = (Dy) it7.next();
                boolean z = !(c0793c9.f8503if == 0);
                Cif cif = new Cif(dy, z);
                if (!hashMap.containsKey(cif)) {
                    hashMap.put(cif, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cif);
                if (!set2.isEmpty() && !z) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", dy));
                }
                set2.add(cdo7);
            }
        }
    }
}
