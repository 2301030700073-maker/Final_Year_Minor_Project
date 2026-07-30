package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;
import com.facebook.appevents.AppEventsConstants;

/* renamed from: bS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0753bS extends AbstractC3863vS {

    /* renamed from: do, reason: not valid java name */
    public final C2694eS f8395do;

    /* renamed from: if, reason: not valid java name */
    public boolean f8396if;

    public C0753bS(TS ts) {
        super(ts);
        this.f8395do = new C2694eS(this, mo2255for());
    }

    /* renamed from: return, reason: not valid java name */
    public static long m4836return(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            if (!cursor.moveToFirst()) {
                cursor.close();
                return -1L;
            }
            long j = cursor.getLong(0);
            cursor.close();
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final SQLiteDatabase m4837default() {
        if (this.f8396if) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f8395do.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f8396if = true;
        return null;
    }

    @Override // defpackage.AbstractC3863vS
    /* renamed from: public */
    public final boolean mo1327public() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c A[Catch: all -> 0x004b, SQLiteException -> 0x004d, SQLiteFullException -> 0x004f, SQLiteDatabaseLockedException -> 0x00ae, TRY_ENTER, TryCatch #7 {SQLiteDatabaseLockedException -> 0x00ae, SQLiteFullException -> 0x004f, SQLiteException -> 0x004d, all -> 0x004b, blocks: (B:75:0x0040, B:77:0x0046, B:17:0x005c, B:19:0x007e, B:20:0x0096), top: B:74:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00a1  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* renamed from: static, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4838static(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0753bS.m4838static(int, byte[]):boolean");
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m4839switch() {
        int delete;
        mo1960catch();
        try {
            SQLiteDatabase m4837default = m4837default();
            if (m4837default == null || (delete = m4837default.delete("messages", null, null) + 0) <= 0) {
                return;
            }
            mo2249case().f13723this.m7368for("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7368for("Error resetting local analytics data. error", e);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m4840throws() {
        mo1960catch();
        if (this.f8396if || !mo2255for().getDatabasePath("google_app_measurement_local.db").exists()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                SQLiteDatabase m4837default = m4837default();
                if (m4837default == null) {
                    this.f8396if = true;
                    if (m4837default != null) {
                        m4837default.close();
                    }
                    return false;
                }
                m4837default.beginTransaction();
                m4837default.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                m4837default.setTransactionSuccessful();
                m4837default.endTransaction();
                m4837default.close();
                return true;
            } catch (SQLiteDatabaseLockedException unused) {
                SystemClock.sleep(i);
                i += 20;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteFullException e) {
                mo2249case().f13717do.m7368for("Error deleting app launch break from local database", e);
                this.f8396if = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e2) {
                if (0 != 0) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                mo2249case().f13717do.m7368for("Error deleting app launch break from local database", e2);
                this.f8396if = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        mo2249case().f13722new.m7369if("Error deleting app launch break from local database in reasonable time");
        return false;
    }
}
