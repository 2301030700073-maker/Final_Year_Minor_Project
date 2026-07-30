package com.amazonaws.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
class TimingInfoFullSupport extends TimingInfo {

    /* renamed from: do, reason: not valid java name */
    public final HashMap f9080do;

    /* renamed from: if, reason: not valid java name */
    public final HashMap f9081if;

    public TimingInfoFullSupport(long j) {
        super(j, null);
        this.f9080do = new HashMap();
        this.f9081if = new HashMap();
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: case */
    public final Map<String, List<TimingInfo>> mo5193case() {
        return this.f9080do;
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: do */
    public final void mo5194do(String str, TimingInfo timingInfo) {
        HashMap hashMap = this.f9080do;
        List list = (List) hashMap.get(str);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(str, list);
        }
        if (timingInfo.m5197goto()) {
            list.add(timingInfo);
            return;
        }
        LogFactory.getLog(getClass()).debug("Skip submeasurement timing info with no end time for " + str);
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: else */
    public final void mo5195else(String str) {
        mo5200this((((Number) this.f9081if.get(str)) != null ? r0.intValue() : 0) + 1, str);
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: for */
    public final Map<String, Number> mo5196for() {
        return this.f9081if;
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: this */
    public final void mo5200this(long j, String str) {
        this.f9081if.put(str, Long.valueOf(j));
    }
}
