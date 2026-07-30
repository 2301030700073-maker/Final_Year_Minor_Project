package defpackage;

import android.database.Cursor;
import com.facebook.internal.FacebookRequestErrorClassification;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class DG {

    /* renamed from: do, reason: not valid java name */
    public final String f558do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, Cdo> f559do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<Cif> f560do;

    /* renamed from: if, reason: not valid java name */
    public final Set<Cnew> f561if;

    /* renamed from: DG$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f562do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f563do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f564do;

        /* renamed from: for, reason: not valid java name */
        public final int f565for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final String f566for;

        /* renamed from: if, reason: not valid java name */
        public final int f567if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final String f568if;

        public Cdo(int i, String str, String str2, String str3, boolean z, int i2) {
            this.f563do = str;
            this.f568if = str2;
            this.f564do = z;
            this.f567if = i;
            int i3 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i3 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i3 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i3 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.f562do = i3;
            this.f566for = str3;
            this.f565for = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cdo.class != obj.getClass()) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            if (this.f567if != cdo.f567if || !this.f563do.equals(cdo.f563do) || this.f564do != cdo.f564do) {
                return false;
            }
            String str = this.f566for;
            int i = this.f565for;
            int i2 = cdo.f565for;
            String str2 = cdo.f566for;
            if (i == 1 && i2 == 2 && str != null && !str.equals(str2)) {
                return false;
            }
            if (i != 2 || i2 != 1 || str2 == null || str2.equals(str)) {
                return (i == 0 || i != i2 || (str == null ? str2 == null : str.equals(str2))) && this.f562do == cdo.f562do;
            }
            return false;
        }

        public final int hashCode() {
            return (((((this.f563do.hashCode() * 31) + this.f562do) * 31) + (this.f564do ? 1231 : 1237)) * 31) + this.f567if;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Column{name='");
            sb.append(this.f563do);
            sb.append("', type='");
            sb.append(this.f568if);
            sb.append("', affinity='");
            sb.append(this.f562do);
            sb.append("', notNull=");
            sb.append(this.f564do);
            sb.append(", primaryKeyPosition=");
            sb.append(this.f567if);
            sb.append(", defaultValue='");
            return Creturn.m7984try(sb, this.f566for, "'}");
        }
    }

    /* renamed from: DG$for, reason: invalid class name */
    public static class Cfor implements Comparable<Cfor> {

        /* renamed from: break, reason: not valid java name */
        public final String f569break;

        /* renamed from: catch, reason: not valid java name */
        public final String f570catch;

        /* renamed from: for, reason: not valid java name */
        public final int f571for;

        /* renamed from: new, reason: not valid java name */
        public final int f572new;

        public Cfor(int i, int i2, String str, String str2) {
            this.f571for = i;
            this.f572new = i2;
            this.f569break = str;
            this.f570catch = str2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Cfor cfor) {
            Cfor cfor2 = cfor;
            int i = this.f571for - cfor2.f571for;
            return i == 0 ? this.f572new - cfor2.f572new : i;
        }
    }

    /* renamed from: DG$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f573do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final List<String> f574do;

        /* renamed from: for, reason: not valid java name */
        public final String f575for;

        /* renamed from: if, reason: not valid java name */
        public final String f576if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final List<String> f577if;

        public Cif(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f573do = str;
            this.f576if = str2;
            this.f575for = str3;
            this.f574do = DesugarCollections.unmodifiableList(list);
            this.f577if = DesugarCollections.unmodifiableList(list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cif.class != obj.getClass()) {
                return false;
            }
            Cif cif = (Cif) obj;
            if (this.f573do.equals(cif.f573do) && this.f576if.equals(cif.f576if) && this.f575for.equals(cif.f575for) && this.f574do.equals(cif.f574do)) {
                return this.f577if.equals(cif.f577if);
            }
            return false;
        }

        public final int hashCode() {
            return this.f577if.hashCode() + ((this.f574do.hashCode() + defpackage.Cif.m6915for(this.f575for, defpackage.Cif.m6915for(this.f576if, this.f573do.hashCode() * 31, 31), 31)) * 31);
        }

        public final String toString() {
            return "ForeignKey{referenceTable='" + this.f573do + "', onDelete='" + this.f576if + "', onUpdate='" + this.f575for + "', columnNames=" + this.f574do + ", referenceColumnNames=" + this.f577if + '}';
        }
    }

    /* renamed from: DG$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final String f578do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final List<String> f579do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f580do;

        public Cnew(String str, List list, boolean z) {
            this.f578do = str;
            this.f580do = z;
            this.f579do = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cnew.class != obj.getClass()) {
                return false;
            }
            Cnew cnew = (Cnew) obj;
            if (this.f580do != cnew.f580do || !this.f579do.equals(cnew.f579do)) {
                return false;
            }
            String str = this.f578do;
            boolean startsWith = str.startsWith("index_");
            String str2 = cnew.f578do;
            return startsWith ? str2.startsWith("index_") : str.equals(str2);
        }

        public final int hashCode() {
            String str = this.f578do;
            return this.f579do.hashCode() + ((((str.startsWith("index_") ? -1184239155 : str.hashCode()) * 31) + (this.f580do ? 1 : 0)) * 31);
        }

        public final String toString() {
            return "Index{name='" + this.f578do + "', unique=" + this.f580do + ", columns=" + this.f579do + '}';
        }
    }

    public DG(String str, HashMap hashMap, HashSet hashSet, HashSet hashSet2) {
        this.f558do = str;
        this.f559do = DesugarCollections.unmodifiableMap(hashMap);
        this.f560do = DesugarCollections.unmodifiableSet(hashSet);
        this.f561if = hashSet2 == null ? null : DesugarCollections.unmodifiableSet(hashSet2);
    }

    /* renamed from: do, reason: not valid java name */
    public static DG m365do(C0519Tj c0519Tj, String str) {
        HashSet hashSet;
        int i;
        int i2;
        ArrayList arrayList;
        int i3;
        Cursor m2280case = c0519Tj.m2280case("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (m2280case.getColumnCount() > 0) {
                int columnIndex = m2280case.getColumnIndex(FacebookRequestErrorClassification.KEY_NAME);
                int columnIndex2 = m2280case.getColumnIndex("type");
                int columnIndex3 = m2280case.getColumnIndex("notnull");
                int columnIndex4 = m2280case.getColumnIndex("pk");
                int columnIndex5 = m2280case.getColumnIndex("dflt_value");
                while (m2280case.moveToNext()) {
                    String string = m2280case.getString(columnIndex);
                    hashMap.put(string, new Cdo(m2280case.getInt(columnIndex4), string, m2280case.getString(columnIndex2), m2280case.getString(columnIndex5), m2280case.getInt(columnIndex3) != 0, 2));
                }
            }
            m2280case.close();
            HashSet hashSet2 = new HashSet();
            m2280case = c0519Tj.m2280case("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = m2280case.getColumnIndex("id");
                int columnIndex7 = m2280case.getColumnIndex("seq");
                int columnIndex8 = m2280case.getColumnIndex("table");
                int columnIndex9 = m2280case.getColumnIndex("on_delete");
                int columnIndex10 = m2280case.getColumnIndex("on_update");
                ArrayList m367if = m367if(m2280case);
                int count = m2280case.getCount();
                int i4 = 0;
                while (i4 < count) {
                    m2280case.moveToPosition(i4);
                    if (m2280case.getInt(columnIndex7) != 0) {
                        i = columnIndex6;
                        i2 = columnIndex7;
                        arrayList = m367if;
                        i3 = count;
                    } else {
                        int i5 = m2280case.getInt(columnIndex6);
                        i = columnIndex6;
                        ArrayList arrayList2 = new ArrayList();
                        i2 = columnIndex7;
                        ArrayList arrayList3 = new ArrayList();
                        Iterator it = m367if.iterator();
                        while (it.hasNext()) {
                            ArrayList arrayList4 = m367if;
                            Cfor cfor = (Cfor) it.next();
                            int i6 = count;
                            if (cfor.f571for == i5) {
                                arrayList2.add(cfor.f569break);
                                arrayList3.add(cfor.f570catch);
                            }
                            m367if = arrayList4;
                            count = i6;
                        }
                        arrayList = m367if;
                        i3 = count;
                        hashSet2.add(new Cif(m2280case.getString(columnIndex8), m2280case.getString(columnIndex9), m2280case.getString(columnIndex10), arrayList2, arrayList3));
                    }
                    i4++;
                    columnIndex6 = i;
                    columnIndex7 = i2;
                    m367if = arrayList;
                    count = i3;
                }
                m2280case.close();
                m2280case = c0519Tj.m2280case("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = m2280case.getColumnIndex(FacebookRequestErrorClassification.KEY_NAME);
                    int columnIndex12 = m2280case.getColumnIndex("origin");
                    int columnIndex13 = m2280case.getColumnIndex("unique");
                    if (columnIndex11 != -1 && columnIndex12 != -1 && columnIndex13 != -1) {
                        hashSet = new HashSet();
                        while (m2280case.moveToNext()) {
                            if ("c".equals(m2280case.getString(columnIndex12))) {
                                Cnew m366for = m366for(c0519Tj, m2280case.getString(columnIndex11), m2280case.getInt(columnIndex13) == 1);
                                if (m366for != null) {
                                    hashSet.add(m366for);
                                }
                            }
                        }
                        return new DG(str, hashMap, hashSet2, hashSet);
                    }
                    m2280case.close();
                    hashSet = null;
                    return new DG(str, hashMap, hashSet2, hashSet);
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cnew m366for(C0519Tj c0519Tj, String str, boolean z) {
        Cursor m2280case = c0519Tj.m2280case("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = m2280case.getColumnIndex("seqno");
            int columnIndex2 = m2280case.getColumnIndex("cid");
            int columnIndex3 = m2280case.getColumnIndex(FacebookRequestErrorClassification.KEY_NAME);
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (m2280case.moveToNext()) {
                    if (m2280case.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(m2280case.getInt(columnIndex)), m2280case.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new Cnew(str, arrayList, z);
            }
            m2280case.close();
            return null;
        } finally {
            m2280case.close();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static ArrayList m367if(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new Cfor(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public final boolean equals(Object obj) {
        Set<Cnew> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || DG.class != obj.getClass()) {
            return false;
        }
        DG dg = (DG) obj;
        String str = dg.f558do;
        String str2 = this.f558do;
        if (str2 == null ? str != null : !str2.equals(str)) {
            return false;
        }
        Map<String, Cdo> map = dg.f559do;
        Map<String, Cdo> map2 = this.f559do;
        if (map2 == null ? map != null : !map2.equals(map)) {
            return false;
        }
        Set<Cif> set2 = dg.f560do;
        Set<Cif> set3 = this.f560do;
        if (set3 == null ? set2 != null : !set3.equals(set2)) {
            return false;
        }
        Set<Cnew> set4 = this.f561if;
        if (set4 == null || (set = dg.f561if) == null) {
            return true;
        }
        return set4.equals(set);
    }

    public final int hashCode() {
        String str = this.f558do;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, Cdo> map = this.f559do;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<Cif> set = this.f560do;
        return hashCode2 + (set != null ? set.hashCode() : 0);
    }

    public final String toString() {
        return "TableInfo{name='" + this.f558do + "', columns=" + this.f559do + ", foreignKeys=" + this.f560do + ", indices=" + this.f561if + '}';
    }
}
