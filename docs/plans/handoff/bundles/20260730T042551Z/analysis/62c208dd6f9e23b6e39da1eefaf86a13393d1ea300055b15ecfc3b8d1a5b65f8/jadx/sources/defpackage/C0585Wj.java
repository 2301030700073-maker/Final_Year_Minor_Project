package defpackage;

import android.database.sqlite.SQLiteProgram;
import java.io.Closeable;

/* renamed from: Wj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0585Wj implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public final SQLiteProgram f4397do;

    public C0585Wj(SQLiteProgram sQLiteProgram) {
        this.f4397do = sQLiteProgram;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m2760case(int i, String str) {
        this.f4397do.bindString(i, str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4397do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2761do(int i, byte[] bArr) {
        this.f4397do.bindBlob(i, bArr);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2762for(int i, long j) {
        this.f4397do.bindLong(i, j);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2763if(int i, double d) {
        this.f4397do.bindDouble(i, d);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m2764new(int i) {
        this.f4397do.bindNull(i);
    }
}
