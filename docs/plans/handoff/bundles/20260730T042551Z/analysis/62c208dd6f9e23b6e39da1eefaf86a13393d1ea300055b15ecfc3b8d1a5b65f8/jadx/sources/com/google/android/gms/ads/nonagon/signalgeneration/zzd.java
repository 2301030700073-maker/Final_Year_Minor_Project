package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.SharedPreferences;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzd {

    /* renamed from: do, reason: not valid java name */
    public final Context f10058do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SharedPreferences.Editor f10059do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SharedPreferences f10060do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f10061do = new Object();

    public zzd(Context context) {
        this.f10058do = context;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5591do() {
        synchronized (this.f10061do) {
            if (this.f10060do != null) {
                return;
            }
            SharedPreferences sharedPreferences = this.f10058do.getSharedPreferences("query_info_shared_prefs", 0);
            this.f10060do = sharedPreferences;
            this.f10059do = sharedPreferences.edit();
        }
    }

    public final int zza() {
        int i;
        m5591do();
        synchronized (this.f10061do) {
            i = this.f10060do.getInt("aav", -1);
        }
        return i;
    }

    public final int zzb() {
        int i;
        m5591do();
        synchronized (this.f10061do) {
            i = this.f10060do.getInt("vc", -1);
        }
        return i;
    }

    public final String zzc(String str) {
        String string;
        m5591do();
        synchronized (this.f10061do) {
            string = this.f10060do.getString(str, null);
            this.f10059do.remove(str).commit();
        }
        return string;
    }

    public final String zzd() {
        String string;
        m5591do();
        synchronized (this.f10061do) {
            string = this.f10060do.getString("dm", null);
        }
        return string;
    }

    public final String zze() {
        String string;
        m5591do();
        synchronized (this.f10061do) {
            string = this.f10060do.getString("pn", null);
        }
        return string;
    }

    public final Map zzf() {
        HashMap hashMap;
        m5591do();
        synchronized (this.f10061do) {
            Map<String, ?> all = this.f10060do.getAll();
            hashMap = new HashMap();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if ((entry.getValue() instanceof String) && !Objects.equals(entry.getKey(), "pn") && !Objects.equals(entry.getKey(), "vc") && !Objects.equals(entry.getKey(), "dm") && !Objects.equals(entry.getKey(), "aav")) {
                    hashMap.put(entry.getKey(), (String) entry.getValue());
                }
            }
        }
        return hashMap;
    }

    public final void zzg() {
        m5591do();
        synchronized (this.f10061do) {
            this.f10059do.clear().commit();
        }
    }

    public final void zzh(String str, String str2) {
        m5591do();
        synchronized (this.f10061do) {
            this.f10059do.putString(str, str2).commit();
        }
    }

    public final void zzi(String str, int i, String str2, int i2) {
        m5591do();
        synchronized (this.f10061do) {
            this.f10059do.putString("pn", str).putInt("vc", i).putString("dm", str2).putInt("aav", i2).commit();
        }
    }

    public final boolean zzj(String str) {
        boolean contains;
        m5591do();
        synchronized (this.f10061do) {
            contains = this.f10060do.contains(str);
        }
        return contains;
    }
}
