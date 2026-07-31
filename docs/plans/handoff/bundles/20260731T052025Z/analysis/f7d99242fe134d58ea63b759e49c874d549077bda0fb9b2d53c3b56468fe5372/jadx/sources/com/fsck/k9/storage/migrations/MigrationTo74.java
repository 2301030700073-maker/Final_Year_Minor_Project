package com.fsck.k9.storage.migrations;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.OffsetKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.preferences.migration.StorageMigrationTo22Kt;
import com.jcraft.jzlib.Adler32;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonAdapter.AnonymousClass1;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.moshi.internal.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MigrationTo74 {
    public final SQLiteDatabase db;

    public MigrationTo74(SQLiteDatabase sQLiteDatabase, LocalStore.AnonymousClass3 anonymousClass3, int i) {
        sQLiteDatabase.getClass();
        switch (i) {
            case OffsetKt.Horizontal /* 15 */:
                this.db = sQLiteDatabase;
                break;
            case 16:
                this.db = sQLiteDatabase;
                break;
            default:
                this.db = sQLiteDatabase;
                break;
        }
    }

    public static LinkedHashMap createFixedServerSettings(Map map) {
        Object obj = map.get("username");
        String str = obj instanceof String ? (String) obj : null;
        Object obj2 = map.get("password");
        String str2 = obj2 instanceof String ? (String) obj2 : null;
        String replace = str != null ? StorageMigrationTo22Kt.LINE_BREAK.replace(str, "") : null;
        String replace2 = str2 != null ? StorageMigrationTo22Kt.LINE_BREAK.replace(str2, "") : null;
        if (Intrinsics.areEqual(str, replace) && Intrinsics.areEqual(str2, replace2)) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("username", replace);
        linkedHashMap.put("password", replace2);
        Object obj3 = map.get("port");
        Double d = obj3 instanceof Double ? (Double) obj3 : null;
        linkedHashMap.put("port", d != null ? Integer.valueOf((int) d.doubleValue()) : null);
        return linkedHashMap;
    }

    public void addAvatarMonogram() {
        String str;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str2 : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            String m = Sink$CC.m(sQLiteDatabase, str2, ".avatarType");
            if (m == null) {
                m = "";
            }
            String m2 = Sink$CC.m(sQLiteDatabase, str2, ".avatarMonogram");
            if (m2 == null) {
                m2 = "";
            }
            if (m.equals("MONOGRAM") && m2.length() == 0) {
                String m3 = Sink$CC.m(sQLiteDatabase, str2, ".name.0");
                if (m3 == null) {
                    m3 = "";
                }
                String m4 = Sink$CC.m(sQLiteDatabase, str2, ".email.0");
                if (m4 == null) {
                    m4 = "";
                }
                if (m3.length() > 0) {
                    str = StringsKt.take(StringsKt__StringsJVMKt.replace$default(m3, " ", ""), 2).toUpperCase(Locale.ROOT);
                    str.getClass();
                } else if (m4.length() > 0) {
                    str = StringsKt.take(StringsKt__StringsJVMKt.replace$default(m4, " ", ""), 2).toUpperCase(Locale.ROOT);
                    str.getClass();
                } else {
                    str = "XX";
                }
                Adler32.insertValue(sQLiteDatabase, str2 + ".avatarMonogram", str);
            }
        }
    }

    public boolean columnExists(String str) {
        Cursor rawQuery = this.db.rawQuery("PRAGMA table_info(" + str + ")", null);
        rawQuery.getClass();
        do {
            try {
                if (!rawQuery.moveToNext()) {
                    rawQuery.close();
                    return false;
                }
            } finally {
            }
        } while (!Intrinsics.areEqual(rawQuery.getString(rawQuery.getColumnIndexOrThrow("name")), "account_id"));
        rawQuery.close();
        return true;
    }

    public void convertToAuthTypeNone() {
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            String m = Sink$CC.m(sQLiteDatabase, str, ".outgoingServerSettings");
            if (m != null) {
                LinkedHashMap linkedHashMap = null;
                JsonAdapter.AnonymousClass1 anonymousClass1 = new Moshi(new Headers.Builder(8)).adapter(Types.newParameterizedType(String.class, Object.class), Util.NO_ANNOTATIONS, null).new AnonymousClass1();
                Map map = (Map) anonymousClass1.fromJson(m);
                if (map != null) {
                    Object obj = map.get("username");
                    String str2 = obj instanceof String ? (String) obj : null;
                    if (str2 == null || str2.length() == 0) {
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
                        Object obj2 = linkedHashMap2.get("port");
                        Double d = obj2 instanceof Double ? (Double) obj2 : null;
                        linkedHashMap2.put("port", d != null ? Integer.valueOf((int) d.doubleValue()) : null);
                        linkedHashMap2.put("authenticationType", "NONE");
                        linkedHashMap2.put("username", "");
                        linkedHashMap2.put("password", null);
                        linkedHashMap = linkedHashMap2;
                    }
                    if (linkedHashMap != null) {
                        Adler32.writeValue(sQLiteDatabase, str + ".outgoingServerSettings", anonymousClass1.toJson(linkedHashMap));
                    }
                }
            }
        }
    }

    public long createFolder(String str, String str2, String str3) {
        Log.v(CameraDevices$CC.m(Config.CC.m("  Creating new local folder (name=", str, ", serverId=", str2, ", type="), str3, ")…"), new Object[0]);
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", str);
        contentValues.put("visible_limit", (Integer) 25);
        contentValues.put("integrate", (Integer) 0);
        contentValues.put("top_group", (Integer) 0);
        contentValues.put("poll_class", "NO_CLASS");
        contentValues.put("push_class", "SECOND_CLASS");
        contentValues.put("display_class", "NO_CLASS");
        contentValues.put("server_id", str2);
        contentValues.put("local_only", (Integer) 1);
        contentValues.put("type", str3);
        long insert = this.db.insert("folders", null, contentValues);
        Log.v(CameraDevices$CC.m(insert, "    Created folder with ID "), new Object[0]);
        return insert;
    }

    public void deleteMessageRow(long j) {
        String[] strArr = {String.valueOf(j)};
        SQLiteDatabase sQLiteDatabase = this.db;
        sQLiteDatabase.delete("messages", "id = ?", strArr);
        sQLiteDatabase.delete("threads", "message_id = ?", new String[]{String.valueOf(j)});
    }

    public void destroyMessage(long j) {
        if (!hasThreadChildren(j)) {
            long emptyThreadParent = getEmptyThreadParent(j);
            deleteMessageRow(j);
            while (emptyThreadParent != -1 && !hasThreadChildren(emptyThreadParent)) {
                long emptyThreadParent2 = getEmptyThreadParent(emptyThreadParent);
                deleteMessageRow(emptyThreadParent);
                emptyThreadParent = emptyThreadParent2;
            }
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("deleted", (Integer) 0);
        contentValues.put("empty", (Integer) 1);
        contentValues.put("preview_type", "none");
        contentValues.put("read", (Integer) 0);
        contentValues.put("flagged", (Integer) 0);
        contentValues.put("answered", (Integer) 0);
        contentValues.put("forwarded", (Integer) 0);
        contentValues.putNull("subject");
        contentValues.putNull("sender_list");
        contentValues.putNull("date");
        contentValues.putNull("to_list");
        contentValues.putNull("cc_list");
        contentValues.putNull("bcc_list");
        contentValues.putNull("preview");
        contentValues.putNull("reply_to_list");
        contentValues.putNull("message_part_id");
        contentValues.putNull("flags");
        contentValues.putNull("attachment_count");
        contentValues.putNull("internal_date");
        contentValues.putNull("mime_type");
        contentValues.putNull("encryption_type");
        this.db.update("messages", contentValues, "id = ?", new String[]{String.valueOf(j)});
    }

    public void ensureAvatarSet() {
        String str;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str2 : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            String m = Sink$CC.m(sQLiteDatabase, str2, ".avatarType");
            if (m == null) {
                m = "";
            }
            String m2 = Sink$CC.m(sQLiteDatabase, str2, ".avatarMonogram");
            if (m2 == null) {
                m2 = "";
            }
            if (m.length() == 0) {
                Adler32.insertValue(sQLiteDatabase, str2 + ".avatarType", "MONOGRAM");
                m = "MONOGRAM";
            }
            if (m.equals("MONOGRAM") && m2.length() == 0) {
                String m3 = Sink$CC.m(sQLiteDatabase, str2, ".name.0");
                if (m3 == null) {
                    m3 = "";
                }
                String m4 = Sink$CC.m(sQLiteDatabase, str2, ".email.0");
                if (m4 == null) {
                    m4 = "";
                }
                if (m3.length() > 0) {
                    str = StringsKt.take(StringsKt__StringsJVMKt.replace$default(m3, " ", ""), 2).toUpperCase(Locale.ROOT);
                    str.getClass();
                } else if (m4.length() > 0) {
                    str = StringsKt.take(StringsKt__StringsJVMKt.replace$default(m4, " ", ""), 2).toUpperCase(Locale.ROOT);
                    str.getClass();
                } else {
                    str = "XX";
                }
                Adler32.insertValue(sQLiteDatabase, str2 + ".avatarMonogram", str);
            }
        }
    }

    public void fixIdentities() {
        String str;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str2 : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            int i = 0;
            while (true) {
                String readValue2 = Adler32.readValue(sQLiteDatabase, str2 + ".email." + i);
                if (readValue2 == null) {
                    break;
                }
                String readValue3 = Adler32.readValue(sQLiteDatabase, str2 + ".description." + i);
                String readValue4 = Adler32.readValue(sQLiteDatabase, str2 + ".name." + i);
                String readValue5 = Adler32.readValue(sQLiteDatabase, str2 + ".replyTo." + i);
                String str3 = null;
                if (readValue3 == null || StringsKt.isBlank(readValue3)) {
                    readValue3 = null;
                }
                if (readValue4 == null || StringsKt.isBlank(readValue4)) {
                    readValue4 = null;
                }
                Pattern pattern = Address.ATOM;
                Address address = (Address) ArraysKt___ArraysKt.firstOrNull(K9MailLib.m931parse(readValue2));
                if (address == null || (str = address.address) == null) {
                    str = "please.fix@invalid";
                }
                Address address2 = (Address) ArraysKt___ArraysKt.firstOrNull(K9MailLib.m931parse(readValue5));
                if (address2 != null) {
                    str3 = address2.address;
                }
                Adler32.writeValue(sQLiteDatabase, str2 + ".description." + i, readValue3);
                Adler32.writeValue(sQLiteDatabase, str2 + ".name." + i, readValue4);
                Adler32.writeValue(sQLiteDatabase, str2 + ".email." + i, str);
                Adler32.writeValue(sQLiteDatabase, str2 + ".replyTo." + i, str3);
                i++;
            }
        }
    }

    public void fixServerSettings() {
        String m;
        LinkedHashMap createFixedServerSettings;
        LinkedHashMap createFixedServerSettings2;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            String m2 = Sink$CC.m(sQLiteDatabase, str, ".incomingServerSettings");
            if (m2 != null && (m = Sink$CC.m(sQLiteDatabase, str, ".outgoingServerSettings")) != null) {
                JsonAdapter.AnonymousClass1 anonymousClass1 = new Moshi(new Headers.Builder(8)).adapter(Types.newParameterizedType(String.class, Object.class), Util.NO_ANNOTATIONS, null).new AnonymousClass1();
                Map map = (Map) anonymousClass1.fromJson(m2);
                if (map != null && (createFixedServerSettings2 = createFixedServerSettings(map)) != null) {
                    Adler32.writeValue(sQLiteDatabase, str + ".incomingServerSettings", anonymousClass1.toJson(createFixedServerSettings2));
                }
                Map map2 = (Map) anonymousClass1.fromJson(m);
                if (map2 != null && (createFixedServerSettings = createFixedServerSettings(map2)) != null) {
                    Adler32.writeValue(sQLiteDatabase, str + ".outgoingServerSettings", anonymousClass1.toJson(createFixedServerSettings));
                }
            }
        }
    }

    public long getEmptyThreadParent(long j) {
        Cursor rawQuery = this.db.rawQuery("SELECT m.id FROM threads t1 JOIN threads t2 ON (t1.parent = t2.id) LEFT JOIN messages m ON (t2.message_id = m.id) WHERE t1.message_id = ? AND m.empty = 1", new String[]{String.valueOf(j)});
        try {
            long j2 = (!rawQuery.moveToFirst() || rawQuery.isNull(0)) ? -1L : rawQuery.getLong(0);
            CloseableKt.closeFinally(rawQuery, null);
            return j2;
        } finally {
        }
    }

    public Long getFolderId(String str) {
        if (str == null) {
            return null;
        }
        Cursor query = this.db.query("folders", new String[]{"id"}, "server_id = ?", new String[]{str}, null, null, null);
        try {
            Long valueOf = (!query.moveToFirst() || query.isNull(0)) ? null : Long.valueOf(query.getLong(0));
            CloseableKt.closeFinally(query, null);
            return valueOf;
        } finally {
        }
    }

    public boolean hasThreadChildren(long j) {
        Cursor rawQuery = this.db.rawQuery("SELECT COUNT(t2.id) FROM threads t1 JOIN threads t2 ON (t2.parent = t1.id) WHERE t1.message_id = ?", new String[]{String.valueOf(j)});
        try {
            boolean z = false;
            if (rawQuery.moveToFirst() && !rawQuery.isNull(0)) {
                if (rawQuery.getLong(0) > 0) {
                    z = true;
                }
            }
            CloseableKt.closeFinally(rawQuery, null);
            return z;
        } finally {
        }
    }

    public void markGmailAccounts() {
        String m;
        Map map;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            String m2 = Sink$CC.m(sQLiteDatabase, str, ".incomingServerSettings");
            if (m2 != null && (m = Sink$CC.m(sQLiteDatabase, str, ".outgoingServerSettings")) != null) {
                JsonAdapter adapter = new Moshi(new Headers.Builder(8)).adapter(Types.newParameterizedType(String.class, Object.class), Util.NO_ANNOTATIONS, null);
                Map map2 = (Map) adapter.fromJson(m2);
                if (map2 != null && (map = (Map) adapter.fromJson(m)) != null && ((Intrinsics.areEqual(map2.get("type"), "imap") && CollectionsKt.contains(ArraysKt___ArraysKt.toSet(new String[]{"imap.gmail.com", "imap.googlemail.com"}), map2.get("host")) && !Intrinsics.areEqual(map2.get("authenticationType"), "XOAUTH2")) || (CollectionsKt.contains(ArraysKt___ArraysKt.toSet(new String[]{"smtp.gmail.com", "smtp.googlemail.com"}), map.get("host")) && !Intrinsics.areEqual(map.get("authenticationType"), "XOAUTH2")))) {
                    Adler32.insertValue(sQLiteDatabase, str + ".migrateToOAuth", "true");
                }
            }
        }
    }

    public void moveMessages(long j, String str) {
        String[] strArr = {str, String.valueOf(j)};
        SQLiteDatabase sQLiteDatabase = this.db;
        Cursor query = sQLiteDatabase.query("folders", new String[]{"id"}, "local_only = 1 AND type = ? AND id != ?", strArr, null, null, null);
        try {
            query.getClass();
            int count = query.getCount();
            ArrayList arrayList = new ArrayList(count);
            for (int i = 0; i < count; i++) {
                query.moveToPosition(i);
                arrayList.add(Long.valueOf(query.getLong(0)));
            }
            query.close();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                long longValue = ((Number) it.next()).longValue();
                Log.v("  Moving messages from folder [" + longValue + "] to folder [" + j + "]…", new Object[0]);
                ContentValues contentValues = new ContentValues();
                contentValues.put("folder_id", Long.valueOf(j));
                Log.v(CameraDevices$CC.m(sQLiteDatabase.update("messages", contentValues, "folder_id = ?", new String[]{String.valueOf(longValue)}), "    ", " messages moved."), new Object[0]);
                Log.v("  Deleting folder [" + longValue + "]", new Object[0]);
                sQLiteDatabase.delete("folders", "id = ?", new String[]{String.valueOf(longValue)});
            }
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0021 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeLegacyAuthenticationModes() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.storage.migrations.MigrationTo74.removeLegacyAuthenticationModes():void");
    }

    public void renameSendClientId() {
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            Adler32.insertValue(sQLiteDatabase, str + ".sendClientInfo", Sink$CC.m(sQLiteDatabase, str, ".sendClientId"));
            Adler32.writeValue(sQLiteDatabase, str + ".sendClientId", null);
        }
    }

    public void rewriteFolderValue(String str) {
        SQLiteDatabase sQLiteDatabase = this.db;
        if (Intrinsics.areEqual(Adler32.readValue(sQLiteDatabase, str), "-NONE-")) {
            Adler32.writeValue(sQLiteDatabase, str, null);
        }
    }

    public void rewriteIdleRefreshInterval() {
        Integer intOrNull;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            String m = Sink$CC.m(sQLiteDatabase, str, ".idleRefreshMinutes");
            int intValue = (m == null || (intOrNull = StringsKt__StringsJVMKt.toIntOrNull(m)) == null) ? 24 : intOrNull.intValue();
            int i = intValue >= 2 ? intValue : 2;
            if (i != intValue) {
                Adler32.writeValue(sQLiteDatabase, ViewSizeResolver.CC.m(str, ".idleRefreshMinutes"), String.valueOf(i));
            }
        }
    }

    public void rewriteImapCompressionSettings() {
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            boolean parseBoolean = Boolean.parseBoolean(Adler32.readValue(sQLiteDatabase, str + ".useCompression.WIFI"));
            boolean parseBoolean2 = Boolean.parseBoolean(Adler32.readValue(sQLiteDatabase, str + ".useCompression.MOBILE"));
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(".useCompression.OTHER");
            Adler32.writeValue(sQLiteDatabase, ViewSizeResolver.CC.m(str, ".useCompression"), String.valueOf(parseBoolean && parseBoolean2 && Boolean.parseBoolean(Adler32.readValue(sQLiteDatabase, sb.toString()))));
            Adler32.writeValue(sQLiteDatabase, str + ".useCompression.WIFI", null);
            Adler32.writeValue(sQLiteDatabase, str + ".useCompression.MOBILE", null);
            Adler32.writeValue(sQLiteDatabase, str + ".useCompression.OTHER", null);
        }
    }

    public void rewriteNotificationLightSettings() {
        String str;
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str2 : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            boolean parseBoolean = Boolean.parseBoolean(Adler32.readValue(sQLiteDatabase, str2 + ".led"));
            String m = Sink$CC.m(sQLiteDatabase, str2, ".ledColor");
            int parseInt = m != null ? Integer.parseInt(m) : 0;
            String m2 = Sink$CC.m(sQLiteDatabase, str2, ".chipColor");
            int parseInt2 = m2 != null ? Integer.parseInt(m2) : 0;
            if (parseBoolean) {
                int i = parseInt & 16777215;
                str = i == (parseInt2 & 16777215) ? "AccountColor" : i == 16777215 ? "White" : i == 16711680 ? "Red" : i == 65280 ? "Green" : i == 255 ? "Blue" : i == 16776960 ? "Yellow" : i == 65535 ? "Cyan" : i == 16711935 ? "Magenta" : "SystemDefaultColor";
            } else {
                str = "Disabled";
            }
            Adler32.writeValue(sQLiteDatabase, str2 + ".notificationLight", str);
            Adler32.writeValue(sQLiteDatabase, str2 + ".led", null);
            Adler32.writeValue(sQLiteDatabase, str2 + ".ledColor", null);
        }
    }

    public void rewriteScreenTheme(String str) {
        SQLiteDatabase sQLiteDatabase = this.db;
        String readValue = Adler32.readValue(sQLiteDatabase, str);
        Integer valueOf = readValue != null ? Integer.valueOf(Integer.parseInt(readValue)) : null;
        Adler32.writeValue(sQLiteDatabase, str, (valueOf != null && valueOf.intValue() == 1) ? "DARK" : (valueOf != null && valueOf.intValue() == 2) ? "USE_GLOBAL" : "LIGHT");
    }

    public /* synthetic */ MigrationTo74(SQLiteDatabase sQLiteDatabase, Adler32 adler32) {
        this.db = sQLiteDatabase;
    }

    public MigrationTo74(SQLiteDatabase sQLiteDatabase, LegacyAccountDto legacyAccountDto) {
        sQLiteDatabase.getClass();
        legacyAccountDto.getClass();
        this.db = sQLiteDatabase;
    }
}
