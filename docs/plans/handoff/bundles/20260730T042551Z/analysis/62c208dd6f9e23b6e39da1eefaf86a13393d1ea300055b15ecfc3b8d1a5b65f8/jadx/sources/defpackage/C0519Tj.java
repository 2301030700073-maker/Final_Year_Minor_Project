package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;

/* renamed from: Tj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0519Tj implements InterfaceC0681aG {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f3740do = new String[0];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SQLiteDatabase f3741do;

    /* renamed from: Tj$do, reason: invalid class name */
    public class Cdo implements SQLiteDatabase.CursorFactory {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0800cG f3742do;

        public Cdo(InterfaceC0800cG interfaceC0800cG) {
            this.f3742do = interfaceC0800cG;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f3742do.mo4895if(new C0585Wj(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public C0519Tj(SQLiteDatabase sQLiteDatabase) {
        this.f3741do = sQLiteDatabase;
    }

    /* renamed from: case, reason: not valid java name */
    public final Cursor m2280case(String str) {
        return m2285new(new C2739fE(str, null));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f3741do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2281do() {
        this.f3741do.beginTransaction();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2282for(String str) {
        this.f3741do.execSQL(str);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m2283goto() {
        this.f3741do.setTransactionSuccessful();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2284if() {
        this.f3741do.endTransaction();
    }

    /* renamed from: new, reason: not valid java name */
    public final Cursor m2285new(InterfaceC0800cG interfaceC0800cG) {
        return this.f3741do.rawQueryWithFactory(new Cdo(interfaceC0800cG), interfaceC0800cG.mo4894do(), f3740do, null);
    }
}
