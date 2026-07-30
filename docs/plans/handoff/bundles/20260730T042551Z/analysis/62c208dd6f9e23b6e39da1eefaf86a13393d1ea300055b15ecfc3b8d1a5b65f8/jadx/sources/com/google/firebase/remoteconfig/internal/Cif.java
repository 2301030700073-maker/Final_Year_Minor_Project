package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cif;
import defpackage.A0;
import defpackage.C0123Bi;
import defpackage.C0167Di;
import defpackage.C0233Gi;
import defpackage.C3784u8;
import defpackage.C4031yJ;
import defpackage.D9;
import defpackage.E9;
import defpackage.FG;
import defpackage.InterfaceC0598Xa;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC3655ry;
import defpackage.LG;
import defpackage.V1;
import defpackage.XV;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* renamed from: com.google.firebase.remoteconfig.internal.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    public static final long f12003do = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f12004do = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final D9 f12005do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Clock f12006do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConfigFetchHttpClient f12007do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f12008do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, String> f12009do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Random f12010do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f12011do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f12012do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<A0> f12013do;

    /* renamed from: com.google.firebase.remoteconfig.internal.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f12014do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final E9 f12015do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f12016do;

        public Cdo(int i, E9 e9, String str) {
            this.f12014do = i;
            this.f12015do = e9;
            this.f12016do = str;
        }
    }

    public Cif(InterfaceC3227ki interfaceC3227ki, InterfaceC3655ry interfaceC3655ry, ScheduledExecutorService scheduledExecutorService, Clock clock, Random random, D9 d9, ConfigFetchHttpClient configFetchHttpClient, Cfor cfor, HashMap hashMap) {
        this.f12012do = interfaceC3227ki;
        this.f12013do = interfaceC3655ry;
        this.f12011do = scheduledExecutorService;
        this.f12006do = clock;
        this.f12010do = random;
        this.f12005do = d9;
        this.f12007do = configFetchHttpClient;
        this.f12008do = cfor;
        this.f12009do = hashMap;
    }

    /* renamed from: do, reason: not valid java name */
    public final FG<Cdo> m6144do(final long j) {
        final HashMap hashMap = new HashMap(this.f12009do);
        hashMap.put("X-Firebase-RC-Fetch-Type", "BASE/1");
        return this.f12005do.m354if().mo589break(this.f12011do, new InterfaceC0598Xa() { // from class: F9
            @Override // defpackage.InterfaceC0598Xa
            public final Object then(FG fg) {
                return Cif.this.m6145for(j, fg, hashMap);
            }
        });
    }

    /* renamed from: for, reason: not valid java name */
    public final FG m6145for(long j, FG fg, final Map map) {
        FG mo589break;
        final Date date = new Date(this.f12006do.currentTimeMillis());
        boolean mo604throw = fg.mo604throw();
        Cfor cfor = this.f12008do;
        if (mo604throw) {
            cfor.getClass();
            Date date2 = new Date(cfor.f11995do.getLong("last_fetch_time_in_millis", -1L));
            if (date2.equals(Cfor.f11993do) ? false : date.before(new Date(TimeUnit.SECONDS.toMillis(j) + date2.getTime()))) {
                return LG.m1320try(new Cdo(2, null, null));
            }
        }
        Date date3 = cfor.m6138do().f12000do;
        Date date4 = date.before(date3) ? date3 : null;
        Executor executor = this.f12011do;
        if (date4 != null) {
            String format = String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(date4.getTime() - date.getTime())));
            date4.getTime();
            mo589break = LG.m1319new(new C0167Di(format));
        } else {
            InterfaceC3227ki interfaceC3227ki = this.f12012do;
            final XV mo7159if = interfaceC3227ki.mo7159if();
            final XV mo7155do = interfaceC3227ki.mo7155do();
            mo589break = LG.m1315else(mo7159if, mo7155do).mo589break(executor, new InterfaceC0598Xa() { // from class: G9
                @Override // defpackage.InterfaceC0598Xa
                public final Object then(FG fg2) {
                    Object mo600import;
                    Date date5 = date;
                    Map<String, String> map2 = map;
                    Cif cif = Cif.this;
                    cif.getClass();
                    FG fg3 = mo7159if;
                    if (!fg3.mo604throw()) {
                        return LG.m1319new(new C0123Bi("Firebase Installations failed to get installation ID for fetch.", fg3.mo591catch()));
                    }
                    FG fg4 = mo7155do;
                    if (!fg4.mo604throw()) {
                        return LG.m1319new(new C0123Bi("Firebase Installations failed to get installation auth token for fetch.", fg4.mo591catch()));
                    }
                    try {
                        Cif.Cdo m6146if = cif.m6146if((String) fg3.mo592class(), ((AbstractC2771fo) fg4.mo592class()).mo6509do(), date5, map2);
                        if (m6146if.f12014do != 0) {
                            mo600import = LG.m1320try(m6146if);
                        } else {
                            D9 d9 = cif.f12005do;
                            E9 e9 = m6146if.f12015do;
                            d9.getClass();
                            CallableC0394Nq callableC0394Nq = new CallableC0394Nq(1, d9, e9);
                            Executor executor2 = d9.f519do;
                            mo600import = LG.m1316for(callableC0394Nq, executor2).mo600import(executor2, new C9(d9, e9)).mo600import(cif.f12011do, new C2598cr(m6146if));
                        }
                        return mo600import;
                    } catch (C0145Ci e) {
                        return LG.m1319new(e);
                    }
                }
            });
        }
        return mo589break.mo589break(executor, new C4031yJ(this, date));
    }

    /* renamed from: if, reason: not valid java name */
    public final Cdo m6146if(String str, String str2, Date date, Map<String, String> map) {
        String str3;
        try {
            HttpURLConnection m6133if = this.f12007do.m6133if();
            ConfigFetchHttpClient configFetchHttpClient = this.f12007do;
            HashMap m6148try = m6148try();
            String string = this.f12008do.f11995do.getString("last_fetch_etag", null);
            A0 a0 = this.f12013do.get();
            Cdo fetch = configFetchHttpClient.fetch(m6133if, str, str2, m6148try, string, map, a0 == null ? null : (Long) a0.mo3case(true).get("_fot"), date);
            E9 e9 = fetch.f12015do;
            if (e9 != null) {
                Cfor cfor = this.f12008do;
                long j = e9.f739do;
                synchronized (cfor.f11996do) {
                    cfor.f11995do.edit().putLong("last_template_version", j).apply();
                }
            }
            String str4 = fetch.f12016do;
            if (str4 != null) {
                this.f12008do.m6142new(str4);
            }
            this.f12008do.m6140for(0, Cfor.f11994if);
            return fetch;
        } catch (C0233Gi e) {
            int i = e.f1223for;
            boolean z = i == 429 || i == 502 || i == 503 || i == 504;
            Cfor cfor2 = this.f12008do;
            if (z) {
                int i2 = cfor2.m6138do().f11999do + 1;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                int[] iArr = f12004do;
                cfor2.m6140for(i2, new Date(date.getTime() + (timeUnit.toMillis(iArr[Math.min(i2, iArr.length) - 1]) / 2) + this.f12010do.nextInt((int) r7)));
            }
            Cfor.Cdo m6138do = cfor2.m6138do();
            int i3 = e.f1223for;
            if (m6138do.f11999do > 1 || i3 == 429) {
                m6138do.f12000do.getTime();
                throw new C0167Di();
            }
            if (i3 == 401) {
                str3 = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
            } else if (i3 == 403) {
                str3 = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
            } else {
                if (i3 == 429) {
                    throw new C0123Bi("The throttled response from the server was not handled correctly by the FRC SDK.");
                }
                if (i3 != 500) {
                    switch (i3) {
                        case 502:
                        case 503:
                        case 504:
                            str3 = "The server is unavailable. Please try again later.";
                            break;
                        default:
                            str3 = "The server returned an unexpected error.";
                            break;
                    }
                } else {
                    str3 = "There was an internal server error.";
                }
            }
            throw new C0233Gi(e.f1223for, "Fetch failed: ".concat(str3), e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final FG m6147new(int i) {
        HashMap hashMap = new HashMap(this.f12009do);
        hashMap.put("X-Firebase-RC-Fetch-Type", V1.m2503if(2) + "/" + i);
        return this.f12005do.m354if().mo589break(this.f12011do, new C3784u8(this, hashMap));
    }

    /* renamed from: try, reason: not valid java name */
    public final HashMap m6148try() {
        HashMap hashMap = new HashMap();
        A0 a0 = this.f12013do.get();
        if (a0 == null) {
            return hashMap;
        }
        for (Map.Entry<String, Object> entry : a0.mo3case(false).entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }
}
