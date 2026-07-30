package com.android.launcher3.model;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.provider.LauncherDbUtils$SQLiteTransaction;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DbDowngradeHelper {
    public final SparseArray mStatements = new SparseArray();
    public final int version;

    public DbDowngradeHelper(int i) {
        this.version = i;
    }

    public static DbDowngradeHelper parse(File file) {
        JSONObject jSONObject = new JSONObject(new String(W.toByteArray(file)));
        DbDowngradeHelper dbDowngradeHelper = new DbDowngradeHelper(jSONObject.getInt("version"));
        for (int i = dbDowngradeHelper.version - 1; i > 0; i--) {
            if (jSONObject.has("downgrade_to_" + i)) {
                JSONArray jSONArray = jSONObject.getJSONArray("downgrade_to_" + i);
                int length = jSONArray.length();
                String[] strArr = new String[length];
                for (int i2 = 0; i2 < length; i2++) {
                    strArr[i2] = jSONArray.getString(i2);
                }
                dbDowngradeHelper.mStatements.put(i, strArr);
            }
        }
        return dbDowngradeHelper;
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            i--;
            if (i < i2) {
                LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(sQLiteDatabase);
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        sQLiteDatabase.execSQL((String) it.next());
                    }
                    launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                    launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                    return;
                } catch (Throwable th) {
                    try {
                        launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            String[] strArr = (String[]) this.mStatements.get(i);
            if (strArr == null) {
                throw new SQLiteException(a.c("Downgrade path not supported to version ", i));
            }
            Collections.addAll(arrayList, strArr);
        }
    }
}
