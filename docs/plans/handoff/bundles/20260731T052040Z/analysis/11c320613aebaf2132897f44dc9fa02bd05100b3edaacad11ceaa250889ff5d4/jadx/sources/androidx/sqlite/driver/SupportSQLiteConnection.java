package androidx.sqlite.driver;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SupportSQLiteConnection implements SQLiteConnection {
    public final FrameworkSQLiteDatabase db;

    public SupportSQLiteConnection(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        frameworkSQLiteDatabase.getClass();
        this.db = frameworkSQLiteDatabase;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.db.close();
    }

    @Override // androidx.sqlite.SQLiteConnection
    public final boolean inTransaction() {
        return this.db.inTransaction();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00bd, code lost:
    
        if (r2.equals("END") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00c9, code lost:
    
        r3 = androidx.sqlite.driver.SupportSQLiteStatement$Companion$TransactionOperation.END;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00c6, code lost:
    
        if (r2.equals("COM") == false) goto L51;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.sqlite.SQLiteConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.sqlite.SQLiteStatement prepare(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.driver.SupportSQLiteConnection.prepare(java.lang.String):androidx.sqlite.SQLiteStatement");
    }
}
