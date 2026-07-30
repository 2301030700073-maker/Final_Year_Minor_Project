package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.measurement.internal.zzno;
import com.google.android.gms.measurement.internal.zzo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: kT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC3216kT implements Callable<List<zzno>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f13990do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Bundle f13991do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f13992do;

    public CallableC3216kT(YS ys, zzo zzoVar, Bundle bundle) {
        this.f13992do = zzoVar;
        this.f13991do = bundle;
        this.f13990do = ys;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List] */
    @Override // java.util.concurrent.Callable
    public final List<zzno> call() {
        String str;
        ArrayList arrayList;
        YS ys = this.f13990do;
        ys.f4740do.p();
        ZU zu = ys.f4740do;
        zu.mo2253do().mo1960catch();
        if (zzpn.zza()) {
            ZO e = zu.e();
            zzo zzoVar = this.f13992do;
            if (e.m3012throws(zzoVar.f10320break, C3684sQ.T) && (str = zzoVar.f10320break) != null) {
                Bundle bundle = this.f13991do;
                if (bundle != null) {
                    int[] intArray = bundle.getIntArray("uriSources");
                    long[] longArray = bundle.getLongArray("uriTimestamps");
                    if (intArray != null) {
                        if (longArray == null || longArray.length != intArray.length) {
                            zu.mo2249case().f13717do.m7369if("Uri sources and timestamps do not match");
                        } else {
                            for (int i = 0; i < intArray.length; i++) {
                                C2868hP c2868hP = zu.f4838do;
                                ZU.m3016extends(c2868hP);
                                int i2 = intArray[i];
                                long j = longArray[i];
                                Preconditions.checkNotEmpty(str);
                                c2868hP.mo1960catch();
                                c2868hP.m2733super();
                                try {
                                    int delete = c2868hP.m6806native().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)});
                                    c2868hP.mo2249case().f13723this.m7370new("Pruned " + delete + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i2), Long.valueOf(j));
                                } catch (SQLiteException e2) {
                                    c2868hP.mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error pruning trigger URIs. appId", e2);
                                }
                            }
                        }
                    }
                }
                C2868hP c2868hP2 = zu.f4838do;
                ZU.m3016extends(c2868hP2);
                Preconditions.checkNotEmpty(str);
                c2868hP2.mo1960catch();
                c2868hP2.m2733super();
                ArrayList arrayList2 = new ArrayList();
                Cursor cursor = null;
                try {
                    try {
                        cursor = c2868hP2.m6806native().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                        if (cursor.moveToFirst()) {
                            do {
                                String string = cursor.getString(0);
                                if (string == null) {
                                    string = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                }
                                arrayList2.add(new zzno(cursor.getInt(2), cursor.getLong(1), string));
                            } while (cursor.moveToNext());
                            cursor.close();
                            arrayList = arrayList2;
                        } else {
                            cursor.close();
                            arrayList = arrayList2;
                        }
                    } catch (SQLiteException e3) {
                        c2868hP2.mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error querying trigger uris. appId", e3);
                        ?? emptyList = Collections.emptyList();
                        arrayList = emptyList;
                        if (cursor != null) {
                            cursor.close();
                            arrayList = emptyList;
                        }
                    }
                    return arrayList;
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        }
        return new ArrayList();
    }
}
