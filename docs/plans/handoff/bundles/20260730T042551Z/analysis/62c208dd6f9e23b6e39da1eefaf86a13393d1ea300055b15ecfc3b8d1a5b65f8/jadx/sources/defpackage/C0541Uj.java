package defpackage;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import defpackage.InterfaceC0741bG;
import java.io.File;

/* renamed from: Uj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0541Uj implements InterfaceC0741bG {

    /* renamed from: break, reason: not valid java name */
    public final String f3954break;

    /* renamed from: do, reason: not valid java name */
    public Cdo f3955do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f3956do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0741bG.Cdo f3957do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f3958do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f3959do;

    /* renamed from: if, reason: not valid java name */
    public boolean f3960if;

    /* renamed from: Uj$do, reason: invalid class name */
    public static class Cdo extends SQLiteOpenHelper {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0741bG.Cdo f3961do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f3962do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C0519Tj[] f3963do;

        /* renamed from: Uj$do$do, reason: invalid class name and collision with other inner class name */
        public class C0020do implements DatabaseErrorHandler {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InterfaceC0741bG.Cdo f3964do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ C0519Tj[] f3965do;

            public C0020do(InterfaceC0741bG.Cdo cdo, C0519Tj[] c0519TjArr) {
                this.f3964do = cdo;
                this.f3965do = c0519TjArr;
            }

            /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
            
                if ((r2.f3741do == r4) == false) goto L9;
             */
            @Override // android.database.DatabaseErrorHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onCorruption(android.database.sqlite.SQLiteDatabase r4) {
                /*
                    r3 = this;
                    Tj[] r0 = r3.f3965do
                    r1 = 0
                    r2 = r0[r1]
                    if (r2 == 0) goto L10
                    android.database.sqlite.SQLiteDatabase r2 = r2.f3741do
                    if (r2 != r4) goto Ld
                    r2 = 1
                    goto Le
                Ld:
                    r2 = 0
                Le:
                    if (r2 != 0) goto L17
                L10:
                    Tj r2 = new Tj
                    r2.<init>(r4)
                    r0[r1] = r2
                L17:
                    r4 = r0[r1]
                    bG$do r0 = r3.f3964do
                    r0.getClass()
                    android.database.sqlite.SQLiteDatabase r0 = r4.f3741do
                    r0.getPath()
                    android.database.sqlite.SQLiteDatabase r0 = r4.f3741do
                    boolean r1 = r0.isOpen()
                    if (r1 != 0) goto L33
                    java.lang.String r4 = r0.getPath()
                    defpackage.InterfaceC0741bG.Cdo.m4820do(r4)
                    goto L83
                L33:
                    r1 = 0
                    java.util.List r1 = r0.getAttachedDbs()     // Catch: java.lang.Throwable -> L39 android.database.sqlite.SQLiteException -> L3b
                    goto L3b
                L39:
                    r4 = move-exception
                    goto L3f
                L3b:
                    r4.close()     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L61
                    goto L62
                L3f:
                    if (r1 == 0) goto L59
                    java.util.Iterator r0 = r1.iterator()
                L45:
                    boolean r1 = r0.hasNext()
                    if (r1 == 0) goto L60
                    java.lang.Object r1 = r0.next()
                    android.util.Pair r1 = (android.util.Pair) r1
                    java.lang.Object r1 = r1.second
                    java.lang.String r1 = (java.lang.String) r1
                    defpackage.InterfaceC0741bG.Cdo.m4820do(r1)
                    goto L45
                L59:
                    java.lang.String r0 = r0.getPath()
                    defpackage.InterfaceC0741bG.Cdo.m4820do(r0)
                L60:
                    throw r4
                L61:
                L62:
                    if (r1 == 0) goto L7c
                    java.util.Iterator r4 = r1.iterator()
                L68:
                    boolean r0 = r4.hasNext()
                    if (r0 == 0) goto L83
                    java.lang.Object r0 = r4.next()
                    android.util.Pair r0 = (android.util.Pair) r0
                    java.lang.Object r0 = r0.second
                    java.lang.String r0 = (java.lang.String) r0
                    defpackage.InterfaceC0741bG.Cdo.m4820do(r0)
                    goto L68
                L7c:
                    java.lang.String r4 = r0.getPath()
                    defpackage.InterfaceC0741bG.Cdo.m4820do(r4)
                L83:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.C0541Uj.Cdo.C0020do.onCorruption(android.database.sqlite.SQLiteDatabase):void");
            }
        }

        public Cdo(Context context, String str, C0519Tj[] c0519TjArr, InterfaceC0741bG.Cdo cdo) {
            super(context, str, null, cdo.f8350do, new C0020do(cdo, c0519TjArr));
            this.f3961do = cdo;
            this.f3963do = c0519TjArr;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final synchronized void close() {
            super.close();
            this.f3963do[0] = null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
        
            if ((r2.f3741do == r4) == false) goto L9;
         */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.C0519Tj m2461do(android.database.sqlite.SQLiteDatabase r4) {
            /*
                r3 = this;
                Tj[] r0 = r3.f3963do
                r1 = 0
                r2 = r0[r1]
                if (r2 == 0) goto L10
                android.database.sqlite.SQLiteDatabase r2 = r2.f3741do
                if (r2 != r4) goto Ld
                r2 = 1
                goto Le
            Ld:
                r2 = 0
            Le:
                if (r2 != 0) goto L17
            L10:
                Tj r2 = new Tj
                r2.<init>(r4)
                r0[r1] = r2
            L17:
                r4 = r0[r1]
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0541Uj.Cdo.m2461do(android.database.sqlite.SQLiteDatabase):Tj");
        }

        /* renamed from: if, reason: not valid java name */
        public final synchronized InterfaceC0681aG m2462if() {
            this.f3962do = false;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!this.f3962do) {
                return m2461do(writableDatabase);
            }
            close();
            return m2462if();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            m2461do(sQLiteDatabase);
            this.f3961do.getClass();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b A[ORIG_RETURN, RETURN] */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onCreate(android.database.sqlite.SQLiteDatabase r6) {
            /*
                r5 = this;
                Tj r6 = r5.m2461do(r6)
                bG$do r0 = r5.f3961do
                xA r0 = (defpackage.C3963xA) r0
                r0.getClass()
                java.lang.String r1 = "SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'"
                android.database.Cursor r1 = r6.m2280case(r1)
                boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L6c
                r3 = 0
                if (r2 == 0) goto L20
                int r2 = r1.getInt(r3)     // Catch: java.lang.Throwable -> L6c
                if (r2 != 0) goto L20
                r2 = 1
                goto L21
            L20:
                r2 = 0
            L21:
                r1.close()
                xA$do r1 = r0.f16523do
                r1.mo4734do(r6)
                if (r2 != 0) goto L4a
                xA$if r2 = r1.mo4735if(r6)
                boolean r4 = r2.f16526do
                if (r4 == 0) goto L34
                goto L4a
            L34:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "Pre-packaged database has an invalid schema: "
                r0.<init>(r1)
                java.lang.String r1 = r2.f16525do
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                throw r6
            L4a:
                r0.m8620for(r6)
                androidx.work.impl.WorkDatabase_Impl$do r1 = (androidx.work.impl.WorkDatabase_Impl.Cdo) r1
                int r6 = androidx.work.impl.WorkDatabase_Impl.f8149if
                androidx.work.impl.WorkDatabase_Impl r6 = androidx.work.impl.WorkDatabase_Impl.this
                java.util.List<wA$if> r0 = r6.f16284do
                if (r0 == 0) goto L6b
                int r0 = r0.size()
            L5b:
                if (r3 >= r0) goto L6b
                java.util.List<wA$if> r1 = r6.f16284do
                java.lang.Object r1 = r1.get(r3)
                wA$if r1 = (defpackage.AbstractC3904wA.Cif) r1
                r1.getClass()
                int r3 = r3 + 1
                goto L5b
            L6b:
                return
            L6c:
                r6 = move-exception
                r1.close()
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0541Uj.Cdo.onCreate(android.database.sqlite.SQLiteDatabase):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f3962do = true;
            ((C3963xA) this.f3961do).mo4821if(m2461do(sQLiteDatabase), i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0064  */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onOpen(android.database.sqlite.SQLiteDatabase r10) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0541Uj.Cdo.onOpen(android.database.sqlite.SQLiteDatabase):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f3962do = true;
            this.f3961do.mo4821if(m2461do(sQLiteDatabase), i, i2);
        }
    }

    public C0541Uj(Context context, String str, InterfaceC0741bG.Cdo cdo, boolean z) {
        this.f3956do = context;
        this.f3954break = str;
        this.f3957do = cdo;
        this.f3959do = z;
    }

    @Override // defpackage.InterfaceC0741bG, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m2459do().close();
    }

    /* renamed from: do, reason: not valid java name */
    public final Cdo m2459do() {
        Cdo cdo;
        synchronized (this.f3958do) {
            if (this.f3955do == null) {
                C0519Tj[] c0519TjArr = new C0519Tj[1];
                if (Build.VERSION.SDK_INT < 23 || this.f3954break == null || !this.f3959do) {
                    this.f3955do = new Cdo(this.f3956do, this.f3954break, c0519TjArr, this.f3957do);
                } else {
                    this.f3955do = new Cdo(this.f3956do, new File(this.f3956do.getNoBackupFilesDir(), this.f3954break).getAbsolutePath(), c0519TjArr, this.f3957do);
                }
                this.f3955do.setWriteAheadLoggingEnabled(this.f3960if);
            }
            cdo = this.f3955do;
        }
        return cdo;
    }

    @Override // defpackage.InterfaceC0741bG
    /* renamed from: else, reason: not valid java name */
    public final InterfaceC0681aG mo2460else() {
        return m2459do().m2462if();
    }

    @Override // defpackage.InterfaceC0741bG
    public final String getDatabaseName() {
        return this.f3954break;
    }

    @Override // defpackage.InterfaceC0741bG
    public final void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.f3958do) {
            Cdo cdo = this.f3955do;
            if (cdo != null) {
                cdo.setWriteAheadLoggingEnabled(z);
            }
            this.f3960if = z;
        }
    }
}
