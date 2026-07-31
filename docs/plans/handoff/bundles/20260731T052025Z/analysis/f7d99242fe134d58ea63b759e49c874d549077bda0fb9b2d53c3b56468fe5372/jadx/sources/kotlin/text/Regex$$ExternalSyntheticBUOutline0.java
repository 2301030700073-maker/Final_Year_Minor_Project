package kotlin.text;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.legacy.mailstore.FolderMapper;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.backend.api.BackendFolder$MoreMessages;
import com.fsck.k9.mailstore.K9BackendFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.google.android.material.textfield.TextInputLayout;
import com.squareup.moshi.JsonDataException;
import java.util.NoSuchElementException;
import kotlin.Unit;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Regex$$ExternalSyntheticBUOutline0 implements FolderMapper, LockableDatabase.DbCallback, TextInputLayout.LengthCounter {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Regex$$ExternalSyntheticBUOutline0(K9BackendFolder k9BackendFolder) {
        this.$r8$classId = 4;
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void m$1(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void m$2(Object obj, Object obj2, String str) {
        throw new JsonDataException(str + obj + ((Object) " at path ") + obj2);
    }

    public static /* synthetic */ void m$3(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT id FROM folders WHERE push_enabled = 1 LIMIT 1", null, null);
                try {
                    Boolean valueOf = Boolean.valueOf(rawQuery.getCount() > 0);
                    rawQuery.close();
                    return valueOf;
                } finally {
                }
            case 9:
                sQLiteDatabase.execSQL("VACUUM");
                return unit;
            case 10:
                Cursor query = sQLiteDatabase.query("folders", new String[]{"id", "name"}, "name LIKE ? OR name LIKE ?", new String[]{"%[Gmail]/%", "%[Google Mail]/%"}, null, null, null);
                query.getClass();
                while (query.moveToNext()) {
                    long j = query.getLong(query.getColumnIndexOrThrow("id"));
                    String string = query.getString(query.getColumnIndexOrThrow("name"));
                    string.getClass();
                    String replace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(string, "[Gmail]/", ""), "[Google Mail]/", "");
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("name", replace$default);
                    sQLiteDatabase.update("folders", contentValues, "id = ?", new String[]{String.valueOf(j)});
                }
                query.close();
                return unit;
            case 11:
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("push_enabled", Boolean.FALSE);
                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues2, null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                sQLiteDatabase.execSQL("UPDATE messages SET new_message = 0");
                return unit;
            default:
                sQLiteDatabase.delete("notifications", null, null);
                return unit;
        }
    }

    @Override // app.k9mail.legacy.mailstore.FolderMapper
    public Object map(ConnectionPool connectionPool) {
        switch (this.$r8$classId) {
            case 1:
                Cursor cursor = (Cursor) connectionPool.delegate;
                if (cursor.isNull(13)) {
                    return null;
                }
                return Long.valueOf(cursor.getLong(13));
            case 2:
                if (((Cursor) connectionPool.delegate).getInt(6) == 1) {
                    return Long.valueOf(connectionPool.getId());
                }
                return null;
            case 3:
            default:
                return connectionPool.serverIdOrThrow();
            case 4:
                int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(ViewSizeResolver.CC._fromDatabaseName(((Cursor) connectionPool.delegate).getString(12)));
                if (ordinal == 0) {
                    return BackendFolder$MoreMessages.UNKNOWN;
                }
                if (ordinal == 1) {
                    return BackendFolder$MoreMessages.FALSE;
                }
                if (ordinal == 2) {
                    return BackendFolder$MoreMessages.TRUE;
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            case 5:
                return new K9BackendFolder.Init(((Cursor) connectionPool.delegate).getInt(11), connectionPool.getId(), connectionPool.getName());
        }
    }

    public /* synthetic */ Regex$$ExternalSyntheticBUOutline0(int i) {
        this.$r8$classId = i;
    }

    public static /* synthetic */ void m$1(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m990m() {
        throw new NoSuchElementException();
    }

    public static /* synthetic */ void m$1(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    public static /* synthetic */ void m(int i, StringBuilder sb) {
        sb.append(i);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static /* synthetic */ void m$2(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void m(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new RuntimeException(str + obj);
    }

    public static /* synthetic */ void m(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void m(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void m(String str, Object obj, Throwable th) {
        throw new RuntimeException(str + obj, th);
    }
}
