package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.internal.measurement.zzcf;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class IP {
    /* renamed from: do, reason: not valid java name */
    public static HashSet m931do(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m932for(C3156jS c3156jS, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        boolean z;
        C3274lS c3274lS = c3156jS.f13722new;
        Cursor cursor = null;
        try {
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{FacebookRequestErrorClassification.KEY_NAME}, "name=?", new String[]{str}, null, null, null);
                z = cursor.moveToFirst();
                cursor.close();
            } catch (SQLiteException e) {
                c3274lS.m7367do(str, "Error querying for table", e);
                if (cursor != null) {
                    cursor.close();
                }
                z = false;
            }
            if (!z) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                HashSet m931do = m931do(sQLiteDatabase, str);
                for (String str4 : str3.split(",")) {
                    if (!m931do.remove(str4)) {
                        throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                    }
                }
                if (strArr != null) {
                    for (int i = 0; i < strArr.length; i += 2) {
                        if (!m931do.remove(strArr[i])) {
                            sQLiteDatabase.execSQL(strArr[i + 1]);
                        }
                    }
                }
                if (m931do.isEmpty()) {
                    return;
                }
                c3274lS.m7367do(str, "Table has extra columns. table, columns", TextUtils.join(", ", m931do));
            } catch (SQLiteException e2) {
                c3156jS.f13717do.m7368for("Failed to verify columns on table that was just created", str);
                throw e2;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m933if(C3156jS c3156jS, SQLiteDatabase sQLiteDatabase) {
        File file = new File(zzcf.zza().zza(sQLiteDatabase.getPath()));
        boolean readable = file.setReadable(false, false);
        C3274lS c3274lS = c3156jS.f13722new;
        if (!readable) {
            c3274lS.m7369if("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            c3274lS.m7369if("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            c3274lS.m7369if("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        c3274lS.m7369if("Failed to turn on database write permission for owner");
    }
}
