package androidx.room.driver;

import androidx.room.driver.SupportSQLiteStatement;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import java.util.Locale;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final SupportSQLiteStatement prepare(String str) {
        str.getClass();
        FrameworkSQLiteDatabase frameworkSQLiteDatabase = this.db;
        frameworkSQLiteDatabase.getClass();
        String obj = StringsKt.trim(str).toString();
        if (obj.length() >= 3) {
            String upperCase = obj.substring(0, 3).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            int hashCode = upperCase.hashCode();
            if (hashCode == 79487 ? upperCase.equals("PRA") : !(hashCode == 81978 ? !upperCase.equals("SEL") : !(hashCode == 85954 && upperCase.equals("WIT")))) {
                SupportSQLiteStatement.SupportAndroidSQLiteStatement supportAndroidSQLiteStatement = new SupportSQLiteStatement.SupportAndroidSQLiteStatement(frameworkSQLiteDatabase, str);
                supportAndroidSQLiteStatement.bindingTypes = new int[0];
                supportAndroidSQLiteStatement.longBindings = new long[0];
                supportAndroidSQLiteStatement.doubleBindings = new double[0];
                supportAndroidSQLiteStatement.stringBindings = new String[0];
                supportAndroidSQLiteStatement.blobBindings = new byte[0][];
                return supportAndroidSQLiteStatement;
            }
        }
        return new SupportSQLiteStatement.SupportOtherAndroidSQLiteStatement(frameworkSQLiteDatabase, str);
    }
}
