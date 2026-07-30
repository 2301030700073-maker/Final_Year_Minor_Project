package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzno;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: hP, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2868hP extends WU {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RU f13317do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4096zP f13318do;

    /* renamed from: do, reason: not valid java name */
    public static final String[] f13309do = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: if, reason: not valid java name */
    public static final String[] f13313if = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: for, reason: not valid java name */
    public static final String[] f13311for = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"};

    /* renamed from: new, reason: not valid java name */
    public static final String[] f13314new = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: try, reason: not valid java name */
    public static final String[] f13316try = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: case, reason: not valid java name */
    public static final String[] f13308case = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: else, reason: not valid java name */
    public static final String[] f13310else = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: goto, reason: not valid java name */
    public static final String[] f13312goto = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: this, reason: not valid java name */
    public static final String[] f13315this = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};

    /* renamed from: break, reason: not valid java name */
    public static final String[] f13307break = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    public C2868hP(ZU zu) {
        super(zu);
        this.f13317do = new RU(mo2257new());
        this.f13318do = new C4096zP(this, mo2255for());
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m6796volatile(ContentValues contentValues, Object obj) {
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

    public final void A(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        mo1960catch();
        m2733super();
        try {
            m6806native().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7370new("Error deleting user property. appId", C3156jS.m7106while(str), m7573goto().m6451else(str2), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3628rT B(java.lang.String r7) {
        /*
            r6 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r7)
            r6.mo1960catch()
            r6.m2733super()
            java.lang.String r0 = "select consent_state, consent_source from consent_settings where app_id=? limit 1;"
            r1 = 1
            java.lang.String[] r2 = new java.lang.String[r1]
            r3 = 0
            r2[r3] = r7
            r7 = 0
            android.database.sqlite.SQLiteDatabase r4 = r6.m6806native()     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L45
            android.database.Cursor r0 = r4.rawQuery(r0, r2)     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L45
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            if (r2 != 0) goto L2f
            jS r1 = r6.mo2249case()     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            lS r1 = r1.f13723this     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            java.lang.String r2 = "No data found"
            r1.m7369if(r2)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            r0.close()
            goto L58
        L2f:
            java.lang.String r2 = r0.getString(r3)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            rT r7 = defpackage.C3628rT.m7955new(r1, r2)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            r0.close()
            goto L58
        L3f:
            r7 = move-exception
            goto L5d
        L41:
            r1 = move-exception
            goto L48
        L43:
            r0 = move-exception
            goto L60
        L45:
            r0 = move-exception
            r1 = r0
            r0 = r7
        L48:
            jS r2 = r6.mo2249case()     // Catch: java.lang.Throwable -> L3f
            lS r2 = r2.f13717do     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = "Error querying database."
            r2.m7368for(r3, r1)     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L58
            r0.close()
        L58:
            if (r7 != 0) goto L5c
            rT r7 = defpackage.C3628rT.f15276do
        L5c:
            return r7
        L5d:
            r5 = r0
            r0 = r7
            r7 = r5
        L60:
            if (r7 == 0) goto L65
            r7.close()
        L65:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.B(java.lang.String):rT");
    }

    public final void C(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        mo1960catch();
        m2733super();
        try {
            m6806native().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str2), "Error deleting snapshot. appId", e);
        }
    }

    public final C2874hV D(String str) {
        Cursor cursor;
        Preconditions.checkNotEmpty(str);
        mo1960catch();
        m2733super();
        Cursor cursor2 = null;
        if (zzpu.zza() && !m7572else().m3012throws(null, C3684sQ.N)) {
            return null;
        }
        try {
            cursor = m6806native().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count"}, "app_id=? AND NOT " + l(), new String[]{str}, null, null, "creation_timestamp ASC", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    String string = cursor.getString(3);
                    if (TextUtils.isEmpty(string)) {
                        mo2249case().f13720goto.m7369if("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
                        cursor.close();
                        return null;
                    }
                    try {
                        zzfy.zzj.zza zzaVar = (zzfy.zzj.zza) C3159jV.m7118default(zzfy.zzj.zzb(), cursor.getBlob(2));
                        int i = C4122zt.m8821const(3)[cursor.getInt(5)];
                        if ((i == 3 || i == 1) && cursor.getInt(6) > 0) {
                            ArrayList arrayList = new ArrayList();
                            Iterator<zzfy.zzk> it = zzaVar.zzd().iterator();
                            while (it.hasNext()) {
                                zzfy.zzk.zza zzcd = it.next().zzcd();
                                zzcd.zzi(cursor.getInt(6));
                                arrayList.add((zzfy.zzk) ((zzjt) zzcd.zzai()));
                            }
                            zzaVar.zzb();
                            zzaVar.zza(arrayList);
                        }
                        HashMap hashMap = new HashMap();
                        String string2 = cursor.getString(4);
                        if (string2 != null) {
                            String[] split = string2.split("\r\n");
                            int length = split.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length) {
                                    break;
                                }
                                String str2 = split[i2];
                                if (str2.isEmpty()) {
                                    break;
                                }
                                String[] split2 = str2.split("=", 2);
                                if (split2.length != 2) {
                                    mo2249case().f13717do.m7368for("Invalid upload header: ", str2);
                                    break;
                                }
                                hashMap.put(split2[0], split2[1]);
                                i2++;
                            }
                        }
                        C2874hV c2874hV = new C2874hV(cursor.getLong(0), (zzfy.zzj) ((zzjt) zzaVar.zzai()), string, hashMap, i);
                        cursor.close();
                        return c2874hV;
                    } catch (IOException e) {
                        mo2249case().f13717do.m7367do(str, "Failed to queued MeasurementBatch from upload_queue. appId", e);
                        cursor.close();
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                mo2249case().f13717do.m7367do(str, "Error to querying MeasurementBatch from upload_queue. appId", e);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final List<C3218kV> E(String str) {
        Preconditions.checkNotEmpty(str);
        mo1960catch();
        m2733super();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = m6806native().query("user_attributes", new String[]{FacebookRequestErrorClassification.KEY_NAME, "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                do {
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    if (string2 == null) {
                        string2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    String str2 = string2;
                    long j = cursor.getLong(2);
                    Object m6816throws = m6816throws(cursor, 3);
                    if (m6816throws == null) {
                        mo2249case().f13717do.m7368for("Read invalid user property value, ignoring it. appId", C3156jS.m7106while(str));
                    } else {
                        arrayList.add(new C3218kV(str, str2, string, j, m6816throws));
                    }
                } while (cursor.moveToNext());
                cursor.close();
                return arrayList;
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error querying user properties. appId", e);
                List<C3218kV> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void F() {
        m2733super();
        m6806native().beginTransaction();
    }

    public final void G(String str) {
        mo1960catch();
        m2733super();
        try {
            m6806native().execSQL("delete from default_event_params where app_id=?", new String[]{str});
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7368for("Error clearing default event params", e);
        }
    }

    public final void H(String str) {
        C2928iQ w;
        C("events_snapshot", str);
        Cursor cursor = null;
        try {
            try {
                cursor = m6806native().query("events", (String[]) Collections.singletonList(FacebookRequestErrorClassification.KEY_NAME).toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return;
                }
                do {
                    String string = cursor.getString(0);
                    if (string != null && (w = w(str, string)) != null) {
                        a("events_snapshot", w);
                    }
                } while (cursor.moveToNext());
                cursor.close();
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error creating snapshot. appId", e);
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0098, code lost:
    
        if ("_v".equals(r14) != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c2 A[LOOP:0: B:17:0x0064->B:36:0x00c2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac A[EDGE_INSN: B:37:0x00ac->B:38:0x00ac BREAK  A[LOOP:0: B:17:0x0064->B:36:0x00c2], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0117 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void I(java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.I(java.lang.String):void");
    }

    public final boolean J(String str) {
        return (!zzpu.zza() || m7572else().m3012throws(null, C3684sQ.N)) && n(C4122zt.m8824for("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT ", l()), new String[]{str}) != 0;
    }

    public final void K() {
        m2733super();
        m6806native().endTransaction();
    }

    public final void L() {
        int delete;
        mo1960catch();
        m2733super();
        if (k()) {
            ZU zu = ((XU) this).f4519do;
            long m8802do = zu.f4829do.f620do.m8802do();
            long elapsedRealtime = mo2257new().elapsedRealtime();
            if (Math.abs(elapsedRealtime - m8802do) > C3684sQ.f15462extends.m2158do(null).longValue()) {
                zu.f4829do.f620do.m8803if(elapsedRealtime);
                mo1960catch();
                m2733super();
                if (!k() || (delete = m6806native().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(mo2257new().currentTimeMillis()), String.valueOf(ZO.m2995extends())})) <= 0) {
                    return;
                }
                mo2249case().f13723this.m7368for("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }

    public final void M() {
        m2733super();
        m6806native().setTransactionSuccessful();
    }

    public final void a(String str, C2928iQ c2928iQ) {
        Preconditions.checkNotNull(c2928iQ);
        mo1960catch();
        m2733super();
        ContentValues contentValues = new ContentValues();
        String str2 = c2928iQ.f13506do;
        contentValues.put("app_id", str2);
        contentValues.put(FacebookRequestErrorClassification.KEY_NAME, c2928iQ.f13511if);
        contentValues.put("lifetime_count", Long.valueOf(c2928iQ.f13503do));
        contentValues.put("current_bundle_count", Long.valueOf(c2928iQ.f13509if));
        contentValues.put("last_fire_timestamp", Long.valueOf(c2928iQ.f13512new));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c2928iQ.f13513try));
        contentValues.put("last_bundled_day", c2928iQ.f13505do);
        contentValues.put("last_sampled_complex_event_id", c2928iQ.f13510if);
        contentValues.put("last_sampling_rate", c2928iQ.f13508for);
        contentValues.put("current_session_count", Long.valueOf(c2928iQ.f13507for));
        Boolean bool = c2928iQ.f13504do;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m6806native().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                mo2249case().f13717do.m7368for("Failed to insert/update event aggregates (got -1). appId", C3156jS.m7106while(str2));
            }
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str2), "Error storing event aggregates. appId", e);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public final C3566qP m6797abstract(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        Preconditions.checkNotEmpty(str);
        mo1960catch();
        m2733super();
        String[] strArr = {str};
        C3566qP c3566qP = new C3566qP();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase m6806native = m6806native();
                Cursor query = m6806native.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    mo2249case().f13722new.m7368for("Not updating daily counts, app is not known. appId", C3156jS.m7106while(str));
                    query.close();
                    return c3566qP;
                }
                if (query.getLong(0) == j) {
                    c3566qP.f15109if = query.getLong(1);
                    c3566qP.f15106do = query.getLong(2);
                    c3566qP.f15108for = query.getLong(3);
                    c3566qP.f15110new = query.getLong(4);
                    c3566qP.f15111try = query.getLong(5);
                    c3566qP.f15105case = query.getLong(6);
                    c3566qP.f15107else = query.getLong(7);
                }
                if (z) {
                    c3566qP.f15109if += j2;
                }
                if (z2) {
                    c3566qP.f15106do += j2;
                }
                if (z3) {
                    c3566qP.f15108for += j2;
                }
                if (z4) {
                    c3566qP.f15110new += j2;
                }
                if (z5) {
                    c3566qP.f15111try += j2;
                }
                if (z6) {
                    c3566qP.f15105case += j2;
                }
                if (z7) {
                    c3566qP.f15107else += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(c3566qP.f15106do));
                contentValues.put("daily_events_count", Long.valueOf(c3566qP.f15109if));
                contentValues.put("daily_conversions_count", Long.valueOf(c3566qP.f15108for));
                contentValues.put("daily_error_events_count", Long.valueOf(c3566qP.f15110new));
                contentValues.put("daily_realtime_events_count", Long.valueOf(c3566qP.f15111try));
                contentValues.put("daily_realtime_dcu_count", Long.valueOf(c3566qP.f15105case));
                contentValues.put("daily_registered_triggers_count", Long.valueOf(c3566qP.f15107else));
                m6806native.update("apps", contentValues, "app_id=?", strArr);
                query.close();
                return c3566qP;
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error updating daily counts. appId", e);
                if (0 != 0) {
                    cursor.close();
                }
                return c3566qP;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void b(String str, C3628rT c3628rT) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(c3628rT);
        mo1960catch();
        m2733super();
        r(str, B(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", c3628rT.m7962super());
        m6813strictfp(contentValues);
    }

    public final void c(List<Long> list) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (k()) {
            String m6908case = Cif.m6908case("(", TextUtils.join(",", list), ")");
            if (n("SELECT COUNT(1) FROM queue WHERE rowid IN " + m6908case + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                mo2249case().f13722new.m7369if("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                m6806native().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + m6908case + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7368for("Error incrementing retry count. error", e);
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final C3566qP m6798continue(long j, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        return m6797abstract(j, str, 1L, false, false, z, false, z2, z3, z4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0043, code lost:
    
        if (r6.m3033interface(r1).m7957break(r4) != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0373  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(defpackage.UR r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 1011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.d(UR, boolean):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m6799default(long r5) {
        /*
            r4 = this;
            r4.mo1960catch()
            r4.m2733super()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.m6806native()     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L38 java.lang.Throwable -> L4f
            if (r1 != 0) goto L30
            jS r6 = r4.mo2249case()     // Catch: android.database.sqlite.SQLiteException -> L38 java.lang.Throwable -> L4f
            lS r6 = r6.f13723this     // Catch: android.database.sqlite.SQLiteException -> L38 java.lang.Throwable -> L4f
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.m7369if(r1)     // Catch: android.database.sqlite.SQLiteException -> L38 java.lang.Throwable -> L4f
            r5.close()
            return r0
        L30:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L38 java.lang.Throwable -> L4f
            r5.close()
            return r6
        L38:
            r6 = move-exception
            goto L3e
        L3a:
            r6 = move-exception
            goto L51
        L3c:
            r6 = move-exception
            r5 = r0
        L3e:
            jS r1 = r4.mo2249case()     // Catch: java.lang.Throwable -> L4f
            lS r1 = r1.f13717do     // Catch: java.lang.Throwable -> L4f
            java.lang.String r2 = "Error selecting expired configs"
            r1.m7368for(r2, r6)     // Catch: java.lang.Throwable -> L4f
            if (r5 == 0) goto L4e
            r5.close()
        L4e:
            return r0
        L4f:
            r6 = move-exception
            r0 = r5
        L51:
            if (r0 == 0) goto L56
            r0.close()
        L56:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.m6799default(long):java.lang.String");
    }

    public final boolean e(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        mo1960catch();
        m2733super();
        String str = zzaeVar.f10300break;
        Preconditions.checkNotNull(str);
        if (y(str, zzaeVar.f10305do.f10352break) == null && n("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzaeVar.f10301catch);
        contentValues.put(FacebookRequestErrorClassification.KEY_NAME, zzaeVar.f10305do.f10352break);
        m6796volatile(contentValues, Preconditions.checkNotNull(zzaeVar.f10305do.f()));
        contentValues.put("active", Boolean.valueOf(zzaeVar.f10306do));
        contentValues.put("trigger_event_name", zzaeVar.f10302class);
        contentValues.put("trigger_timeout", Long.valueOf(zzaeVar.f10309if));
        m7571break();
        contentValues.put("timed_out_event", C3395nV.m(zzaeVar.f10304do));
        contentValues.put("creation_timestamp", Long.valueOf(zzaeVar.f10303do));
        m7571break();
        contentValues.put("triggered_event", C3395nV.m(zzaeVar.f10310if));
        contentValues.put("triggered_timestamp", Long.valueOf(zzaeVar.f10305do.f10355do));
        contentValues.put("time_to_live", Long.valueOf(zzaeVar.f10307for));
        m7571break();
        contentValues.put("expired_event", C3395nV.m(zzaeVar.f10308for));
        try {
            if (m6806native().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                mo2249case().f13717do.m7368for("Failed to insert/update conditional user property (got -1)", C3156jS.m7106while(str));
            }
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error storing conditional user property", e);
        }
        return true;
    }

    /* renamed from: extends, reason: not valid java name */
    public final String m6800extends(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                cursor = m6806native().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                String string = cursor.getString(0);
                cursor.close();
                return string;
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(str, "Database error", e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final boolean f(String str, int i, zzfo.zzb zzbVar) {
        m2733super();
        mo1960catch();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (zzbVar.zzf().isEmpty()) {
            mo2249case().f13722new.m7370new("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", C3156jS.m7106while(str), Integer.valueOf(i), String.valueOf(zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null));
            return false;
        }
        byte[] zzca = zzbVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzf());
        contentValues.put("session_scoped", zzbVar.zzm() ? Boolean.valueOf(zzbVar.zzj()) : null);
        contentValues.put("data", zzca);
        try {
            if (m6806native().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            mo2249case().f13717do.m7368for("Failed to insert event filter (got -1). appId", C3156jS.m7106while(str));
            return true;
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error storing event filter. appId", e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x016f A[EDGE_INSN: B:60:0x016f->B:26:0x016f BREAK  A[LOOP:0: B:17:0x0054->B:73:0x016c], SYNTHETIC] */
    /* renamed from: finally, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List m6801finally(int r19, int r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.m6801finally(int, int, java.lang.String):java.util.List");
    }

    public final boolean g(String str, int i, zzfo.zze zzeVar) {
        m2733super();
        mo1960catch();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (zzeVar.zze().isEmpty()) {
            mo2249case().f13722new.m7370new("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", C3156jS.m7106while(str), Integer.valueOf(i), String.valueOf(zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null));
            return false;
        }
        byte[] zzca = zzeVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null);
        contentValues.put("property_name", zzeVar.zze());
        contentValues.put("session_scoped", zzeVar.zzj() ? Boolean.valueOf(zzeVar.zzh()) : null);
        contentValues.put("data", zzca);
        try {
            if (m6806native().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            mo2249case().f13717do.m7368for("Failed to insert property filter (got -1). appId", C3156jS.m7106while(str));
            return false;
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error storing property filter. appId", e);
            return false;
        }
    }

    public final boolean h(C3213kQ c3213kQ, long j, boolean z) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(c3213kQ);
        String str = c3213kQ.f13984do;
        Preconditions.checkNotEmpty(str);
        byte[] zzca = m2832class().m7136switch(c3213kQ).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put(FacebookRequestErrorClassification.KEY_NAME, c3213kQ.f13987if);
        contentValues.put("timestamp", Long.valueOf(c3213kQ.f13982do));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", zzca);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m6806native().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            mo2249case().f13717do.m7368for("Failed to insert raw event (got -1). appId", C3156jS.m7106while(str));
            return false;
        } catch (SQLiteException e) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(str), "Error storing raw event. appId", e);
            return false;
        }
    }

    public final boolean i(C3218kV c3218kV) {
        Preconditions.checkNotNull(c3218kV);
        mo1960catch();
        m2733super();
        String str = c3218kV.f14002do;
        String str2 = c3218kV.f14003for;
        C3218kV y = y(str, str2);
        String str3 = c3218kV.f14004if;
        if (y == null) {
            if (C3395nV.F(str2)) {
                if (n("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= m7572else().m2997const(str, C3684sQ.f15476protected, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(str2) && n("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, str3}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", str3);
        contentValues.put(FacebookRequestErrorClassification.KEY_NAME, str2);
        contentValues.put("set_timestamp", Long.valueOf(c3218kV.f14000do));
        m6796volatile(contentValues, c3218kV.f14001do);
        try {
            if (m6806native().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                mo2249case().f13717do.m7368for("Failed to insert/update user property (got -1). appId", C3156jS.m7106while(str));
            }
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error storing user property. appId", e);
        }
        return true;
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m6802implements(String str, zzno zznoVar) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(zznoVar);
        Preconditions.checkNotEmpty(str);
        long currentTimeMillis = mo2257new().currentTimeMillis();
        SR<Long> sr = C3684sQ.u;
        long longValue = currentTimeMillis - sr.m2158do(null).longValue();
        long j = zznoVar.f10318do;
        if (j < longValue || j > sr.m2158do(null).longValue() + currentTimeMillis) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13722new.m7370new("Storing trigger URI outside of the max retention time span. appId, now, timestamp", C3156jS.m7106while(str), Long.valueOf(currentTimeMillis), Long.valueOf(j));
        }
        mo2249case().f13723this.m7369if("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zznoVar.f10317break);
        contentValues.put("source", Integer.valueOf(zznoVar.f10319for));
        contentValues.put("timestamp_millis", Long.valueOf(j));
        try {
            if (m6806native().insert("trigger_uris", null, contentValues) == -1) {
                mo2249case().f13717do.m7368for("Failed to insert trigger URI (got -1). appId", C3156jS.m7106while(str));
            }
        } catch (SQLiteException e) {
            C3156jS mo2249case2 = mo2249case();
            mo2249case2.f13717do.m7367do(C3156jS.m7106while(str), "Error storing trigger URI. appId", e);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final long m6803import() {
        Cursor cursor = null;
        try {
            try {
                cursor = m6806native().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return -1L;
                }
                long j = cursor.getLong(0);
                cursor.close();
                return j;
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7368for("Error querying raw events", e);
                if (cursor != null) {
                    cursor.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m6804instanceof(String str, Long l, long j, zzfy.zzf zzfVar) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(zzfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] zzca = zzfVar.zzca();
        C3156jS mo2249case = mo2249case();
        mo2249case.f13723this.m7367do(m7573goto().m6452for(str), "Saving complex main event, appId, data size", Integer.valueOf(zzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", zzca);
        try {
            if (m6806native().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                mo2249case().f13717do.m7368for("Failed to insert complex main event (got -1). appId", C3156jS.m7106while(str));
            }
        } catch (SQLiteException e) {
            C3156jS mo2249case2 = mo2249case();
            mo2249case2.f13717do.m7367do(C3156jS.m7106while(str), "Error storing complex main event. appId", e);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m6805interface(zzfy.zzk zzkVar, boolean z) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        Preconditions.checkState(zzkVar.zzbj());
        L();
        long currentTimeMillis = mo2257new().currentTimeMillis();
        if (zzkVar.zzm() < currentTimeMillis - ZO.m2995extends() || zzkVar.zzm() > ZO.m2995extends() + currentTimeMillis) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13722new.m7370new("Storing bundle outside of the max uploading time span. appId, now, timestamp", C3156jS.m7106while(zzkVar.zzz()), Long.valueOf(currentTimeMillis), Long.valueOf(zzkVar.zzm()));
        }
        try {
            byte[] h = m2832class().h(zzkVar.zzca());
            C3156jS mo2249case2 = mo2249case();
            mo2249case2.f13723this.m7368for("Saving bundle, size", Integer.valueOf(h.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzkVar.zzz());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzkVar.zzm()));
            contentValues.put("data", h);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzkVar.zzbq()) {
                contentValues.put("retry_count", Integer.valueOf(zzkVar.zzg()));
            }
            try {
                if (m6806native().insert("queue", null, contentValues) == -1) {
                    mo2249case().f13717do.m7368for("Failed to insert bundle (got -1). appId", C3156jS.m7106while(zzkVar.zzz()));
                }
            } catch (SQLiteException e) {
                C3156jS mo2249case3 = mo2249case();
                mo2249case3.f13717do.m7367do(C3156jS.m7106while(zzkVar.zzz()), "Error storing bundle. appId", e);
            }
        } catch (IOException e2) {
            C3156jS mo2249case4 = mo2249case();
            mo2249case4.f13717do.m7367do(C3156jS.m7106while(zzkVar.zzz()), "Data loss. Failed to serialize bundle. appId", e2);
        }
    }

    public final void j(String str, zzfy.zzj zzjVar, String str2, Map map, int i) {
        int delete;
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotEmpty(str);
        if (!zzpu.zza() || m7572else().m3012throws(null, C3684sQ.N)) {
            mo1960catch();
            m2733super();
            if (k()) {
                ZU zu = ((XU) this).f4519do;
                long m8802do = zu.f4829do.f622if.m8802do();
                long elapsedRealtime = mo2257new().elapsedRealtime();
                if (Math.abs(elapsedRealtime - m8802do) > C3684sQ.f15462extends.m2158do(null).longValue()) {
                    zu.f4829do.f622if.m8803if(elapsedRealtime);
                    mo1960catch();
                    m2733super();
                    if (k() && (delete = m6806native().delete("upload_queue", l(), new String[0])) > 0) {
                        mo2249case().f13723this.m7368for("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(((String) entry.getKey()) + "=" + ((String) entry.getValue()));
            }
            byte[] zzca = zzjVar.zzca();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("measurement_batch", zzca);
            contentValues.put("upload_uri", str2);
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            if (size > 0) {
                sb.append((CharSequence) arrayList.get(0));
                int i2 = 1;
                while (i2 < size) {
                    sb.append((CharSequence) "\r\n");
                    Object obj = arrayList.get(i2);
                    i2++;
                    sb.append((CharSequence) obj);
                }
            }
            contentValues.put("upload_headers", sb.toString());
            if (i == 0) {
                throw null;
            }
            contentValues.put("upload_type", Integer.valueOf(i - 1));
            contentValues.put("creation_timestamp", Long.valueOf(mo2257new().currentTimeMillis()));
            contentValues.put("retry_count", (Integer) 0);
            try {
                if (m6806native().insert("upload_queue", null, contentValues) == -1) {
                    mo2249case().f13717do.m7368for("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
                }
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(str, "Error storing MeasurementBatch to upload_queue. appId", e);
            }
        }
    }

    public final boolean k() {
        return mo2255for().getDatabasePath("google_app_measurement.db").exists();
    }

    public final String l() {
        long currentTimeMillis = mo2257new().currentTimeMillis();
        long longValue = C3684sQ.f15480strictfp.m2158do(null).longValue();
        StringBuilder sb = new StringBuilder("(upload_type = 1 AND (ABS(creation_timestamp - ");
        sb.append(currentTimeMillis);
        sb.append(") > CAST(");
        String m8818case = C4122zt.m8818case(sb, longValue, " AS INTEGER)))");
        long m2995extends = ZO.m2995extends();
        StringBuilder sb2 = new StringBuilder("(upload_type != 1 AND (ABS(creation_timestamp - ");
        sb2.append(currentTimeMillis);
        sb2.append(") > CAST(");
        return V1.m2499else("(", m8818case, " OR ", C4122zt.m8818case(sb2, m2995extends, " AS INTEGER)))"), ")");
    }

    public final long m(String str) {
        long m6814switch;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty("first_open_count");
        mo1960catch();
        m2733super();
        SQLiteDatabase m6806native = m6806native();
        m6806native.beginTransaction();
        long j = 0;
        try {
            try {
                try {
                    m6814switch = m6814switch("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
                    if (m6814switch == -1) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("app_id", str);
                        contentValues.put("first_open_count", (Integer) 0);
                        contentValues.put("previous_install_count", (Integer) 0);
                        if (m6806native.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Failed to insert column (got -1). appId", "first_open_count");
                            m6806native.endTransaction();
                            return -1L;
                        }
                        m6814switch = 0;
                    }
                } catch (SQLiteException e) {
                    e = e;
                }
                try {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", Long.valueOf(1 + m6814switch));
                    if (m6806native.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                        mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Failed to update column (got 0). appId", "first_open_count");
                        m6806native.endTransaction();
                        return -1L;
                    }
                    m6806native.setTransactionSuccessful();
                    m6806native.endTransaction();
                    return m6814switch;
                } catch (SQLiteException e2) {
                    e = e2;
                    j = m6814switch;
                    mo2249case().f13717do.m7370new("Error inserting column. appId", C3156jS.m7106while(str), "first_open_count", e);
                    m6806native.endTransaction();
                    return j;
                }
            } catch (Throwable th) {
                th = th;
                m6806native.endTransaction();
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            m6806native.endTransaction();
            throw th;
        }
    }

    public final long n(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m6806native().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                rawQuery.close();
                return j;
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(str, "Database error", e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final SQLiteDatabase m6806native() {
        mo1960catch();
        try {
            return this.f13318do.getWritableDatabase();
        } catch (SQLiteException e) {
            mo2249case().f13722new.m7368for("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0097, code lost:
    
        mo2249case().f13717do.m7368for("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<defpackage.C3218kV> o(java.lang.String r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.o(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final void p(Bundle bundle, String str) {
        mo1960catch();
        m2733super();
        byte[] zzca = m2832class().m7136switch(new C3213kQ((TS) ((C3393nT) this).f14527do, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, str, "dep", 0L, 0L, bundle)).zzca();
        C3156jS mo2249case = mo2249case();
        mo2249case.f13723this.m7367do(m7573goto().m6452for(str), "Saving default event parameters, appId, data size", Integer.valueOf(zzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", zzca);
        try {
            if (m6806native().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                mo2249case().f13717do.m7368for("Failed to insert default event parameters (got -1). appId", C3156jS.m7106while(str));
            }
        } catch (SQLiteException e) {
            C3156jS mo2249case2 = mo2249case();
            mo2249case2.f13717do.m7367do(C3156jS.m7106while(str), "Error storing default event parameters. appId", e);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final List<zzae> m6807package(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        mo1960catch();
        m2733super();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb.append(" and name glob ?");
        }
        return m6808private(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        mo2249case().f13717do.m7368for("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: private, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzae> m6808private(java.lang.String r25, java.lang.String[] r26) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.m6808private(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m6809protected(Long l) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(l);
        if ((!zzpu.zza() || m7572else().m3012throws(null, C3684sQ.N)) && k()) {
            if (n("SELECT COUNT(1) FROM upload_queue WHERE rowid = " + l + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                mo2249case().f13722new.m7369if("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                m6806native().execSQL("UPDATE upload_queue SET retry_count = retry_count + 1 WHERE rowid = " + l + " AND retry_count < 2147483647");
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7368for("Error incrementing retry count. error", e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003b  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /* renamed from: public, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m6810public() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.m6806native()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L25
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L38
            if (r2 == 0) goto L1a
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L38
            r0.close()
            return r1
        L1a:
            r0.close()
            return r1
        L1e:
            r2 = move-exception
            goto L27
        L20:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L39
        L25:
            r2 = move-exception
            r0 = r1
        L27:
            jS r3 = r6.mo2249case()     // Catch: java.lang.Throwable -> L38
            lS r3 = r3.f13717do     // Catch: java.lang.Throwable -> L38
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.m7368for(r4, r2)     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L37
            r0.close()
        L37:
            return r1
        L38:
            r1 = move-exception
        L39:
            if (r0 == 0) goto L3e
            r0.close()
        L3e:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.m6810public():java.lang.String");
    }

    public final void q(String str, ArrayList arrayList) {
        Preconditions.checkNotEmpty(str);
        m2733super();
        mo1960catch();
        SQLiteDatabase m6806native = m6806native();
        try {
            long n = n("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(AdError.SERVER_ERROR_CODE, m7572else().m3013while(str, C3684sQ.f15471interface)));
            if (n <= max) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < arrayList.size(); i++) {
                Integer num = (Integer) arrayList.get(i);
                if (num == null) {
                    return;
                }
                arrayList2.add(Integer.toString(num.intValue()));
            }
            m6806native.delete("audience_filter_values", Cif.m6908case("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ", Cif.m6908case("(", TextUtils.join(",", arrayList2), ")"), " order by rowid desc limit -1 offset ?)"), new String[]{str, Integer.toString(max)});
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Database error querying filters. appId", e);
        }
    }

    public final void r(String str, C3628rT c3628rT) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(c3628rT);
        mo1960catch();
        m2733super();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", c3628rT.m7962super());
        contentValues.put("consent_source", Integer.valueOf(c3628rT.f15277do));
        m6813strictfp(contentValues);
    }

    /* renamed from: return, reason: not valid java name */
    public final long m6811return(zzfy.zzk zzkVar) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        byte[] zzca = zzkVar.zzca();
        long m7132native = m2832class().m7132native(zzca);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzkVar.zzz());
        contentValues.put("metadata_fingerprint", Long.valueOf(m7132native));
        contentValues.put("metadata", zzca);
        try {
            m6806native().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return m7132native;
        } catch (SQLiteException e) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(zzkVar.zzz()), "Error storing raw event metadata. appId", e);
            throw e;
        }
    }

    public final long s(String str) {
        Preconditions.checkNotEmpty(str);
        mo1960catch();
        m2733super();
        return m6814switch("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
    }

    /* renamed from: static, reason: not valid java name */
    public final long m6812static(String str) {
        Preconditions.checkNotEmpty(str);
        mo1960catch();
        m2733super();
        try {
            return m6806native().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, m7572else().m3013while(str, C3684sQ.f15485throw))))});
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error deleting over the limit events. appId", e);
            return 0L;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m6813strictfp(ContentValues contentValues) {
        try {
            SQLiteDatabase m6806native = m6806native();
            if (contentValues.getAsString("app_id") == null) {
                mo2249case().f13719for.m7368for("Value of the primary key is not set.", C3156jS.m7106while("app_id"));
            } else if (m6806native.update("consent_settings", contentValues, "app_id = ?", new String[]{r3}) == 0 && m6806native.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                mo2249case().f13717do.m7367do(C3156jS.m7106while("consent_settings"), "Failed to insert/update table (got -1). key", C3156jS.m7106while("app_id"));
            }
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7370new("Error storing into table. key", C3156jS.m7106while("consent_settings"), C3156jS.m7106while("app_id"), e);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final long m6814switch(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            try {
                cursor = m6806native().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return j;
                }
                long j2 = cursor.getLong(0);
                cursor.close();
                return j2;
            } catch (SQLiteException e) {
                mo2249case().f13717do.m7367do(str, "Database error", e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final void m6815synchronized(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        mo1960catch();
        m2733super();
        try {
            m6806native().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo2249case().f13717do.m7370new("Error deleting conditional property", C3156jS.m7106while(str), m7573goto().m6451else(str2), e);
        }
    }

    public final long t(String str) {
        Preconditions.checkNotEmpty(str);
        return m6814switch("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* renamed from: throws, reason: not valid java name */
    public final Object m6816throws(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            mo2249case().f13717do.m7369if("Loaded invalid null value from database");
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
        if (type == 4) {
            mo2249case().f13717do.m7369if("Loaded invalid blob type value, ignoring it");
            return null;
        }
        C3156jS mo2249case = mo2249case();
        mo2249case.f13717do.m7368for("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
        return null;
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m6817transient(String str, Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        mo1960catch();
        m2733super();
        C3801uP c3801uP = new C3801uP(this, str);
        for (List<C3448oP> m8388do = c3801uP.m8388do(); !m8388do.isEmpty(); m8388do = c3801uP.m8388do()) {
            for (C3448oP c3448oP : m8388do) {
                C3159jV m2832class = m2832class();
                zzfy.zzf zzfVar = c3448oP.f14784do;
                Bundle bundle2 = new Bundle();
                for (zzfy.zzh zzhVar : zzfVar.zzh()) {
                    if (zzhVar.zzj()) {
                        bundle2.putDouble(zzhVar.zzg(), zzhVar.zza());
                    } else if (zzhVar.zzk()) {
                        bundle2.putFloat(zzhVar.zzg(), zzhVar.zzb());
                    } else if (zzhVar.zzl()) {
                        bundle2.putLong(zzhVar.zzg(), zzhVar.zzd());
                    } else if (zzhVar.zzn()) {
                        bundle2.putString(zzhVar.zzg(), zzhVar.zzh());
                    } else if (zzhVar.zzi().isEmpty()) {
                        m2832class.mo2249case().f13717do.m7368for("Unexpected parameter type for parameter", zzhVar);
                    } else {
                        bundle2.putParcelableArray(zzhVar.zzg(), C3159jV.i(zzhVar.zzi()));
                    }
                }
                String string = bundle2.getString("_o");
                bundle2.remove("_o");
                zzfVar.zzg();
                if (string == null) {
                    string = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                zzfVar.zzd();
                m7571break().m7588private(bundle2, bundle);
                TS ts = (TS) ((C3393nT) this).f14527do;
                zzfy.zzf zzfVar2 = c3448oP.f14784do;
                C3213kQ c3213kQ = new C3213kQ(ts, string, str, zzfVar2.zzg(), zzfVar2.zzd(), zzfVar2.zzc(), bundle2);
                long j = c3448oP.f14783do;
                mo1960catch();
                m2733super();
                Preconditions.checkNotNull(c3213kQ);
                String str2 = c3213kQ.f13984do;
                Preconditions.checkNotEmpty(str2);
                byte[] zzca = m2832class().m7136switch(c3213kQ).zzca();
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str2);
                contentValues.put(FacebookRequestErrorClassification.KEY_NAME, c3213kQ.f13987if);
                contentValues.put("timestamp", Long.valueOf(c3213kQ.f13982do));
                contentValues.put("metadata_fingerprint", Long.valueOf(c3448oP.f14786if));
                contentValues.put("data", zzca);
                contentValues.put("realtime", Integer.valueOf(c3448oP.f14785do ? 1 : 0));
                try {
                    long update = m6806native().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j)});
                    if (update != 1) {
                        mo2249case().f13717do.m7367do(C3156jS.m7106while(str2), "Failed to update raw event. appId, updatedRows", Long.valueOf(update));
                    }
                } catch (SQLiteException e) {
                    mo2249case().f13717do.m7367do(C3156jS.m7106while(str2), "Error updating raw event. appId", e);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzae u(java.lang.String r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.u(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzae");
    }

    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0143: MOVE (r18 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]) (LINE:324), block:B:69:0x0143 */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C2928iQ v(java.lang.String r26, java.lang.String r27, java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.v(java.lang.String, java.lang.String, java.lang.String):iQ");
    }

    public final C2928iQ w(String str, String str2) {
        return v("events", str, str2);
    }

    @Override // defpackage.WU
    /* renamed from: while */
    public final boolean mo372while() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03e0 A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x046d A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TRY_LEAVE, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03b4 A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TRY_LEAVE, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0374 A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x01f4 A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x018c A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0203 A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0268 A[Catch: SQLiteException -> 0x02c7, all -> 0x04ad, TryCatch #13 {all -> 0x04ad, blocks: (B:5:0x0081, B:10:0x008b, B:13:0x0094, B:16:0x009c, B:18:0x00a8, B:20:0x00b9, B:22:0x00c6, B:24:0x00d2, B:26:0x00e6, B:28:0x0128, B:32:0x0132, B:39:0x0182, B:42:0x0191, B:44:0x01c0, B:53:0x01e2, B:56:0x01f8, B:58:0x0203, B:59:0x0215, B:61:0x021b, B:63:0x0227, B:65:0x024d, B:67:0x0253, B:69:0x025f, B:71:0x0268, B:73:0x0270, B:82:0x0291, B:84:0x02a4, B:103:0x02ce, B:110:0x02ec, B:116:0x0308, B:118:0x030e, B:120:0x031a, B:127:0x0338, B:132:0x0343, B:134:0x034b, B:143:0x036c, B:149:0x0399, B:157:0x03d4, B:159:0x03e0, B:161:0x03e8, B:167:0x040c, B:169:0x0412, B:174:0x0434, B:176:0x043a, B:178:0x0446, B:187:0x0464, B:189:0x046d, B:196:0x03b4, B:199:0x0374, B:202:0x037d, B:214:0x0231, B:219:0x01f4, B:224:0x018c, B:229:0x00de, B:230:0x00b2, B:235:0x0498), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.UR x(java.lang.String r52) {
        /*
            Method dump skipped, instructions count: 1206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.x(java.lang.String):UR");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3218kV y(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r19)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r20)
            r18.mo1960catch()
            r18.m2733super()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.m6806native()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            java.lang.String r11 = "user_attributes"
            java.lang.String r0 = "set_timestamp"
            java.lang.String r1 = "value"
            java.lang.String r2 = "origin"
            java.lang.String[] r12 = new java.lang.String[]{r0, r1, r2}     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            java.lang.String r13 = "app_id=? and name=?"
            r0 = 2
            java.lang.String[] r14 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            r1 = 0
            r14[r1] = r19     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            r2 = 1
            r14[r2] = r8     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            r15 = 0
            r16 = 0
            r17 = 0
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            boolean r3 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L76 android.database.sqlite.SQLiteException -> L7a
            if (r3 != 0) goto L3d
            r10.close()
            return r9
        L3d:
            long r5 = r10.getLong(r1)     // Catch: java.lang.Throwable -> L76 android.database.sqlite.SQLiteException -> L7a
            r11 = r18
            java.lang.Object r7 = r11.m6816throws(r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            if (r7 != 0) goto L4d
            r10.close()
            return r9
        L4d:
            java.lang.String r3 = r10.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            kV r0 = new kV     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            boolean r1 = r10.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            if (r1 == 0) goto L70
            jS r1 = r18.mo2249case()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            lS r1 = r1.f13717do     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            kS r3 = defpackage.C3156jS.m7106while(r19)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
            r1.m7368for(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La3
        L70:
            r10.close()
            return r0
        L74:
            r0 = move-exception
            goto L86
        L76:
            r0 = move-exception
            r11 = r18
            goto La4
        L7a:
            r0 = move-exception
            r11 = r18
            goto L86
        L7e:
            r0 = move-exception
            r11 = r18
            goto La5
        L82:
            r0 = move-exception
            r11 = r18
            r10 = r9
        L86:
            jS r1 = r18.mo2249case()     // Catch: java.lang.Throwable -> La3
            lS r1 = r1.f13717do     // Catch: java.lang.Throwable -> La3
            java.lang.String r2 = "Error querying user property. appId"
            kS r3 = defpackage.C3156jS.m7106while(r19)     // Catch: java.lang.Throwable -> La3
            dS r4 = r18.m7573goto()     // Catch: java.lang.Throwable -> La3
            java.lang.String r4 = r4.m6451else(r8)     // Catch: java.lang.Throwable -> La3
            r1.m7370new(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> La3
            if (r10 == 0) goto La2
            r10.close()
        La2:
            return r9
        La3:
            r0 = move-exception
        La4:
            r9 = r10
        La5:
            if (r9 == 0) goto Laa
            r9.close()
        Laa:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2868hP.y(java.lang.String, java.lang.String):kV");
    }

    public final C3628rT z(String str) {
        Preconditions.checkNotNull(str);
        mo1960catch();
        m2733super();
        return C3628rT.m7949catch(m6800extends("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}));
    }
}
