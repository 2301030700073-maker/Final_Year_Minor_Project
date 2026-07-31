package com.fsck.k9.mailstore;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.enums.EnumEntriesList;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OutboxStateRepository$$ExternalSyntheticLambda0 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;

    public /* synthetic */ OutboxStateRepository$$ExternalSyntheticLambda0(int i, long j) {
        this.$r8$classId = i;
        this.f$0 = j;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Object obj;
        SendState sendState;
        Cursor rawQuery;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.f$0;
        switch (i) {
            case 0:
                ContentValues contentValues = new ContentValues();
                contentValues.put("message_id", Long.valueOf(j));
                contentValues.put("send_state", "ready");
                return Long.valueOf(sQLiteDatabase.insert("outbox_state", null, contentValues));
            case 1:
                sQLiteDatabase.execSQL("UPDATE outbox_state SET number_of_send_attempts = number_of_send_attempts + 1 WHERE message_id = ?", new String[]{String.valueOf(j)});
                return unit;
            case 2:
                sQLiteDatabase.execSQL("UPDATE outbox_state SET number_of_send_attempts = number_of_send_attempts - 1 WHERE message_id = ?", new String[]{String.valueOf(j)});
                return unit;
            case 3:
                query = sQLiteDatabase.query("outbox_state", LocalStore.AnonymousClass1.COLUMNS, "message_id = ?", new String[]{String.valueOf(j)}, null, null, null);
                try {
                    if (!query.moveToFirst()) {
                        throw new IllegalStateException("No outbox_state entry for message with id " + j);
                    }
                    String stringOrThrow = Util.getStringOrThrow(query, "send_state");
                    Integer intOrNull = Util.getIntOrNull(query, "number_of_send_attempts");
                    if (intOrNull == null) {
                        throw new IllegalStateException("Column number_of_send_attempts must not be null");
                    }
                    int intValue = intOrNull.intValue();
                    long longOrThrow = Util.getLongOrThrow(query, "error_timestamp");
                    String stringOrNull = Util.getStringOrNull(query, "error");
                    SendState.Companion.getClass();
                    EnumEntriesList enumEntriesList = SendState.$ENTRIES;
                    enumEntriesList.getClass();
                    UIntArray.Iterator iterator = new UIntArray.Iterator(6, enumEntriesList);
                    while (true) {
                        if (iterator.hasNext()) {
                            obj = iterator.next();
                            if (((SendState) obj).databaseName.equals(stringOrThrow)) {
                            }
                        } else {
                            obj = null;
                        }
                    }
                    SendState sendState2 = (SendState) obj;
                    if (sendState2 != null) {
                        sendState = sendState2;
                    } else {
                        UriKt$$ExternalSyntheticBUOutline0.m("Unknown value: ".concat(stringOrThrow));
                        sendState = null;
                    }
                    OutboxState outboxState = new OutboxState(sendState, intValue, stringOrNull, longOrThrow);
                    query.close();
                    return outboxState;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            case 4:
                return Integer.valueOf(sQLiteDatabase.delete("outbox_state", "message_id = ?", new String[]{String.valueOf(j)}));
            case 5:
                rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(id) FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ?", new String[]{String.valueOf(j)});
                try {
                    Integer valueOf = Integer.valueOf(rawQuery.moveToFirst() ? rawQuery.getInt(0) : 0);
                    rawQuery.close();
                    return valueOf;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            case 6:
                rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(id) FROM messages WHERE empty = 0 AND deleted = 0 AND read = 0 AND folder_id = ?", new String[]{String.valueOf(j)});
                try {
                    Integer valueOf2 = Integer.valueOf(rawQuery.moveToFirst() ? rawQuery.getInt(0) : 0);
                    rawQuery.close();
                    return valueOf2;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } finally {
                    }
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                query = sQLiteDatabase.query("folders", new String[]{"server_id"}, "id = ?", new String[]{String.valueOf(j)}, null, null, null);
                try {
                    r10 = query.moveToFirst() ? query.getString(0) : null;
                    query.close();
                    return r10;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                rawQuery = sQLiteDatabase.rawQuery("SELECT MIN(date) FROM messages WHERE folder_id = ?", new String[]{String.valueOf(j)});
                try {
                    if (rawQuery.moveToFirst()) {
                        long j2 = rawQuery.getLong(0);
                        if (j2 != 0) {
                            r10 = new Date(j2);
                        }
                    }
                    rawQuery.close();
                    return r10;
                } finally {
                    try {
                        throw th2;
                    } finally {
                    }
                }
            case 9:
                rawQuery = sQLiteDatabase.rawQuery("SELECT uid, date FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ? AND uid NOT LIKE 'K9LOCAL:%'", new String[]{String.valueOf(j)});
                try {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    while (rawQuery.moveToNext()) {
                        linkedHashMap.put(rawQuery.getString(0), rawQuery.isNull(1) ? null : Long.valueOf(rawQuery.getLong(1)));
                    }
                    rawQuery.close();
                    return linkedHashMap;
                } finally {
                    try {
                        throw th2;
                    } finally {
                    }
                }
            case 10:
                rawQuery = sQLiteDatabase.rawQuery("SELECT uid FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ? AND uid NOT LIKE 'K9LOCAL:%'", new String[]{String.valueOf(j)});
                try {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    while (rawQuery.moveToNext()) {
                        String string = rawQuery.getString(0);
                        string.getClass();
                        linkedHashSet.add(string);
                    }
                    rawQuery.close();
                    return linkedHashSet;
                } finally {
                }
            default:
                query = sQLiteDatabase.query("messages", new String[]{"uid"}, "id = ?", new String[]{String.valueOf(j)}, null, null, null);
                try {
                    r10 = query.moveToFirst() ? query.getString(0) : null;
                    query.close();
                    return r10;
                } finally {
                }
        }
    }
}
