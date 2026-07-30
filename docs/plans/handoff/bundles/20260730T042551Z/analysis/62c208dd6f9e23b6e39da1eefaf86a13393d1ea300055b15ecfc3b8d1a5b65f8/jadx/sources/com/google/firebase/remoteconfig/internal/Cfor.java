package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;

/* renamed from: com.google.firebase.remoteconfig.internal.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    public static final Date f11993do = new Date(-1);

    /* renamed from: if, reason: not valid java name */
    public static final Date f11994if = new Date(-1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SharedPreferences f11995do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f11996do = new Object();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Object f11998if = new Object();

    /* renamed from: for, reason: not valid java name */
    public final Object f11997for = new Object();

    /* renamed from: com.google.firebase.remoteconfig.internal.for$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f11999do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Date f12000do;

        public Cdo(int i, Date date) {
            this.f11999do = i;
            this.f12000do = date;
        }
    }

    /* renamed from: com.google.firebase.remoteconfig.internal.for$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f12001do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Date f12002do;

        public Cif(int i, Date date) {
            this.f12001do = i;
            this.f12002do = date;
        }
    }

    public Cfor(SharedPreferences sharedPreferences) {
        this.f11995do = sharedPreferences;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6137case() {
        synchronized (this.f11996do) {
            this.f11995do.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final Cdo m6138do() {
        Cdo cdo;
        synchronized (this.f11998if) {
            cdo = new Cdo(this.f11995do.getInt("num_failed_fetches", 0), new Date(this.f11995do.getLong("backoff_end_time_in_millis", -1L)));
        }
        return cdo;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6139else() {
        synchronized (this.f11996do) {
            this.f11995do.edit().putInt("last_fetch_status", 2).apply();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6140for(int i, Date date) {
        synchronized (this.f11998if) {
            this.f11995do.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Cif m6141if() {
        Cif cif;
        synchronized (this.f11997for) {
            cif = new Cif(this.f11995do.getInt("num_failed_realtime_streams", 0), new Date(this.f11995do.getLong("realtime_backoff_end_time_in_millis", -1L)));
        }
        return cif;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6142new(String str) {
        synchronized (this.f11996do) {
            this.f11995do.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6143try(int i, Date date) {
        synchronized (this.f11997for) {
            this.f11995do.edit().putInt("num_failed_realtime_streams", i).putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }
}
