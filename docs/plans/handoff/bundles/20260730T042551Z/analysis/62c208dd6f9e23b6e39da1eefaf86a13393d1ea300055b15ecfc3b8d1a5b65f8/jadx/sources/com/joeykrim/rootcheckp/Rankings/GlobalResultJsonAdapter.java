package com.joeykrim.rootcheckp.Rankings;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AH;
import defpackage.C3171jl;
import defpackage.InterfaceC0629Yj;

/* loaded from: classes3.dex */
public class GlobalResultJsonAdapter {
    /* renamed from: do, reason: not valid java name */
    public static double m6392do(String str) {
        if (str == null) {
            return 0.0d;
        }
        try {
            if (str.isEmpty()) {
                return 0.0d;
            }
            return Double.valueOf(str).doubleValue();
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    @InterfaceC0629Yj
    public C3171jl globalResultFromJson(GlobalResultJson globalResultJson) {
        String str;
        int i;
        C3171jl c3171jl = new C3171jl();
        c3171jl.f13767do = globalResultJson.rank;
        String str2 = globalResultJson.device_model;
        if (str2 == null || !str2.toLowerCase().contains(globalResultJson.device_make.toLowerCase())) {
            c3171jl.f13768do = globalResultJson.device_make;
        } else {
            c3171jl.f13768do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str3 = globalResultJson.device_model;
        c3171jl.f13776if = str3;
        if (str3 == null || !str3.toLowerCase().contains(globalResultJson.device_make.toLowerCase())) {
            c3171jl.f13772for = globalResultJson.device_make + " " + globalResultJson.device_model;
        } else {
            c3171jl.f13772for = globalResultJson.device_model;
        }
        c3171jl.f13778new = globalResultJson.device_version;
        c3171jl.f13780try = globalResultJson.root_available;
        c3171jl.f13765case = globalResultJson.diff_of_success;
        try {
            str = globalResultJson.wrr_distinct_users_count;
        } catch (NumberFormatException unused) {
            c3171jl.f13775if = 0;
        }
        if (str != null && !str.isEmpty()) {
            i = Integer.valueOf(globalResultJson.wrr_distinct_users_count).intValue();
            c3171jl.f13775if = i;
            c3171jl.f13766do = m6392do(globalResultJson.wrr_latest_android_os_percent);
            c3171jl.f13774if = m6392do(globalResultJson.wrr_remove_unwanted_applications_percent);
            c3171jl.f13771for = m6392do(globalResultJson.wrr_use_wifi_tether_percent);
            c3171jl.f13777new = m6392do(globalResultJson.wrr_improve_battery_life_percent);
            c3171jl.f13779try = m6392do(globalResultJson.wrr_increase_speed_percent);
            c3171jl.f13764case = m6392do(globalResultJson.wrr_block_advertisements_percent);
            c3171jl.f13769else = m6392do(globalResultJson.wrr_use_custom_themes_percent);
            c3171jl.f13773goto = m6392do(globalResultJson.wrr_other_percent);
            c3171jl.f13770else = globalResultJson.wrr_last_seen;
            return c3171jl;
        }
        i = 0;
        c3171jl.f13775if = i;
        c3171jl.f13766do = m6392do(globalResultJson.wrr_latest_android_os_percent);
        c3171jl.f13774if = m6392do(globalResultJson.wrr_remove_unwanted_applications_percent);
        c3171jl.f13771for = m6392do(globalResultJson.wrr_use_wifi_tether_percent);
        c3171jl.f13777new = m6392do(globalResultJson.wrr_improve_battery_life_percent);
        c3171jl.f13779try = m6392do(globalResultJson.wrr_increase_speed_percent);
        c3171jl.f13764case = m6392do(globalResultJson.wrr_block_advertisements_percent);
        c3171jl.f13769else = m6392do(globalResultJson.wrr_use_custom_themes_percent);
        c3171jl.f13773goto = m6392do(globalResultJson.wrr_other_percent);
        c3171jl.f13770else = globalResultJson.wrr_last_seen;
        return c3171jl;
    }

    @AH
    public String globalResultToJson(C3171jl c3171jl) {
        return c3171jl.f13767do + ", " + c3171jl.f13768do + ", " + c3171jl.f13776if + ", " + c3171jl.f13778new + ", " + c3171jl.f13780try + ", " + c3171jl.f13765case + ", " + c3171jl.f13775if + ", " + c3171jl.f13766do + ", " + c3171jl.f13774if + ", " + c3171jl.f13771for + ", " + c3171jl.f13777new + ", " + c3171jl.f13779try + ", " + c3171jl.f13764case + ", " + c3171jl.f13769else + ", " + c3171jl.f13773goto + ", " + c3171jl.f13770else + ", " + c3171jl.f13770else;
    }
}
