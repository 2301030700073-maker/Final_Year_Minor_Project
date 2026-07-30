package defpackage;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import defpackage.C3139jB;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: Lo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0349Lo {

    /* renamed from: if, reason: not valid java name */
    public static final String[] f2001if = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f2003do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C0607Xj f2004do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f2008do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String[] f2010do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f2007do = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f2009do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SuppressLint({"RestrictedApi"})
    public final C3139jB<Cfor, Cnew> f2005do = new C3139jB<>();

    /* renamed from: do, reason: not valid java name */
    public final Cdo f2002do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<String, Integer> f2006do = new HashMap<>();

    /* renamed from: Lo$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final HashSet m1349do() {
            HashSet hashSet = new HashSet();
            Cursor m8559else = C0349Lo.this.f2008do.m8559else(new C2739fE("SELECT * FROM room_table_modification_log WHERE invalidated = 1;", null));
            while (m8559else.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m8559else.getInt(0)));
                } catch (Throwable th) {
                    m8559else.close();
                    throw th;
                }
            }
            m8559else.close();
            if (!hashSet.isEmpty()) {
                C0349Lo.this.f2004do.m2868goto();
            }
            return hashSet;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReentrantReadWriteLock.ReadLock readLock = C0349Lo.this.f2008do.f16286do.readLock();
            HashSet hashSet = null;
            try {
                try {
                    readLock.lock();
                } catch (SQLiteException | IllegalStateException unused) {
                }
                if (C0349Lo.this.m1346do()) {
                    if (C0349Lo.this.f2007do.compareAndSet(true, false)) {
                        if (((C0519Tj) C0349Lo.this.f2008do.f16282do.mo2460else()).f3741do.inTransaction()) {
                            return;
                        }
                        AbstractC3904wA abstractC3904wA = C0349Lo.this.f2008do;
                        if (abstractC3904wA.f16288if) {
                            C0519Tj c0519Tj = (C0519Tj) abstractC3904wA.f16282do.mo2460else();
                            c0519Tj.m2281do();
                            try {
                                hashSet = m1349do();
                                c0519Tj.m2283goto();
                                c0519Tj.m2284if();
                            } catch (Throwable th) {
                                c0519Tj.m2284if();
                                throw th;
                            }
                        } else {
                            hashSet = m1349do();
                        }
                        if (hashSet == null || hashSet.isEmpty()) {
                            return;
                        }
                        synchronized (C0349Lo.this.f2005do) {
                            C3139jB.Ctry ctry = (C3139jB.Ctry) C0349Lo.this.f2005do.iterator();
                            if (ctry.hasNext()) {
                                ((Cnew) ((Map.Entry) ctry.next()).getValue()).getClass();
                                throw null;
                            }
                        }
                    }
                }
            } finally {
                readLock.unlock();
            }
        }
    }

    /* renamed from: Lo$for, reason: invalid class name */
    public static abstract class Cfor {
        /* renamed from: do, reason: not valid java name */
        public abstract void m1350do(Set<String> set);
    }

    /* renamed from: Lo$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public boolean f2012do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int[] f2013do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long[] f2014do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean[] f2015do;

        /* renamed from: if, reason: not valid java name */
        public boolean f2016if;

        public Cif(int i) {
            long[] jArr = new long[i];
            this.f2014do = jArr;
            boolean[] zArr = new boolean[i];
            this.f2015do = zArr;
            this.f2013do = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: do, reason: not valid java name */
        public final int[] m1351do() {
            synchronized (this) {
                if (this.f2012do && !this.f2016if) {
                    int length = this.f2014do.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f2016if = true;
                            this.f2012do = false;
                            return this.f2013do;
                        }
                        boolean z = this.f2014do[i] > 0;
                        boolean[] zArr = this.f2015do;
                        if (z != zArr[i]) {
                            int[] iArr = this.f2013do;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f2013do[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }
    }

    /* renamed from: Lo$new, reason: invalid class name */
    public static class Cnew {
    }

    public C0349Lo(AbstractC3904wA abstractC3904wA, HashMap hashMap, HashMap hashMap2, String... strArr) {
        this.f2008do = abstractC3904wA;
        this.f2003do = new Cif(strArr.length);
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.f2010do = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f2006do.put(lowerCase, Integer.valueOf(i));
            String str2 = (String) hashMap.get(strArr[i]);
            if (str2 != null) {
                this.f2010do[i] = str2.toLowerCase(locale);
            } else {
                this.f2010do[i] = lowerCase;
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = str3.toLowerCase(locale2);
            if (this.f2006do.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(locale2);
                HashMap<String, Integer> hashMap3 = this.f2006do;
                hashMap3.put(lowerCase3, hashMap3.get(lowerCase2));
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m1346do() {
        InterfaceC0681aG interfaceC0681aG = this.f2008do.f16281do;
        if (!(interfaceC0681aG != null && ((C0519Tj) interfaceC0681aG).f3741do.isOpen())) {
            return false;
        }
        if (!this.f2009do) {
            this.f2008do.f16282do.mo2460else();
        }
        return this.f2009do;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1347for(InterfaceC0681aG interfaceC0681aG) {
        C0519Tj c0519Tj = (C0519Tj) interfaceC0681aG;
        if (c0519Tj.f3741do.inTransaction()) {
            return;
        }
        while (true) {
            try {
                ReentrantReadWriteLock.ReadLock readLock = this.f2008do.f16286do.readLock();
                readLock.lock();
                try {
                    int[] m1351do = this.f2003do.m1351do();
                    if (m1351do == null) {
                        return;
                    }
                    int length = m1351do.length;
                    c0519Tj.m2281do();
                    for (int i = 0; i < length; i++) {
                        try {
                            int i2 = m1351do[i];
                            if (i2 == 1) {
                                m1348if(c0519Tj, i);
                            } else if (i2 == 2) {
                                String str = this.f2010do[i];
                                StringBuilder sb = new StringBuilder();
                                String[] strArr = f2001if;
                                for (int i3 = 0; i3 < 3; i3++) {
                                    String str2 = strArr[i3];
                                    sb.setLength(0);
                                    sb.append("DROP TRIGGER IF EXISTS ");
                                    sb.append("`");
                                    sb.append("room_table_modification_trigger_");
                                    sb.append(str);
                                    sb.append("_");
                                    sb.append(str2);
                                    sb.append("`");
                                    c0519Tj.m2282for(sb.toString());
                                }
                            }
                        } catch (Throwable th) {
                            c0519Tj.m2284if();
                            throw th;
                        }
                    }
                    c0519Tj.m2283goto();
                    c0519Tj.m2284if();
                    Cif cif = this.f2003do;
                    synchronized (cif) {
                        cif.f2016if = false;
                    }
                } finally {
                    readLock.unlock();
                }
            } catch (SQLiteException | IllegalStateException unused) {
                return;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1348if(InterfaceC0681aG interfaceC0681aG, int i) {
        C0519Tj c0519Tj = (C0519Tj) interfaceC0681aG;
        c0519Tj.m2282for(Creturn.m7981if("INSERT OR IGNORE INTO room_table_modification_log VALUES(", i, ", 0)"));
        String str = this.f2010do[i];
        StringBuilder sb = new StringBuilder();
        String[] strArr = f2001if;
        for (int i2 = 0; i2 < 3; i2++) {
            String str2 = strArr[i2];
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            Creturn.m7980goto(sb, str, "_", str2, "`");
            Creturn.m7980goto(sb, " AFTER ", str2, " ON `", str);
            Creturn.m7980goto(sb, "` BEGIN UPDATE ", "room_table_modification_log", " SET ", "invalidated");
            Creturn.m7980goto(sb, " = 1", " WHERE ", "table_id", " = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            c0519Tj.m2282for(sb.toString());
        }
    }
}
