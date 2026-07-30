package com.joeykrim.rootcheckp.Rankings;

import defpackage.AH;
import defpackage.C2827gl;
import defpackage.InterfaceC0629Yj;

/* loaded from: classes3.dex */
public class GlobalManufResultJsonAdapter {
    @InterfaceC0629Yj
    public C2827gl globalManufResultFromJson(GlobalManufResultJson globalManufResultJson) {
        C2827gl c2827gl = new C2827gl();
        c2827gl.f13201do = globalManufResultJson.device_make;
        c2827gl.f13200do = globalManufResultJson.percent_of_sum_distinct_user_count;
        c2827gl.f13203if = globalManufResultJson.easy_percent;
        c2827gl.f13202for = globalManufResultJson.medium_percent;
        c2827gl.f13204new = globalManufResultJson.hard_percent;
        c2827gl.f13205try = globalManufResultJson.expert_percent;
        return c2827gl;
    }

    @AH
    public String globalResultToJson(C2827gl c2827gl) {
        return c2827gl.f13201do + ", " + c2827gl.f13200do + ", " + c2827gl.f13203if + ", " + c2827gl.f13202for + ", " + c2827gl.f13204new + ", " + c2827gl.f13205try;
    }
}
