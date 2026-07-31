package com.bumptech.glide;

import android.database.sqlite.SQLiteDatabase;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.sqlite.SQLite;
import com.bumptech.glide.load.engine.Jobs;
import com.fsck.k9.controller.PendingCommandSerializer;
import com.fsck.k9.preferences.ServerSettingsDescriptions;
import com.fsck.k9.preferences.Settings$InvalidSettingValueException;
import com.fsck.k9.preferences.SettingsFile$Server;
import com.fsck.k9.preferences.ValidatedSettings$Server;
import com.fsck.k9.storage.migrations.LegacyPendingAppend;
import com.fsck.k9.storage.migrations.LegacyPendingDelete;
import com.fsck.k9.storage.migrations.LegacyPendingExpunge;
import com.fsck.k9.storage.migrations.LegacyPendingMarkAllAsRead;
import com.fsck.k9.storage.migrations.LegacyPendingMoveAndMarkAsRead;
import com.fsck.k9.storage.migrations.LegacyPendingMoveOrCopy;
import com.fsck.k9.storage.migrations.LegacyPendingSetFlag;
import com.squareup.moshi.Moshi;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.MapBuilder;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideExperiments {
    public final Map experiments;

    public GlideExperiments(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        PendingCommandSerializer pendingCommandSerializer = PendingCommandSerializer.INSTANCE;
        Moshi moshi = new Moshi(new Headers.Builder(8));
        this.experiments = MapsKt__MapsKt.toMap(IntOffsetKt.listOf((Object[]) new Pair[]{new Pair("append", moshi.adapter(LegacyPendingAppend.class)), new Pair("mark_all_as_read", moshi.adapter(LegacyPendingMarkAllAsRead.class)), new Pair("set_flag", moshi.adapter(LegacyPendingSetFlag.class)), new Pair("delete", moshi.adapter(LegacyPendingDelete.class)), new Pair("expunge", moshi.adapter(LegacyPendingExpunge.class)), new Pair("move_or_copy", moshi.adapter(LegacyPendingMoveOrCopy.class)), new Pair("move_and_mark_as_read", moshi.adapter(LegacyPendingMoveAndMarkAsRead.class))}));
    }

    public ValidatedSettings$Server validate(int i, SettingsFile$Server settingsFile$Server) {
        settingsFile$Server.getClass();
        MapBuilder mapBuilder = new MapBuilder();
        String str = settingsFile$Server.host;
        if (str != null) {
        }
        String str2 = settingsFile$Server.port;
        if (str2 != null) {
        }
        String str3 = settingsFile$Server.connectionSecurity;
        if (str3 != null) {
        }
        String str4 = settingsFile$Server.authenticationType;
        if (str4 != null) {
        }
        String str5 = settingsFile$Server.username;
        if (str5 != null) {
        }
        String str6 = settingsFile$Server.password;
        if (str6 != null) {
        }
        String str7 = settingsFile$Server.clientCertificateAlias;
        if (str7 != null) {
            mapBuilder.put("clientCertificateAlias", str7);
        }
        HashMap validate = SQLite.validate(i, this.experiments, mapBuilder.build(), true);
        if (!(validate.get("authenticationType") instanceof String)) {
            throw new Settings$InvalidSettingValueException("Missing 'authenticationType' value");
        }
        if (!(validate.get("connectionSecurity") instanceof String)) {
            throw new Settings$InvalidSettingValueException("Missing 'connectionSecurity' value");
        }
        String str8 = settingsFile$Server.type;
        str8.getClass();
        String lowerCase = str8.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        Map map = settingsFile$Server.extras;
        if (map == null) {
            map = EmptyMap.INSTANCE;
        }
        return new ValidatedSettings$Server(lowerCase, validate, map);
    }

    public GlideExperiments(Jobs jobs) {
        this.experiments = DesugarCollections.unmodifiableMap(new HashMap(jobs.jobs));
    }

    public GlideExperiments(int i) {
        switch (i) {
            case 2:
                Map map = ServerSettingsDescriptions.SETTINGS;
                map.getClass();
                this.experiments = map;
                break;
            default:
                this.experiments = EmptyMap.INSTANCE;
                break;
        }
    }
}
