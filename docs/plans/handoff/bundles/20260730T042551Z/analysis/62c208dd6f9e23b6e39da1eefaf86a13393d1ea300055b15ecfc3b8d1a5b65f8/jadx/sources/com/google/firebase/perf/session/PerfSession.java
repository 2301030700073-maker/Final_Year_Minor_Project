package com.google.firebase.perf.session;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.perf.util.Timer;
import defpackage.Hw;
import defpackage.QJ;
import java.util.List;

/* loaded from: classes3.dex */
public class PerfSession implements Parcelable {
    public static final Parcelable.Creator<PerfSession> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f11968break;

    /* renamed from: do, reason: not valid java name */
    public final Timer f11969do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11970do;

    /* renamed from: com.google.firebase.perf.session.PerfSession$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<PerfSession> {
        @Override // android.os.Parcelable.Creator
        public final PerfSession createFromParcel(Parcel parcel) {
            return new PerfSession(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PerfSession[] newArray(int i) {
            return new PerfSession[i];
        }
    }

    public PerfSession(String str, QJ qj) {
        this.f11970do = false;
        this.f11968break = str;
        this.f11969do = new Timer();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
    
        if (defpackage.L9.m1285static(r5) != false) goto L30;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.perf.session.PerfSession m6117for(java.lang.String r9) {
        /*
            java.lang.String r0 = "-"
            java.lang.String r1 = ""
            java.lang.String r9 = r9.replace(r0, r1)
            com.google.firebase.perf.session.PerfSession r0 = new com.google.firebase.perf.session.PerfSession
            QJ r1 = new QJ
            r2 = 17
            r1.<init>(r2)
            r0.<init>(r9, r1)
            L9 r9 = defpackage.L9.m1286try()
            boolean r1 = r9.m1299return()
            if (r1 == 0) goto Le6
            double r1 = java.lang.Math.random()
            java.lang.Class<ha> r3 = defpackage.C2875ha.class
            monitor-enter(r3)
            ha r4 = defpackage.C2875ha.f13333do     // Catch: java.lang.Throwable -> Le3
            if (r4 != 0) goto L30
            ha r4 = new ha     // Catch: java.lang.Throwable -> Le3
            r4.<init>()     // Catch: java.lang.Throwable -> Le3
            defpackage.C2875ha.f13333do = r4     // Catch: java.lang.Throwable -> Le3
        L30:
            ha r4 = defpackage.C2875ha.f13333do     // Catch: java.lang.Throwable -> Le3
            monitor-exit(r3)
            fw r3 = r9.m1287break(r4)
            boolean r5 = r3.m6695if()
            if (r5 == 0) goto L52
            java.lang.Object r3 = r3.m6694do()
            java.lang.Double r3 = (java.lang.Double) r3
            double r5 = r3.doubleValue()
            r7 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r5 = r5 / r7
            boolean r3 = defpackage.L9.m1285static(r5)
            if (r3 == 0) goto L52
            goto Ldd
        L52:
            com.google.firebase.perf.config.RemoteConfigManager r3 = r9.f1931do
            java.lang.String r5 = "fpr_vc_session_sampling_rate"
            fw r3 = r3.getDouble(r5)
            boolean r5 = r3.m6695if()
            if (r5 == 0) goto L8c
            java.lang.Object r5 = r3.m6694do()
            java.lang.Double r5 = (java.lang.Double) r5
            double r5 = r5.doubleValue()
            boolean r5 = defpackage.L9.m1285static(r5)
            if (r5 == 0) goto L8c
            he r9 = r9.f1932do
            java.lang.String r4 = "com.google.firebase.perf.SessionSamplingRate"
            java.lang.Object r5 = r3.m6694do()
            java.lang.Double r5 = (java.lang.Double) r5
            double r5 = r5.doubleValue()
            r9.m6825new(r4, r5)
            java.lang.Object r9 = r3.m6694do()
            java.lang.Double r9 = (java.lang.Double) r9
            double r5 = r9.doubleValue()
            goto Ldd
        L8c:
            fw r3 = r9.m1297if(r4)
            boolean r4 = r3.m6695if()
            if (r4 == 0) goto Lb1
            java.lang.Object r4 = r3.m6694do()
            java.lang.Double r4 = (java.lang.Double) r4
            double r4 = r4.doubleValue()
            boolean r4 = defpackage.L9.m1285static(r4)
            if (r4 == 0) goto Lb1
            java.lang.Object r9 = r3.m6694do()
            java.lang.Double r9 = (java.lang.Double) r9
            double r5 = r9.doubleValue()
            goto Ldd
        Lb1:
            com.google.firebase.perf.config.RemoteConfigManager r9 = r9.f1931do
            boolean r9 = r9.isLastFetchFailed()
            r3 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            if (r9 == 0) goto Ld5
            java.lang.Double r9 = java.lang.Double.valueOf(r3)
            double r3 = r9.doubleValue()
            r5 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r3 = r3 / r5
            java.lang.Double r9 = java.lang.Double.valueOf(r3)
            double r5 = r9.doubleValue()
            goto Ldd
        Ld5:
            java.lang.Double r9 = java.lang.Double.valueOf(r3)
            double r5 = r9.doubleValue()
        Ldd:
            int r9 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r9 >= 0) goto Le6
            r9 = 1
            goto Le7
        Le3:
            r9 = move-exception
            monitor-exit(r3)
            throw r9
        Le6:
            r9 = 0
        Le7:
            r0.f11970do = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.session.PerfSession.m6117for(java.lang.String):com.google.firebase.perf.session.PerfSession");
    }

    /* renamed from: if, reason: not valid java name */
    public static Hw[] m6118if(List<PerfSession> list) {
        if (list.isEmpty()) {
            return null;
        }
        Hw[] hwArr = new Hw[list.size()];
        Hw m6119do = list.get(0).m6119do();
        boolean z = false;
        for (int i = 1; i < list.size(); i++) {
            Hw m6119do2 = list.get(i).m6119do();
            if (z || !list.get(i).f11970do) {
                hwArr[i] = m6119do2;
            } else {
                hwArr[0] = m6119do2;
                hwArr[i] = m6119do;
                z = true;
            }
        }
        if (!z) {
            hwArr[0] = m6119do;
        }
        return hwArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final Hw m6119do() {
        Hw.Cif m897transient = Hw.m897transient();
        m897transient.m6307super();
        Hw.m896strictfp((Hw) m897transient.f12107if, this.f11968break);
        if (this.f11970do) {
            m897transient.m6307super();
            Hw.m898volatile((Hw) m897transient.f12107if);
        }
        return m897transient.m6305const();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00c0 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6120new() {
        /*
            r12 = this;
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MICROSECONDS
            com.google.firebase.perf.util.Timer r1 = r12.f11969do
            long r1 = r1.m6126do()
            long r0 = r0.toMinutes(r1)
            L9 r2 = defpackage.L9.m1286try()
            r2.getClass()
            java.lang.Class<ea> r3 = defpackage.C2698ea.class
            monitor-enter(r3)
            ea r4 = defpackage.C2698ea.f12687do     // Catch: java.lang.Throwable -> Lc2
            if (r4 != 0) goto L21
            ea r4 = new ea     // Catch: java.lang.Throwable -> Lc2
            r4.<init>()     // Catch: java.lang.Throwable -> Lc2
            defpackage.C2698ea.f12687do = r4     // Catch: java.lang.Throwable -> Lc2
        L21:
            ea r4 = defpackage.C2698ea.f12687do     // Catch: java.lang.Throwable -> Lc2
            monitor-exit(r3)
            fw r3 = r2.m1289catch(r4)
            boolean r5 = r3.m6695if()
            r6 = 0
            r8 = 1
            r9 = 0
            if (r5 == 0) goto L50
            java.lang.Object r5 = r3.m6694do()
            java.lang.Long r5 = (java.lang.Long) r5
            long r10 = r5.longValue()
            int r5 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r5 <= 0) goto L42
            r5 = 1
            goto L43
        L42:
            r5 = 0
        L43:
            if (r5 == 0) goto L50
            java.lang.Object r2 = r3.m6694do()
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            goto Lbb
        L50:
            fw r3 = r2.m1291const(r4)
            boolean r5 = r3.m6695if()
            if (r5 == 0) goto L89
            java.lang.Object r5 = r3.m6694do()
            java.lang.Long r5 = (java.lang.Long) r5
            long r10 = r5.longValue()
            int r5 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r5 <= 0) goto L6a
            r5 = 1
            goto L6b
        L6a:
            r5 = 0
        L6b:
            if (r5 == 0) goto L89
            he r2 = r2.f1932do
            java.lang.String r4 = "com.google.firebase.perf.SessionsMaxDurationMinutes"
            java.lang.Object r5 = r3.m6694do()
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            r2.m6823for(r5, r4)
            java.lang.Object r2 = r3.m6694do()
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            goto Lbb
        L89:
            fw r2 = r2.m1295for(r4)
            boolean r3 = r2.m6695if()
            if (r3 == 0) goto Lb1
            java.lang.Object r3 = r2.m6694do()
            java.lang.Long r3 = (java.lang.Long) r3
            long r3 = r3.longValue()
            int r5 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r5 <= 0) goto La3
            r3 = 1
            goto La4
        La3:
            r3 = 0
        La4:
            if (r3 == 0) goto Lb1
            java.lang.Object r2 = r2.m6694do()
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            goto Lbb
        Lb1:
            r2 = 240(0xf0, double:1.186E-321)
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            long r2 = r2.longValue()
        Lbb:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto Lc0
            goto Lc1
        Lc0:
            r8 = 0
        Lc1:
            return r8
        Lc2:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.session.PerfSession.m6120new():boolean");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11968break);
        parcel.writeByte(this.f11970do ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f11969do, 0);
    }

    public PerfSession(Parcel parcel) {
        this.f11970do = false;
        this.f11968break = parcel.readString();
        this.f11970do = parcel.readByte() != 0;
        this.f11969do = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
    }
}
