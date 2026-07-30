package com.joeykrim.rootcheckp.Rankings;

import defpackage.AH;
import defpackage.C2709el;
import defpackage.InterfaceC0629Yj;

/* loaded from: classes3.dex */
public class GlobalAndVerResultJsonAdapter {
    @InterfaceC0629Yj
    public C2709el globalAndVerResultFromJson(GlobalAndVerResultJson globalAndVerResultJson) {
        C2709el c2709el = new C2709el();
        c2709el.f12701do = globalAndVerResultJson.device_version;
        c2709el.f12700do = globalAndVerResultJson.percent_of_sum_distinct_user_count;
        c2709el.f12703if = globalAndVerResultJson.easy_percent;
        c2709el.f12702for = globalAndVerResultJson.medium_percent;
        c2709el.f12704new = globalAndVerResultJson.hard_percent;
        c2709el.f12705try = globalAndVerResultJson.expert_percent;
        return c2709el;
    }

    @AH
    public String globalAndVerResultToJson(C2709el c2709el) {
        return c2709el.f12701do + ", " + c2709el.f12700do + ", " + c2709el.f12703if + ", " + c2709el.f12702for + ", " + c2709el.f12704new + ", " + c2709el.f12705try;
    }
}
