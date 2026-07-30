package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public abstract class zzck extends SQLiteOpenHelper {
    public zzck(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(context, str, null, 1, zzcm.zza);
    }

    private zzck(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, zzcm zzcmVar) {
        super(context, (str == null || zzcf.zza().zza(str, zzcmVar, zzcj.SQLITE_OPEN_HELPER_TYPE).equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) ? null : str, (SQLiteDatabase.CursorFactory) null, 1);
    }
}
