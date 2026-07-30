package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.internal.measurement.zzck;

/* renamed from: eS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2694eS extends zzck {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0753bS f12676do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2694eS(C0753bS c0753bS, Context context) {
        super(context, "google_app_measurement_local.db", null, 1);
        this.f12676do = c0753bS;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException unused) {
            C0753bS c0753bS = this.f12676do;
            c0753bS.mo2249case().f13717do.m7369if("Opening the local database failed, dropping and recreating it");
            if (!c0753bS.mo2255for().getDatabasePath("google_app_measurement_local.db").delete()) {
                c0753bS.mo2249case().f13717do.m7368for("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e2) {
                c0753bS.mo2249case().f13717do.m7368for("Failed to open local database. Events will bypass local storage", e2);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        IP.m933if(this.f12676do.mo2249case(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        IP.m932for(this.f12676do.mo2249case(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
