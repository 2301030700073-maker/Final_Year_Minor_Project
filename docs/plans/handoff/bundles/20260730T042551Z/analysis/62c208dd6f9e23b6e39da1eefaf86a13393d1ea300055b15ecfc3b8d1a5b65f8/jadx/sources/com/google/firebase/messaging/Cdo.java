package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import defpackage.C0466Ra;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.firebase.messaging.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f11910do;

    /* renamed from: com.google.firebase.messaging.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0077do {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int f11911do = 0;

        /* renamed from: if, reason: not valid java name */
        public static final long f11912if = TimeUnit.DAYS.toMillis(7);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long f11913do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f11914do;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final String f11915if;

        public C0077do(String str, String str2, long j) {
            this.f11914do = str;
            this.f11915if = str2;
            this.f11913do = j;
        }

        /* renamed from: do, reason: not valid java name */
        public static C0077do m6099do(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new C0077do(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C0077do(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                e.toString();
                return null;
            }
        }
    }

    public Cdo(Context context) {
        boolean isEmpty;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f11910do = sharedPreferences;
        File file = new File(C0466Ra.getNoBackupFilesDir(context), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                synchronized (this) {
                    isEmpty = sharedPreferences.getAll().isEmpty();
                }
                if (isEmpty) {
                    return;
                }
                m6098do();
            }
        } catch (IOException e) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                e.getMessage();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m6098do() {
        this.f11910do.edit().clear().commit();
    }
}
