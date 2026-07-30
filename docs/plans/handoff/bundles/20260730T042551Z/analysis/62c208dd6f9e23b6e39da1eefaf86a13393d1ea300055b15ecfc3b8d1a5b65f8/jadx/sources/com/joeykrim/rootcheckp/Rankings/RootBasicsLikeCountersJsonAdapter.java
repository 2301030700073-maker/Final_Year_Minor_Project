package com.joeykrim.rootcheckp.Rankings;

import defpackage.AH;
import defpackage.GA;
import defpackage.InterfaceC0629Yj;

/* loaded from: classes3.dex */
public class RootBasicsLikeCountersJsonAdapter {
    @InterfaceC0629Yj
    public GA rootBasicsLikeCountersFromJson(RootBasicsLikeCountersJson rootBasicsLikeCountersJson) {
        GA ga = new GA();
        ga.f1140do = rootBasicsLikeCountersJson.what_is_root_helpful;
        ga.f1142if = rootBasicsLikeCountersJson.why_root_helpful;
        ga.f1141for = rootBasicsLikeCountersJson.how_root_helpful;
        return ga;
    }

    @AH
    public String rootBasicsLikeCountersToJson(GA ga) {
        return ga.f1140do + ", " + ga.f1142if + ", " + ga.f1141for;
    }
}
