package com.joeykrim.rootcheckp.Rankings;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AH;
import defpackage.C0574Vu;
import defpackage.InterfaceC0629Yj;

/* loaded from: classes3.dex */
public class NewsFeedJsonAdapter {
    @InterfaceC0629Yj
    public C0574Vu newsFeedFromJson(NewsFeedJson newsFeedJson) {
        C0574Vu c0574Vu = new C0574Vu();
        c0574Vu.f4241do = newsFeedJson.id;
        c0574Vu.f4251if = newsFeedJson.news_type;
        c0574Vu.f4243do = newsFeedJson.news_loaded_time;
        String str = newsFeedJson.dd_capitalized_model;
        if (str == null || !str.toLowerCase().contains(newsFeedJson.dd_capitalized_manufacturer.toLowerCase())) {
            c0574Vu.f4253if = newsFeedJson.dd_capitalized_manufacturer;
        } else {
            c0574Vu.f4253if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        c0574Vu.f4248for = newsFeedJson.dd_capitalized_model;
        c0574Vu.f4256new = newsFeedJson.dd_android_os_version;
        c0574Vu.f4261try = newsFeedJson.dd_first_seen;
        c0574Vu.f4235case = newsFeedJson.dd_last_seen;
        c0574Vu.f4242do = newsFeedJson.rd_sum_unique_users;
        c0574Vu.f4246for = newsFeedJson.rd_sum_rank;
        c0574Vu.f4252if = newsFeedJson.rd_sum_root_success;
        c0574Vu.f4247for = newsFeedJson.rd_sum_root_failure;
        c0574Vu.f4245else = newsFeedJson.dm_capitalized_manufacturer;
        c0574Vu.f4250goto = newsFeedJson.dm_first_seen;
        c0574Vu.f4258this = newsFeedJson.dm_last_seen;
        c0574Vu.f4255new = newsFeedJson.rm_sum_unique_users;
        c0574Vu.f4254new = newsFeedJson.rm_sum_rank;
        c0574Vu.f4259try = newsFeedJson.rm_sum_easy_count;
        c0574Vu.f4234case = newsFeedJson.rm_sum_medium_count;
        c0574Vu.f4244else = newsFeedJson.rm_sum_hard_count;
        c0574Vu.f4249goto = newsFeedJson.rm_sum_expert_count;
        c0574Vu.f4233break = newsFeedJson.da_android_os_version;
        c0574Vu.f4237catch = newsFeedJson.da_first_seen;
        c0574Vu.f4239class = newsFeedJson.da_last_seen;
        c0574Vu.f4260try = newsFeedJson.ra_sum_unique_users;
        c0574Vu.f4257this = newsFeedJson.ra_sum_rank;
        c0574Vu.f4232break = newsFeedJson.ra_sum_easy_count;
        c0574Vu.f4236catch = newsFeedJson.ra_sum_medium_count;
        c0574Vu.f4238class = newsFeedJson.ra_sum_hard_count;
        c0574Vu.f4240const = newsFeedJson.ra_sum_expert_count;
        return c0574Vu;
    }

    @AH
    public String newsFeedToJson(C0574Vu c0574Vu) {
        return c0574Vu.f4241do + ", " + c0574Vu.f4241do + ", " + c0574Vu.f4251if + ", " + c0574Vu.f4243do + ", " + c0574Vu.f4253if + ", " + c0574Vu.f4248for + ", " + c0574Vu.f4256new + ", " + c0574Vu.f4261try + ", " + c0574Vu.f4235case + ", " + c0574Vu.f4242do + ", " + c0574Vu.f4246for + ", " + c0574Vu.f4252if + ", " + c0574Vu.f4247for + ", " + c0574Vu.f4245else + ", " + c0574Vu.f4250goto + ", " + c0574Vu.f4258this + ", " + c0574Vu.f4255new + ", " + c0574Vu.f4254new + ", " + c0574Vu.f4259try + ", " + c0574Vu.f4234case + ", " + c0574Vu.f4244else + ", " + c0574Vu.f4249goto + ", " + c0574Vu.f4233break + ", " + c0574Vu.f4237catch + ", " + c0574Vu.f4239class + ", " + c0574Vu.f4260try + ", " + c0574Vu.f4257this + ", " + c0574Vu.f4232break + ", " + c0574Vu.f4236catch + ", " + c0574Vu.f4238class + ", " + c0574Vu.f4240const;
    }
}
