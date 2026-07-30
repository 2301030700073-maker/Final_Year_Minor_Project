package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzjt;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: uP, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3801uP {

    /* renamed from: do, reason: not valid java name */
    public long f15882do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2868hP f15883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15884do;

    public C3801uP(C2868hP c2868hP, String str) {
        this.f15883do = c2868hP;
        Preconditions.checkNotEmpty(str);
        this.f15884do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public final List<C3448oP> m8388do() {
        Cursor cursor;
        int i;
        C2868hP c2868hP = this.f15883do;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        String str = this.f15884do;
        Cursor cursor2 = null;
        try {
            try {
                i = 1;
                cursor = c2868hP.m6806native().query("raw_events", new String[]{"rowid", FacebookRequestErrorClassification.KEY_NAME, "timestamp", "metadata_fingerprint", "data", "realtime"}, "app_id = ? and rowid > ?", new String[]{str, String.valueOf(this.f15882do)}, null, null, "rowid", "1000");
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            cursor = cursor2;
        }
        try {
        } catch (SQLiteException e2) {
            e = e2;
            cursor2 = cursor;
            c2868hP.mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Data loss. Error querying raw events batch. appId", e);
            if (cursor2 != null) {
                cursor2.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (!cursor.moveToFirst()) {
            List<C3448oP> emptyList = Collections.emptyList();
            cursor.close();
            return emptyList;
        }
        while (true) {
            long j = cursor.getLong(i2);
            long j2 = cursor.getLong(3);
            boolean z = cursor.getLong(5) == 1;
            byte[] blob = cursor.getBlob(4);
            if (j > this.f15882do) {
                this.f15882do = j;
            }
            try {
                zzfy.zzf.zza zzaVar = (zzfy.zzf.zza) C3159jV.m7118default(zzfy.zzf.zze(), blob);
                String string = cursor.getString(i);
                if (string == null) {
                    string = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                zzaVar.zza(string).zzb(cursor.getLong(2));
                arrayList.add(new C3448oP(j, j2, z, (zzfy.zzf) ((zzjt) zzaVar.zzai())));
            } catch (IOException e3) {
                c2868hP.mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Data loss. Failed to merge raw event. appId", e3);
            }
            if (!cursor.moveToNext()) {
                break;
            }
            i = 1;
            i2 = 0;
        }
        cursor.close();
        return arrayList;
    }
}
