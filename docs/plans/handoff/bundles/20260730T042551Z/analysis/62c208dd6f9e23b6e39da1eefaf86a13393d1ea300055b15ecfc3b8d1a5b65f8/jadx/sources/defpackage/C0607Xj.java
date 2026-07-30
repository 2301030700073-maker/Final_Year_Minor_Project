package defpackage;

import android.database.sqlite.SQLiteStatement;

/* renamed from: Xj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0607Xj extends C0585Wj {

    /* renamed from: do, reason: not valid java name */
    public final SQLiteStatement f4595do;

    public C0607Xj(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f4595do = sQLiteStatement;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m2868goto() {
        return this.f4595do.executeUpdateDelete();
    }
}
