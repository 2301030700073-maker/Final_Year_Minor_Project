package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpr;
import com.google.android.gms.internal.measurement.zzqp;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import io.sentry.protocol.App;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.UByte$$ExternalSyntheticBackport0;
import org.apache.commons.io.IOUtils;

/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes4.dex */
final class zzav extends zzos {
    private final zzau zzm;
    private final zzog zzn;
    private static final String[] zzb = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    static final String[] zza = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};
    private static final String[] zzc = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzd = {App.JsonKeys.APP_VERSION, "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;"};
    private static final String[] zze = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzf = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzj = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private static final String[] zzk = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    private static final String[] zzl = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    zzav(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzn = new zzog(this.zzu.zzaZ());
        this.zzu.zzc();
        this.zzm = new zzau(this, this.zzu.zzaY(), "google_app_measurement.db");
    }

    private final String zzaA(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = zze().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    return cursor.getString(0);
                }
                if (cursor == null) {
                    return "";
                }
                cursor.close();
                return "";
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzc("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private final void zzaB(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase zze2 = zze();
            if (contentValues.getAsString("app_id") == null) {
                this.zzu.zzaV().zzd().zzb("Value of the primary key is not set.", zzgu.zzl("app_id"));
                return;
            }
            new StringBuilder(10).append("app_id = ?");
            if (zze2.update("consent_settings", contentValues, r3.toString(), new String[]{r2}) == 0 && zze2.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                this.zzu.zzaV().zzb().zzc("Failed to insert/update table (got -1). key", zzgu.zzl("consent_settings"), zzgu.zzl("app_id"));
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzd("Error storing into table. key", zzgu.zzl("consent_settings"), zzgu.zzl("app_id"), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.zzbc zzaC(java.lang.String r29, java.lang.String r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzaC(java.lang.String, java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzbc");
    }

    private final void zzaD(String str, zzbc zzbcVar) {
        Preconditions.checkNotNull(zzbcVar);
        zzg();
        zzaw();
        ContentValues contentValues = new ContentValues();
        String str2 = zzbcVar.zza;
        contentValues.put("app_id", str2);
        contentValues.put("name", zzbcVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzbcVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzbcVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzbcVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzbcVar.zzg));
        contentValues.put("last_bundled_day", zzbcVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzbcVar.zzi);
        contentValues.put("last_sampling_rate", zzbcVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzbcVar.zze));
        Boolean bool = zzbcVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (zze().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                this.zzu.zzaV().zzb().zzb("Failed to insert/update event aggregates (got -1). appId", zzgu.zzl(str2));
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error storing event aggregates. appId", zzgu.zzl(zzbcVar.zza), e);
        }
    }

    private final void zzaE(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzaw();
        try {
            zze().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error deleting snapshot. appId", zzgu.zzl(str2), e);
        }
    }

    private final zzpj zzaF(String str, long j, byte[] bArr, String str2, String str3, int i, int i2, long j2, long j3, long j4) {
        if (TextUtils.isEmpty(str2)) {
            this.zzu.zzaV().zzj().zza("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            com.google.android.gms.internal.measurement.zzhz zzhzVar = (com.google.android.gms.internal.measurement.zzhz) zzpk.zzw(com.google.android.gms.internal.measurement.zzib.zzh(), bArr);
            zzls zzb2 = zzls.zzb(i);
            if (zzb2 != zzls.GOOGLE_SIGNAL && zzb2 != zzls.GOOGLE_SIGNAL_PENDING && i2 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = zzhzVar.zza().iterator();
                while (it.hasNext()) {
                    com.google.android.gms.internal.measurement.zzic zzicVar = (com.google.android.gms.internal.measurement.zzic) ((com.google.android.gms.internal.measurement.zzid) it.next()).zzcl();
                    zzicVar.zzao(i2);
                    arrayList.add((com.google.android.gms.internal.measurement.zzid) zzicVar.zzbc());
                }
                zzhzVar.zzg();
                zzhzVar.zzf(arrayList);
            }
            HashMap hashMap = new HashMap();
            if (str3 != null) {
                String[] split = str3.split(IOUtils.LINE_SEPARATOR_WINDOWS);
                int length = split.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    String str4 = split[i3];
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] split2 = str4.split("=", 2);
                    if (split2.length != 2) {
                        this.zzu.zzaV().zzb().zzb("Invalid upload header: ", str4);
                        break;
                    }
                    hashMap.put(split2[0], split2[1]);
                    i3++;
                }
            }
            zzpi zzpiVar = new zzpi();
            zzpiVar.zzb(j);
            zzpiVar.zzc((com.google.android.gms.internal.measurement.zzib) zzhzVar.zzbc());
            zzpiVar.zzd(str2);
            zzpiVar.zze(hashMap);
            zzpiVar.zzf(zzb2);
            zzpiVar.zzg(j2);
            zzpiVar.zzh(j3);
            zzpiVar.zzi(j4);
            zzpiVar.zzj(i2);
            return zzpiVar.zza();
        } catch (IOException e) {
            this.zzu.zzaV().zzb().zzc("Failed to queued MeasurementBatch from upload_queue. appId", str, e);
            return null;
        }
    }

    private final String zzaG() {
        zzic zzicVar = this.zzu;
        long currentTimeMillis = zzicVar.zzaZ().currentTimeMillis();
        Locale locale = Locale.US;
        zzls zzlsVar = zzls.GOOGLE_SIGNAL;
        Integer valueOf = Integer.valueOf(zzlsVar.zza());
        Long valueOf2 = Long.valueOf(currentTimeMillis);
        zzicVar.zzc();
        String format = String.format(locale, "(upload_type = %d AND ABS(creation_timestamp - %d) > %d)", valueOf, valueOf2, Long.valueOf(((Long) zzfy.zzS.zzb(null)).longValue()));
        Locale locale2 = Locale.US;
        Integer valueOf3 = Integer.valueOf(zzlsVar.zza());
        zzicVar.zzc();
        String format2 = String.format(locale2, "(upload_type != %d AND ABS(creation_timestamp - %d) > %d)", valueOf3, valueOf2, Long.valueOf(zzal.zzI()));
        StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 5 + String.valueOf(format2).length() + 1);
        sb.append("(");
        sb.append(format);
        sb.append(" OR ");
        sb.append(format2);
        sb.append(")");
        return sb.toString();
    }

    private static final String zzaH(List list) {
        return list.isEmpty() ? "" : String.format(" AND (upload_type IN (%s))", TextUtils.join(", ", list));
    }

    static final void zzau(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty("value");
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    private final long zzay(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = zze().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzc("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zzaz(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            try {
                cursor = zze().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    j = cursor.getLong(0);
                }
                return j;
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzc("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public final long zzA(String str, com.google.android.gms.internal.measurement.zzib zzibVar, String str2, Map map, zzls zzlsVar, Long l) {
        int delete;
        zzg();
        zzaw();
        Preconditions.checkNotNull(zzibVar);
        Preconditions.checkNotEmpty(str);
        zzg();
        zzaw();
        if (zzag()) {
            zzpg zzpgVar = this.zzg;
            long zza2 = zzpgVar.zzq().zzb.zza();
            zzic zzicVar = this.zzu;
            long elapsedRealtime = zzicVar.zzaZ().elapsedRealtime();
            long abs = Math.abs(elapsedRealtime - zza2);
            zzicVar.zzc();
            if (abs > zzal.zzJ()) {
                zzpgVar.zzq().zzb.zzb(elapsedRealtime);
                zzg();
                zzaw();
                if (zzag() && (delete = zze().delete("upload_queue", zzaG(), new String[0])) > 0) {
                    zzicVar.zzaV().zzk().zzb("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(delete));
                }
                Preconditions.checkNotEmpty(str);
                zzg();
                zzaw();
                try {
                    int zzm = zzicVar.zzc().zzm(str, zzfy.zzz);
                    if (zzm > 0) {
                        zze().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(zzm)});
                    }
                } catch (SQLiteException e) {
                    this.zzu.zzaV().zzb().zzc("Error deleting over the limit queued batches. appId", zzgu.zzl(str), e);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb.append(str3);
            sb.append("=");
            sb.append(str4);
            arrayList.add(sb.toString());
        }
        byte[] zzcc = zzibVar.zzcc();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", zzcc);
        contentValues.put("upload_uri", str2);
        contentValues.put("upload_headers", UByte$$ExternalSyntheticBackport0.m((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS, (Iterable) arrayList));
        contentValues.put("upload_type", Integer.valueOf(zzlsVar.zza()));
        zzic zzicVar2 = this.zzu;
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzicVar2.zzaZ().currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        if (l != null) {
            contentValues.put("associated_row_id", l);
        }
        try {
            long insert = zze().insert("upload_queue", null, contentValues);
            if (insert != -1) {
                return insert;
            }
            zzicVar2.zzaV().zzb().zzb("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return -1L;
        } catch (SQLiteException e2) {
            this.zzu.zzaV().zzb().zzc("Error storing MeasurementBatch to upload_queue. appId", str, e2);
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzpj zzB(long r36) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzB(long):com.google.android.gms.measurement.internal.zzpj");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzC(java.lang.String r28, com.google.android.gms.measurement.internal.zzoo r29, int r30) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzC(java.lang.String, com.google.android.gms.measurement.internal.zzoo, int):java.util.List");
    }

    public final boolean zzD(String str) {
        zzls[] zzlsVarArr = {zzls.GOOGLE_SIGNAL};
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(zzlsVarArr[0].zza()));
        String zzaH = zzaH(arrayList);
        String zzaG = zzaG();
        StringBuilder sb = new StringBuilder(String.valueOf(zzaH).length() + 61 + zzaG.length());
        sb.append("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?");
        sb.append(zzaH);
        sb.append(" AND NOT ");
        sb.append(zzaG);
        return zzay(sb.toString(), new String[]{str}) != 0;
    }

    public final void zzE(Long l) {
        zzg();
        zzaw();
        Preconditions.checkNotNull(l);
        try {
            if (zze().delete("upload_queue", "rowid=?", new String[]{l.toString()}) != 1) {
                this.zzu.zzaV().zze().zza("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzb("Failed to delete a MeasurementBatch in a upload_queue table", e);
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzF() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.zze()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L1e android.database.sqlite.SQLiteException -> L20
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1c java.lang.Throwable -> L38
            if (r2 == 0) goto L32
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1c java.lang.Throwable -> L38
            if (r0 == 0) goto L1b
            r0.close()
        L1b:
            return r1
        L1c:
            r2 = move-exception
            goto L23
        L1e:
            r0 = move-exception
            goto L3c
        L20:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L23:
            com.google.android.gms.measurement.internal.zzic r3 = r6.zzu     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.measurement.internal.zzgu r3 = r3.zzaV()     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.measurement.internal.zzgs r3 = r3.zzb()     // Catch: java.lang.Throwable -> L38
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.zzb(r4, r2)     // Catch: java.lang.Throwable -> L38
        L32:
            if (r0 == 0) goto L37
            r0.close()
        L37:
            return r1
        L38:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L3c:
            if (r1 == 0) goto L41
            r1.close()
        L41:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzF():java.lang.String");
    }

    public final boolean zzG() {
        return zzay("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    public final void zzH(long j) {
        zzg();
        zzaw();
        try {
            if (zze().delete("queue", "rowid=?", new String[]{String.valueOf(j)}) == 1) {
            } else {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzb("Failed to delete a bundle in a queue table", e);
            throw e;
        }
    }

    final void zzI() {
        zzg();
        zzaw();
        if (zzag()) {
            zzpg zzpgVar = this.zzg;
            long zza2 = zzpgVar.zzq().zza.zza();
            zzic zzicVar = this.zzu;
            long elapsedRealtime = zzicVar.zzaZ().elapsedRealtime();
            long abs = Math.abs(elapsedRealtime - zza2);
            zzicVar.zzc();
            if (abs > zzal.zzJ()) {
                zzpgVar.zzq().zza.zzb(elapsedRealtime);
                zzg();
                zzaw();
                if (zzag()) {
                    SQLiteDatabase zze2 = zze();
                    zzicVar.zzc();
                    int delete = zze2.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzicVar.zzaZ().currentTimeMillis()), String.valueOf(zzal.zzI())});
                    if (delete > 0) {
                        zzicVar.zzaV().zzk().zzb("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    final void zzJ(List list) {
        zzg();
        zzaw();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzag()) {
            String join = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(sb2.length() + 80);
            sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb3.append(sb2);
            sb3.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zzay(sb3.toString(), null) > 0) {
                this.zzu.zzaV().zze().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase zze2 = zze();
                StringBuilder sb4 = new StringBuilder(sb2.length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                zze2.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzb("Error incrementing retry count. error", e);
            }
        }
    }

    final void zzK(Long l) {
        zzg();
        zzaw();
        Preconditions.checkNotNull(l);
        if (zzag()) {
            StringBuilder sb = new StringBuilder(l.toString().length() + 86);
            sb.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
            sb.append(l);
            sb.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zzay(sb.toString(), null) > 0) {
                this.zzu.zzaV().zze().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase zze2 = zze();
                long currentTimeMillis = this.zzu.zzaZ().currentTimeMillis();
                StringBuilder sb2 = new StringBuilder(String.valueOf(currentTimeMillis).length() + 60);
                sb2.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
                sb2.append(currentTimeMillis);
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder(sb3.length() + 34 + l.toString().length() + 29);
                sb4.append("UPDATE upload_queue");
                sb4.append(sb3);
                sb4.append(" WHERE rowid = ");
                sb4.append(l);
                sb4.append(" AND retry_count < 2147483647");
                zze2.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzb("Error incrementing retry count. error", e);
            }
        }
    }

    final Object zzL(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            this.zzu.zzaV().zzb().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            this.zzu.zzaV().zzb().zzb("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        this.zzu.zzaV().zzb().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    public final long zzM() {
        return zzaz("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(3:2|3|4)|(2:6|(3:8|9|10)(1:14))|15|16|(1:18)(2:21|22)|19|9|10|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a8, code lost:
    
        r15 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a9, code lost:
    
        r2 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ae, code lost:
    
        r13.zzu.zzaV().zzb().zzd("Error inserting column. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r14), "first_open_count", r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c1, code lost:
    
        r7 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final long zzN(java.lang.String r14, java.lang.String r15) {
        /*
            r13 = this;
            java.lang.String r15 = "select first_open_count from app2 where app_id=?"
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            java.lang.String r0 = "first_open_count"
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r13.zzg()
            r13.zzaw()
            android.database.sqlite.SQLiteDatabase r1 = r13.zze()
            r1.beginTransaction()
            r2 = 0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r5 = 48
            r4.<init>(r5)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r4.append(r15)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            java.lang.String r15 = r4.toString()     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r4 = 1
            java.lang.String[] r5 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r6 = 0
            r5[r6] = r14     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r7 = -1
            long r9 = r13.zzaz(r15, r5, r7)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            int r15 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            java.lang.String r5 = "app2"
            java.lang.String r11 = "app_id"
            if (r15 != 0) goto L6e
            android.content.ContentValues r15 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r15.<init>()     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r15.put(r11, r14)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            java.lang.Integer r9 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r15.put(r0, r9)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            java.lang.String r10 = "previous_install_count"
            r15.put(r10, r9)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r9 = 0
            r10 = 5
            long r9 = r1.insertWithOnConflict(r5, r9, r15, r10)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            int r15 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r15 != 0) goto L6d
            com.google.android.gms.measurement.internal.zzic r15 = r13.zzu     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            com.google.android.gms.measurement.internal.zzgu r15 = r15.zzaV()     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            com.google.android.gms.measurement.internal.zzgs r15 = r15.zzb()     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            java.lang.String r4 = "Failed to insert column (got -1). appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzgu.zzl(r14)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            r15.zzc(r4, r5, r0)     // Catch: java.lang.Throwable -> Lab android.database.sqlite.SQLiteException -> Lad
            goto Lc2
        L6d:
            r9 = r2
        L6e:
            android.content.ContentValues r15 = new android.content.ContentValues     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r15.<init>()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r15.put(r11, r14)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r11 = 1
            long r11 = r11 + r9
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r15.put(r0, r11)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            java.lang.String r11 = "app_id = ?"
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r4[r6] = r14     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            int r15 = r1.update(r5, r15, r11, r4)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            long r4 = (long) r15     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            int r15 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r15 != 0) goto La3
            com.google.android.gms.measurement.internal.zzic r15 = r13.zzu     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzgu r15 = r15.zzaV()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzgs r15 = r15.zzb()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            java.lang.String r2 = "Failed to update column (got 0). appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzgu.zzl(r14)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r15.zzc(r2, r3, r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            goto Lc2
        La3:
            r1.setTransactionSuccessful()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lab
            r7 = r9
            goto Lc2
        La8:
            r15 = move-exception
            r2 = r9
            goto Lae
        Lab:
            r14 = move-exception
            goto Lc6
        Lad:
            r15 = move-exception
        Lae:
            com.google.android.gms.measurement.internal.zzic r4 = r13.zzu     // Catch: java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzgu r4 = r4.zzaV()     // Catch: java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzgs r4 = r4.zzb()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r5 = "Error inserting column. appId"
            java.lang.Object r14 = com.google.android.gms.measurement.internal.zzgu.zzl(r14)     // Catch: java.lang.Throwable -> Lab
            r4.zzd(r5, r14, r0, r15)     // Catch: java.lang.Throwable -> Lab
            r7 = r2
        Lc2:
            r1.endTransaction()
            return r7
        Lc6:
            r1.endTransaction()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzN(java.lang.String, java.lang.String):long");
    }

    public final long zzO() {
        return zzaz("select max(timestamp) from raw_events", null, 0L);
    }

    public final boolean zzP() {
        return zzay("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzQ(String str, String str2) {
        return zzay("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    public final boolean zzR() {
        return zzay("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    public final long zzS(String str) {
        Preconditions.checkNotEmpty(str);
        return zzaz("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final boolean zzT(String str, Long l, long j, com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        zzg();
        zzaw();
        Preconditions.checkNotNull(zzhsVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        zzic zzicVar = this.zzu;
        byte[] zzcc = zzhsVar.zzcc();
        zzicVar.zzaV().zzk().zzc("Saving complex main event, appId, data size", zzicVar.zzl().zza(str), Integer.valueOf(zzcc.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", zzcc);
        try {
            if (zze().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzicVar.zzaV().zzb().zzb("Failed to insert complex main event (got -1). appId", zzgu.zzl(str));
            return false;
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error storing complex main event. appId", zzgu.zzl(str), e);
            return false;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0085: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:26:0x0085 */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zzU(java.lang.String r6) {
        /*
            r5 = this;
            r5.zzg()
            r5.zzaw()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.zze()     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r2 = "select parameters from default_event_params where app_id=?"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            r4 = 0
            r3[r4] = r6     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            if (r2 != 0) goto L2d
            com.google.android.gms.measurement.internal.zzic r6 = r5.zzu     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzgu r6 = r6.zzaV()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzgs r6 = r6.zzk()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            java.lang.String r2 = "Default event parameters not found"
            r6.zza(r2)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            goto L7e
        L2d:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.internal.measurement.zzhr r3 = com.google.android.gms.internal.measurement.zzhs.zzk()     // Catch: java.io.IOException -> L54 android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.internal.measurement.zznl r2 = com.google.android.gms.measurement.internal.zzpk.zzw(r3, r2)     // Catch: java.io.IOException -> L54 android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.internal.measurement.zzhr r2 = (com.google.android.gms.internal.measurement.zzhr) r2     // Catch: java.io.IOException -> L54 android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.internal.measurement.zzmf r2 = r2.zzbc()     // Catch: java.io.IOException -> L54 android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.internal.measurement.zzhs r2 = (com.google.android.gms.internal.measurement.zzhs) r2     // Catch: java.io.IOException -> L54 android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzpg r6 = r5.zzg     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            r6.zzp()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            java.util.List r6 = r2.zza()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            android.os.Bundle r6 = com.google.android.gms.measurement.internal.zzpk.zzE(r6)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            if (r1 == 0) goto L53
            r1.close()
        L53:
            return r6
        L54:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzic r3 = r5.zzu     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzgu r3 = r3.zzaV()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzgs r3 = r3.zzb()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgu.zzl(r6)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            r3.zzc(r4, r6, r2)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L84
            goto L7e
        L69:
            r6 = move-exception
            goto L6f
        L6b:
            r6 = move-exception
            goto L86
        L6d:
            r6 = move-exception
            r1 = r0
        L6f:
            com.google.android.gms.measurement.internal.zzic r2 = r5.zzu     // Catch: java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzgu r2 = r2.zzaV()     // Catch: java.lang.Throwable -> L84
            com.google.android.gms.measurement.internal.zzgs r2 = r2.zzb()     // Catch: java.lang.Throwable -> L84
            java.lang.String r3 = "Error selecting default event parameters"
            r2.zzb(r3, r6)     // Catch: java.lang.Throwable -> L84
        L7e:
            if (r1 == 0) goto L83
            r1.close()
        L83:
            return r0
        L84:
            r6 = move-exception
            r0 = r1
        L86:
            if (r0 == 0) goto L8b
            r0.close()
        L8b:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzU(java.lang.String):android.os.Bundle");
    }

    final boolean zzV(String str, long j) {
        try {
            if (zzaz("select count(*) from raw_events where app_id=? and timestamp >= ? and name not like '!_%' escape '!' limit 1;", new String[]{str, String.valueOf(j)}, 0L) > 0) {
                return false;
            }
            return zzaz("select count(*) from raw_events where app_id=? and timestamp >= ? and name like '!_%' escape '!' limit 1;", new String[]{str, String.valueOf(j)}, 0L) > 0;
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzb("Error checking backfill conditions", e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x00db, code lost:
    
        if (r2 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0087, code lost:
    
        if (r2 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
    
        r2.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02be A[Catch: SQLiteException -> 0x02d4, TRY_LEAVE, TryCatch #2 {SQLiteException -> 0x02d4, blocks: (B:67:0x02a3, B:69:0x02be), top: B:66:0x02a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x012c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzW(java.lang.String r26, java.lang.Long r27, java.lang.String r28, android.os.Bundle r29) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzW(java.lang.String, java.lang.Long, java.lang.String, android.os.Bundle):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
    
        if (r6 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        if (r6 == null) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzjl zzX(java.lang.String r6) {
        /*
            r5 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r6)
            r5.zzg()
            r5.zzaw()
            r0 = 1
            java.lang.String[] r1 = new java.lang.String[r0]
            r2 = 0
            r1[r2] = r6
            java.lang.String r6 = "select consent_state, consent_source from consent_settings where app_id=? limit 1;"
            r3 = 0
            android.database.sqlite.SQLiteDatabase r4 = r5.zze()     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            android.database.Cursor r6 = r4.rawQuery(r6, r1)     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            boolean r1 = r6.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            if (r1 != 0) goto L32
            com.google.android.gms.measurement.internal.zzic r0 = r5.zzu     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzgu r0 = r0.zzaV()     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzgs r0 = r0.zzk()     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            java.lang.String r1 = "No data found"
            r0.zza(r1)     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            if (r6 == 0) goto L5d
            goto L5a
        L32:
            java.lang.String r1 = r6.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            int r0 = r6.getInt(r0)     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzjl r3 = com.google.android.gms.measurement.internal.zzjl.zzf(r1, r0)     // Catch: android.database.sqlite.SQLiteException -> L41 java.lang.Throwable -> L66
            if (r6 == 0) goto L5d
            goto L5a
        L41:
            r0 = move-exception
            goto L49
        L43:
            r6 = move-exception
            r0 = r6
            goto L68
        L46:
            r6 = move-exception
            r0 = r6
            r6 = r3
        L49:
            com.google.android.gms.measurement.internal.zzic r1 = r5.zzu     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzgu r1 = r1.zzaV()     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzgs r1 = r1.zzb()     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = "Error querying database."
            r1.zzb(r2, r0)     // Catch: java.lang.Throwable -> L66
            if (r6 == 0) goto L5d
        L5a:
            r6.close()
        L5d:
            r6 = r3
            com.google.android.gms.measurement.internal.zzjl r6 = (com.google.android.gms.measurement.internal.zzjl) r6
            if (r3 != 0) goto L65
            com.google.android.gms.measurement.internal.zzjl r6 = com.google.android.gms.measurement.internal.zzjl.zza
            return r6
        L65:
            return r3
        L66:
            r0 = move-exception
            r3 = r6
        L68:
            if (r3 == 0) goto L6d
            r3.close()
        L6d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzX(java.lang.String):com.google.android.gms.measurement.internal.zzjl");
    }

    public final boolean zzY(String str, zzoh zzohVar) {
        zzg();
        zzaw();
        Preconditions.checkNotNull(zzohVar);
        Preconditions.checkNotEmpty(str);
        zzic zzicVar = this.zzu;
        long currentTimeMillis = zzicVar.zzaZ().currentTimeMillis();
        zzfx zzfxVar = zzfy.zzav;
        long longValue = currentTimeMillis - ((Long) zzfxVar.zzb(null)).longValue();
        long j = zzohVar.zzb;
        if (j < longValue || j > ((Long) zzfxVar.zzb(null)).longValue() + currentTimeMillis) {
            zzicVar.zzaV().zze().zzd("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgu.zzl(str), Long.valueOf(currentTimeMillis), Long.valueOf(j));
        }
        zzicVar.zzaV().zzk().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zzohVar.zza);
        contentValues.put("source", Integer.valueOf(zzohVar.zzc));
        contentValues.put("timestamp_millis", Long.valueOf(j));
        try {
            if (zze().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            zzicVar.zzaV().zzb().zzb("Failed to insert trigger URI (got -1). appId", zzgu.zzl(str));
            return false;
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error storing trigger URI. appId", zzgu.zzl(str), e);
            return false;
        }
    }

    public final void zzZ(String str, zzjl zzjlVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjlVar);
        zzg();
        zzaw();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzjlVar.zzl());
        contentValues.put("consent_source", Integer.valueOf(zzjlVar.zzb()));
        zzaB("consent_settings", "app_id", contentValues);
    }

    public final zzaz zzaa(String str) {
        Preconditions.checkNotNull(str);
        zzg();
        zzaw();
        return zzaz.zzg(zzaA("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final void zzab(String str, zzaz zzazVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzazVar);
        zzg();
        zzaw();
        zzjl zzX = zzX(str);
        zzjl zzjlVar = zzjl.zza;
        if (zzX == zzjlVar) {
            zzZ(str, zzjlVar);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", zzazVar.zze());
        zzaB("consent_settings", "app_id", contentValues);
    }

    public final void zzac(String str, zzjl zzjlVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjlVar);
        zzg();
        zzaw();
        zzZ(str, zzX(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", zzjlVar.zzl());
        zzaB("consent_settings", "app_id", contentValues);
    }

    public final zzjl zzad(String str) {
        Preconditions.checkNotNull(str);
        zzg();
        zzaw();
        return zzjl.zzf(zzaA("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""), 100);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0253, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0237, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01e1, code lost:
    
        r0 = r23.zzu.zzaV().zze();
        r9 = com.google.android.gms.measurement.internal.zzgu.zzl(r24);
        r11 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01f9, code lost:
    
        if (r12.zza() == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01fb, code lost:
    
        r20 = java.lang.Integer.valueOf(r12.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0208, code lost:
    
        r0.zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r9, r11, java.lang.String.valueOf(r20));
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0206, code lost:
    
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0299, code lost:
    
        r21 = r7;
        r0 = r0.zzc().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02a7, code lost:
    
        if (r0.hasNext() == false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02a9, code lost:
    
        r3 = (com.google.android.gms.internal.measurement.zzfn) r0.next();
        zzaw();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02c3, code lost:
    
        if (r3.zzc().isEmpty() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02f2, code lost:
    
        r7 = r3.zzcc();
        r11 = new android.content.ContentValues();
        r11.put("app_id", r24);
        r11.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0309, code lost:
    
        if (r3.zza() == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x030b, code lost:
    
        r12 = java.lang.Integer.valueOf(r3.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0315, code lost:
    
        r11.put("filter_id", r12);
        r22 = r0;
        r11.put("property_name", r3.zzc());
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0327, code lost:
    
        if (r3.zzg() == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0329, code lost:
    
        r0 = java.lang.Boolean.valueOf(r3.zzh());
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0333, code lost:
    
        r11.put("session_scoped", r0);
        r11.put("data", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0347, code lost:
    
        if (zze().insertWithOnConflict("property_filters", null, r11, 5) != (-1)) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x035d, code lost:
    
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0349, code lost:
    
        r23.zzu.zzaV().zzb().zzb("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.zzgu.zzl(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0361, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0362, code lost:
    
        r23.zzu.zzaV().zzb().zzc("Error storing property filter. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0332, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0314, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02c5, code lost:
    
        r0 = r23.zzu.zzaV().zze();
        r8 = com.google.android.gms.measurement.internal.zzgu.zzl(r24);
        r9 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02dd, code lost:
    
        if (r3.zza() == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02df, code lost:
    
        r3 = java.lang.Integer.valueOf(r3.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02e9, code lost:
    
        r0.zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r8, r9, java.lang.String.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02e8, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017a, code lost:
    
        r11 = r0.zzc().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0186, code lost:
    
        if (r11.hasNext() == false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0192, code lost:
    
        if (((com.google.android.gms.internal.measurement.zzfn) r11.next()).zza() != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0194, code lost:
    
        r23.zzu.zzaV().zze().zzc("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.zzgu.zzl(r24), java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ad, code lost:
    
        r11 = r0.zzf().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c3, code lost:
    
        if (r11.hasNext() == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c5, code lost:
    
        r12 = (com.google.android.gms.internal.measurement.zzff) r11.next();
        zzaw();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01df, code lost:
    
        if (r12.zzc().isEmpty() == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0213, code lost:
    
        r3 = r12.zzcc();
        r21 = r7;
        r7 = new android.content.ContentValues();
        r7.put("app_id", r24);
        r7.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x022c, code lost:
    
        if (r12.zza() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x022e, code lost:
    
        r9 = java.lang.Integer.valueOf(r12.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0238, code lost:
    
        r7.put("filter_id", r9);
        r7.put("event_name", r12.zzc());
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0248, code lost:
    
        if (r12.zzk() == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x024a, code lost:
    
        r9 = java.lang.Boolean.valueOf(r12.zzm());
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0254, code lost:
    
        r7.put("session_scoped", r9);
        r7.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0268, code lost:
    
        if (zze().insertWithOnConflict("event_filters", null, r7, 5) != (-1)) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x026a, code lost:
    
        r23.zzu.zzaV().zzb().zzb("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.zzgu.zzl(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x027d, code lost:
    
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0283, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0284, code lost:
    
        r23.zzu.zzaV().zzb().zzc("Error storing event filter. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0375, code lost:
    
        zzaw();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        r0 = zze();
        r9 = r17;
        r0.delete("property_filters", r9, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r0.delete("event_filters", r9, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r17 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03a8, code lost:
    
        r7 = r21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzae(java.lang.String r24, java.util.List r25) {
        /*
            Method dump skipped, instructions count: 1188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzae(java.lang.String, java.util.List):void");
    }

    final zzbc zzaf(String str, com.google.android.gms.internal.measurement.zzhs zzhsVar, String str2) {
        zzbc zzaC = zzaC("events", str, zzhsVar.zzd());
        if (zzaC == null) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zze().zzc("Event aggregate wasn't created during raw event logging. appId, event", zzgu.zzl(str), zzicVar.zzl().zza(str2));
            return new zzbc(str, zzhsVar.zzd(), 1L, 1L, 1L, zzhsVar.zzf(), 0L, null, null, null, null);
        }
        long j = zzaC.zze + 1;
        long j2 = zzaC.zzd + 1;
        return new zzbc(zzaC.zza, zzaC.zzb, zzaC.zzc + 1, j2, j, zzaC.zzf, zzaC.zzg, zzaC.zzh, zzaC.zzi, zzaC.zzj, zzaC.zzk);
    }

    protected final boolean zzag() {
        zzic zzicVar = this.zzu;
        Context zzaY = zzicVar.zzaY();
        zzicVar.zzc();
        return zzaY.getDatabasePath("google_app_measurement.db").exists();
    }

    final /* synthetic */ long zzah(String str, String[] strArr, long j) {
        return zzaz("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", strArr, -1L);
    }

    final /* synthetic */ zzog zzas() {
        return this.zzn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0282  */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v11, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzat(java.lang.String r22, long r23, long r25, com.google.android.gms.measurement.internal.zzpc r27) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzat(java.lang.String, long, long, com.google.android.gms.measurement.internal.zzpc):void");
    }

    public final void zzb() {
        zzaw();
        zze().beginTransaction();
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    protected final boolean zzbb() {
        return false;
    }

    public final void zzc() {
        zzaw();
        zze().setTransactionSuccessful();
    }

    public final void zzd() {
        zzaw();
        zze().endTransaction();
    }

    final SQLiteDatabase zze() {
        zzg();
        try {
            return this.zzm.getWritableDatabase();
        } catch (SQLiteException e) {
            this.zzu.zzaV().zze().zzb("Error opening database", e);
            throw e;
        }
    }

    public final zzbc zzf(String str, String str2) {
        return zzaC("events", str, str2);
    }

    public final void zzh(zzbc zzbcVar) {
        zzaD("events", zzbcVar);
    }

    public final void zzi(String str) {
        zzbc zzaC;
        zzaE("events_snapshot", str);
        Cursor cursor = null;
        try {
            try {
                cursor = zze().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(0);
                        if (string != null && (zzaC = zzaC("events", str, string)) != null) {
                            zzaD("events_snapshot", zzaC);
                        }
                    } while (cursor.moveToNext());
                }
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzc("Error creating snapshot. appId", zzgu.zzl(str), e);
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00c3, code lost:
    
        zzaD("events", r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c1, code lost:
    
        if (r10 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x005e, code lost:
    
        if (r10 != null) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzj(java.lang.String):void");
    }

    public final void zzk(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzaw();
        try {
            zze().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzb().zzd("Error deleting user property. appId", zzgu.zzl(str), zzicVar.zzl().zzc(str2), e);
        }
    }

    public final boolean zzl(zzpn zzpnVar) {
        Preconditions.checkNotNull(zzpnVar);
        zzg();
        zzaw();
        String str = zzpnVar.zza;
        String str2 = zzpnVar.zzc;
        if (zzm(str, str2) == null) {
            if (zzpp.zzh(str2)) {
                if (zzay("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= this.zzu.zzc().zzn(str, zzfy.zzV, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(str2)) {
                long zzay = zzay("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, zzpnVar.zzb});
                this.zzu.zzc();
                if (zzay >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzpnVar.zzb);
        contentValues.put("name", str2);
        contentValues.put("set_timestamp", Long.valueOf(zzpnVar.zzd));
        zzau(contentValues, "value", zzpnVar.zze);
        try {
            if (zze().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.zzu.zzaV().zzb().zzb("Failed to insert/update user property (got -1). appId", zzgu.zzl(str));
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error storing user property. appId", zzgu.zzl(zzpnVar.zza), e);
        }
        return true;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00a2: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:26:0x00a2 */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzpn zzm(java.lang.String r20, java.lang.String r21) {
        /*
            r19 = this;
            r1 = r19
            r9 = r21
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r20)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r21)
            r19.zzg()
            r19.zzaw()
            r10 = 0
            android.database.sqlite.SQLiteDatabase r11 = r19.zze()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r12 = "user_attributes"
            r0 = 3
            java.lang.String[] r13 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r0 = "set_timestamp"
            r2 = 0
            r13[r2] = r0     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r0 = "value"
            r3 = 1
            r13[r3] = r0     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r0 = "origin"
            r4 = 2
            r13[r4] = r0     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r14 = "app_id=? and name=?"
            java.lang.String[] r15 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r15[r2] = r20     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r15[r3] = r9     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r17 = 0
            r18 = 0
            r16 = 0
            android.database.Cursor r11 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            boolean r0 = r11.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            if (r0 != 0) goto L42
            goto L9b
        L42:
            long r6 = r11.getLong(r2)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            java.lang.Object r8 = r1.zzL(r11, r3)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            if (r8 != 0) goto L4d
            goto L9b
        L4d:
            java.lang.String r4 = r11.getString(r4)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            com.google.android.gms.measurement.internal.zzpn r0 = new com.google.android.gms.measurement.internal.zzpn     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            r2 = r0
            r3 = r20
            r5 = r21
            r2.<init>(r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            boolean r2 = r11.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            if (r2 == 0) goto L74
            com.google.android.gms.measurement.internal.zzic r2 = r1.zzu     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            com.google.android.gms.measurement.internal.zzgu r2 = r2.zzaV()     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            com.google.android.gms.measurement.internal.zzgs r2 = r2.zzb()     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            java.lang.String r3 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzgu.zzl(r20)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
            r2.zzb(r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La1
        L74:
            if (r11 == 0) goto L79
            r11.close()
        L79:
            return r0
        L7a:
            r0 = move-exception
            goto L80
        L7c:
            r0 = move-exception
            goto La3
        L7e:
            r0 = move-exception
            r11 = r10
        L80:
            com.google.android.gms.measurement.internal.zzic r2 = r1.zzu     // Catch: java.lang.Throwable -> La1
            com.google.android.gms.measurement.internal.zzgu r3 = r2.zzaV()     // Catch: java.lang.Throwable -> La1
            com.google.android.gms.measurement.internal.zzgs r3 = r3.zzb()     // Catch: java.lang.Throwable -> La1
            java.lang.String r4 = "Error querying user property. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzgu.zzl(r20)     // Catch: java.lang.Throwable -> La1
            com.google.android.gms.measurement.internal.zzgn r2 = r2.zzl()     // Catch: java.lang.Throwable -> La1
            java.lang.String r2 = r2.zzc(r9)     // Catch: java.lang.Throwable -> La1
            r3.zzd(r4, r5, r2, r0)     // Catch: java.lang.Throwable -> La1
        L9b:
            if (r11 == 0) goto La0
            r11.close()
        La0:
            return r10
        La1:
            r0 = move-exception
            r10 = r11
        La3:
            if (r10 == 0) goto La8
            r10.close()
        La8:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzm(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzpn");
    }

    public final List zzn(String str) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzaw();
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                zzic zzicVar = this.zzu;
                zzicVar.zzc();
                cursor = zze().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(0);
                        String string2 = cursor.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str2 = string2;
                        long j = cursor.getLong(2);
                        Object zzL = zzL(cursor, 3);
                        if (zzL == null) {
                            zzicVar.zzaV().zzb().zzb("Read invalid user property value, ignoring it. appId", zzgu.zzl(str));
                        } else {
                            arrayList.add(new zzpn(str, str2, string, j, zzL));
                        }
                    } while (cursor.moveToNext());
                }
            } catch (SQLiteException e) {
                this.zzu.zzaV().zzb().zzc("Error querying user properties. appId", zzgu.zzl(str), e);
                arrayList = Collections.emptyList();
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bc, code lost:
    
        r0 = r5.zzaV().zzb();
        r5.zzc();
        r0.zzb("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzo(java.lang.String r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzo(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final boolean zzp(zzah zzahVar) {
        Preconditions.checkNotNull(zzahVar);
        zzg();
        zzaw();
        String str = zzahVar.zza;
        Preconditions.checkNotNull(str);
        if (zzm(str, zzahVar.zzc.zzb) == null) {
            long zzay = zzay("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.zzu.zzc();
            if (zzay >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzahVar.zzb);
        contentValues.put("name", zzahVar.zzc.zzb);
        zzau(contentValues, "value", Preconditions.checkNotNull(zzahVar.zzc.zza()));
        contentValues.put("active", Boolean.valueOf(zzahVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzahVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzahVar.zzh));
        zzic zzicVar = this.zzu;
        contentValues.put("timed_out_event", zzicVar.zzk().zzae(zzahVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzahVar.zzd));
        contentValues.put("triggered_event", zzicVar.zzk().zzae(zzahVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzahVar.zzc.zzc));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzahVar.zzj));
        contentValues.put("expired_event", zzicVar.zzk().zzae(zzahVar.zzk));
        try {
            if (zze().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzicVar.zzaV().zzb().zzb("Failed to insert/update conditional user property (got -1)", zzgu.zzl(str));
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error storing conditional user property", zzgu.zzl(str), e);
        }
        return true;
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0149: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:31:0x0149 */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzah zzq(java.lang.String r36, java.lang.String r37) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzq(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzah");
    }

    public final int zzr(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzaw();
        try {
            return zze().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzb().zzd("Error deleting conditional property", zzgu.zzl(str), zzicVar.zzl().zzc(str2), e);
            return 0;
        }
    }

    public final List zzs(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzaw();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            String.valueOf(str3);
            arrayList.add(String.valueOf(str3).concat(ProxyConfig.MATCH_ALL_SCHEMES));
            sb.append(" and name glob ?");
        }
        return zzt(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008f, code lost:
    
        r3 = r5.zzaV().zzb();
        r5.zzc();
        r3.zzb("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0163  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzt(java.lang.String r39, java.lang.String[] r40) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzt(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0262 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x027e A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x028f A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02d0 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02ea A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0340 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0353 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x036f A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x037f A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x032b A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0300 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0253 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0207 A[Catch: SQLiteException -> 0x0396, all -> 0x03b7, TryCatch #0 {SQLiteException -> 0x0396, blocks: (B:5:0x0139, B:13:0x0141, B:15:0x0158, B:16:0x015f, B:18:0x0172, B:19:0x0179, B:21:0x01b8, B:25:0x01c2, B:28:0x020c, B:30:0x023b, B:34:0x0245, B:37:0x0257, B:39:0x0262, B:40:0x0274, B:42:0x027e, B:43:0x0287, B:45:0x028f, B:48:0x0298, B:50:0x02d0, B:51:0x02e2, B:53:0x02ea, B:56:0x02f3, B:59:0x030b, B:62:0x0335, B:64:0x0340, B:65:0x034b, B:67:0x0353, B:68:0x035e, B:70:0x036f, B:71:0x0376, B:73:0x037f, B:78:0x032b, B:79:0x0300, B:82:0x0307, B:85:0x0253, B:87:0x0207), top: B:4:0x0139 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x03b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzh zzu(java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 959
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzu(java.lang.String):com.google.android.gms.measurement.internal.zzh");
    }

    public final void zzv(zzh zzhVar, boolean z, boolean z2) {
        Preconditions.checkNotNull(zzhVar);
        zzg();
        zzaw();
        String zzc2 = zzhVar.zzc();
        Preconditions.checkNotNull(zzc2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzc2);
        if (z) {
            contentValues.put("app_instance_id", (String) null);
        } else if (this.zzg.zzB(zzc2).zzo(zzjk.ANALYTICS_STORAGE)) {
            contentValues.put("app_instance_id", zzhVar.zzd());
        }
        contentValues.put("gmp_app_id", zzhVar.zzf());
        zzpg zzpgVar = this.zzg;
        if (zzpgVar.zzB(zzc2).zzo(zzjk.AD_STORAGE)) {
            contentValues.put("resettable_device_id_hash", zzhVar.zzj());
        }
        contentValues.put("last_bundle_index", Long.valueOf(zzhVar.zzG()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzhVar.zzn()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzhVar.zzp()));
        contentValues.put(App.JsonKeys.APP_VERSION, zzhVar.zzr());
        contentValues.put("app_store", zzhVar.zzv());
        contentValues.put("gmp_version", Long.valueOf(zzhVar.zzx()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzhVar.zzz()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzhVar.zzD()));
        contentValues.put("day", Long.valueOf(zzhVar.zzN()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzhVar.zzP()));
        contentValues.put("daily_events_count", Long.valueOf(zzhVar.zzR()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzhVar.zzT()));
        contentValues.put("config_fetched_time", Long.valueOf(zzhVar.zzH()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzhVar.zzJ()));
        contentValues.put("app_version_int", Long.valueOf(zzhVar.zzt()));
        contentValues.put("firebase_instance_id", zzhVar.zzl());
        contentValues.put("daily_error_events_count", Long.valueOf(zzhVar.zzX()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzhVar.zzV()));
        contentValues.put("health_monitor_sample", zzhVar.zzZ());
        contentValues.put("android_id", (Long) 0L);
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzhVar.zzac()));
        contentValues.put("dynamite_version", Long.valueOf(zzhVar.zzB()));
        if (zzpgVar.zzB(zzc2).zzo(zzjk.ANALYTICS_STORAGE)) {
            contentValues.put("session_stitching_token", zzhVar.zzh());
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(zzhVar.zzai()));
        contentValues.put("target_os_version", Long.valueOf(zzhVar.zzak()));
        contentValues.put("session_stitching_token_hash", Long.valueOf(zzhVar.zzam()));
        zzqp.zza();
        zzic zzicVar = this.zzu;
        if (zzicVar.zzc().zzp(zzc2, zzfy.zzaP)) {
            contentValues.put("ad_services_version", Integer.valueOf(zzhVar.zzao()));
            contentValues.put("attribution_eligibility_status", Long.valueOf(zzhVar.zzaw()));
        }
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(zzhVar.zzaq()));
        contentValues.put("npa_metadata_value", zzhVar.zzae());
        contentValues.put("bundle_delivery_index", Long.valueOf(zzhVar.zzaF()));
        contentValues.put("sgtm_preview_key", zzhVar.zzay());
        contentValues.put("dma_consent_state", Integer.valueOf(zzhVar.zzaA()));
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(zzhVar.zzaC()));
        contentValues.put("serialized_npa_metadata", zzhVar.zzaH());
        contentValues.put("client_upload_eligibility", Integer.valueOf(zzhVar.zzaL()));
        List zzag = zzhVar.zzag();
        if (zzag != null) {
            if (zzag.isEmpty()) {
                zzicVar.zzaV().zze().zzb("Safelisted events should not be an empty list. appId", zzc2);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzag));
            }
        }
        zzpr.zza();
        if (zzicVar.zzc().zzp(null, zzfy.zzaK) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        contentValues.put("unmatched_pfo", zzhVar.zzas());
        contentValues.put("unmatched_uwa", zzhVar.zzau());
        contentValues.put("ad_campaign_info", zzhVar.zzaJ());
        try {
            SQLiteDatabase zze2 = zze();
            if (zze2.update("apps", contentValues, "app_id = ?", new String[]{zzc2}) == 0 && zze2.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzicVar.zzaV().zzb().zzb("Failed to insert/update app (got -1). appId", zzgu.zzl(zzc2));
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzc("Error storing app. appId", zzgu.zzl(zzc2), e);
        }
    }

    public final zzar zzw(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        return zzx(j, str, 1L, false, false, z3, false, z5, z6, z7);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzar zzx(long r24, java.lang.String r26, long r27, boolean r29, boolean r30, boolean r31, boolean r32, boolean r33, boolean r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzx(long, java.lang.String, long, boolean, boolean, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.zzar");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaq zzy(java.lang.String r13) {
        /*
            r12 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            r12.zzg()
            r12.zzaw()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r12.zze()     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r2 = "apps"
            r3 = 3
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r4 = "remote_config"
            r9 = 0
            r3[r9] = r4     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r4 = "config_last_modified_time"
            r10 = 1
            r3[r10] = r4     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r4 = "e_tag"
            r11 = 2
            r3[r11] = r4     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r4 = "app_id=?"
            java.lang.String[] r5 = new java.lang.String[r10]     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            r5[r9] = r13     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            r7 = 0
            r8 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            if (r2 != 0) goto L36
            goto L83
        L36:
            byte[] r2 = r1.getBlob(r9)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            java.lang.String r3 = r1.getString(r10)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            java.lang.String r4 = r1.getString(r11)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            boolean r5 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            if (r5 == 0) goto L5b
            com.google.android.gms.measurement.internal.zzic r5 = r12.zzu     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            com.google.android.gms.measurement.internal.zzgu r5 = r5.zzaV()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            com.google.android.gms.measurement.internal.zzgs r5 = r5.zzb()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            java.lang.String r6 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzgu.zzl(r13)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            r5.zzb(r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
        L5b:
            if (r2 != 0) goto L5e
            goto L83
        L5e:
            com.google.android.gms.measurement.internal.zzaq r5 = new com.google.android.gms.measurement.internal.zzaq     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            r5.<init>(r2, r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L89
            if (r1 == 0) goto L68
            r1.close()
        L68:
            return r5
        L69:
            r2 = move-exception
            goto L70
        L6b:
            r13 = move-exception
            goto L8b
        L6d:
            r1 = move-exception
            r2 = r1
            r1 = r0
        L70:
            com.google.android.gms.measurement.internal.zzic r3 = r12.zzu     // Catch: java.lang.Throwable -> L89
            com.google.android.gms.measurement.internal.zzgu r3 = r3.zzaV()     // Catch: java.lang.Throwable -> L89
            com.google.android.gms.measurement.internal.zzgs r3 = r3.zzb()     // Catch: java.lang.Throwable -> L89
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzgu.zzl(r13)     // Catch: java.lang.Throwable -> L89
            r3.zzc(r4, r13, r2)     // Catch: java.lang.Throwable -> L89
        L83:
            if (r1 == 0) goto L88
            r1.close()
        L88:
            return r0
        L89:
            r13 = move-exception
            r0 = r1
        L8b:
            if (r0 == 0) goto L90
            r0.close()
        L90:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzy(java.lang.String):com.google.android.gms.measurement.internal.zzaq");
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0043, code lost:
    
        if (r3 > (com.google.android.gms.measurement.internal.zzal.zzI() + r1)) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzz(com.google.android.gms.internal.measurement.zzid r8, boolean r9) {
        /*
            r7 = this;
            r7.zzg()
            r7.zzaw()
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r8)
            java.lang.String r0 = r8.zzA()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            boolean r0 = r8.zzn()
            com.google.android.gms.common.internal.Preconditions.checkState(r0)
            r7.zzI()
            com.google.android.gms.measurement.internal.zzic r0 = r7.zzu
            com.google.android.gms.common.util.Clock r1 = r0.zzaZ()
            long r1 = r1.currentTimeMillis()
            long r3 = r8.zzo()
            r0.zzc()
            long r5 = com.google.android.gms.measurement.internal.zzal.zzI()
            long r5 = r1 - r5
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 < 0) goto L45
            long r3 = r8.zzo()
            r0.zzc()
            long r5 = com.google.android.gms.measurement.internal.zzal.zzI()
            long r5 = r5 + r1
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L66
        L45:
            com.google.android.gms.measurement.internal.zzgu r0 = r0.zzaV()
            com.google.android.gms.measurement.internal.zzgs r0 = r0.zze()
            java.lang.String r3 = r8.zzA()
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzgu.zzl(r3)
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            long r4 = r8.zzo()
            java.lang.Long r2 = java.lang.Long.valueOf(r4)
            java.lang.String r4 = "Storing bundle outside of the max uploading time span. appId, now, timestamp"
            r0.zzd(r4, r3, r1, r2)
        L66:
            byte[] r0 = r8.zzcc()
            r1 = 0
            com.google.android.gms.measurement.internal.zzpg r2 = r7.zzg     // Catch: java.io.IOException -> L107
            com.google.android.gms.measurement.internal.zzpk r2 = r2.zzp()     // Catch: java.io.IOException -> L107
            byte[] r0 = r2.zzv(r0)     // Catch: java.io.IOException -> L107
            com.google.android.gms.measurement.internal.zzic r2 = r7.zzu
            com.google.android.gms.measurement.internal.zzgu r3 = r2.zzaV()
            com.google.android.gms.measurement.internal.zzgs r3 = r3.zzk()
            int r4 = r0.length
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.String r5 = "Saving bundle, size"
            r3.zzb(r5, r4)
            android.content.ContentValues r3 = new android.content.ContentValues
            r3.<init>()
            java.lang.String r4 = r8.zzA()
            java.lang.String r5 = "app_id"
            r3.put(r5, r4)
            long r4 = r8.zzo()
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            java.lang.String r5 = "bundle_end_timestamp"
            r3.put(r5, r4)
            java.lang.String r4 = "data"
            r3.put(r4, r0)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.String r0 = "has_realtime"
            r3.put(r0, r9)
            boolean r9 = r8.zzaa()
            if (r9 == 0) goto Lc5
            int r9 = r8.zzab()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.String r0 = "retry_count"
            r3.put(r0, r9)
        Lc5:
            android.database.sqlite.SQLiteDatabase r9 = r7.zze()     // Catch: android.database.sqlite.SQLiteException -> Lee
            java.lang.String r0 = "queue"
            r4 = 0
            long r3 = r9.insert(r0, r4, r3)     // Catch: android.database.sqlite.SQLiteException -> Lee
            r5 = -1
            int r9 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r9 != 0) goto Lec
            com.google.android.gms.measurement.internal.zzgu r9 = r2.zzaV()     // Catch: android.database.sqlite.SQLiteException -> Lee
            com.google.android.gms.measurement.internal.zzgs r9 = r9.zzb()     // Catch: android.database.sqlite.SQLiteException -> Lee
            java.lang.String r0 = "Failed to insert bundle (got -1). appId"
            java.lang.String r2 = r8.zzA()     // Catch: android.database.sqlite.SQLiteException -> Lee
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzgu.zzl(r2)     // Catch: android.database.sqlite.SQLiteException -> Lee
            r9.zzb(r0, r2)     // Catch: android.database.sqlite.SQLiteException -> Lee
            return r1
        Lec:
            r8 = 1
            return r8
        Lee:
            r9 = move-exception
            com.google.android.gms.measurement.internal.zzic r0 = r7.zzu
            com.google.android.gms.measurement.internal.zzgu r0 = r0.zzaV()
            com.google.android.gms.measurement.internal.zzgs r0 = r0.zzb()
            java.lang.String r8 = r8.zzA()
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzgu.zzl(r8)
            java.lang.String r2 = "Error storing bundle. appId"
            r0.zzc(r2, r8, r9)
            return r1
        L107:
            r9 = move-exception
            com.google.android.gms.measurement.internal.zzic r0 = r7.zzu
            com.google.android.gms.measurement.internal.zzgu r0 = r0.zzaV()
            com.google.android.gms.measurement.internal.zzgs r0 = r0.zzb()
            java.lang.String r8 = r8.zzA()
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzgu.zzl(r8)
            java.lang.String r2 = "Data loss. Failed to serialize bundle. appId"
            r0.zzc(r2, r8, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzav.zzz(com.google.android.gms.internal.measurement.zzid, boolean):boolean");
    }
}
