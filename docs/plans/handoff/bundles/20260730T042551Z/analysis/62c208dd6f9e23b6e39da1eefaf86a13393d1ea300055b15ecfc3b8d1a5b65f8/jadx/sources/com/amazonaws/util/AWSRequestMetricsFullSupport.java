package com.amazonaws.util;

import com.amazonaws.util.AWSRequestMetrics;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

@Deprecated
/* loaded from: classes.dex */
public class AWSRequestMetricsFullSupport extends AWSRequestMetrics {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f9064do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashMap f9065if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Log f9062do = LogFactory.getLog("com.amazonaws.latency");

    /* renamed from: do, reason: not valid java name */
    public static final String f9061do = "=";

    /* renamed from: if, reason: not valid java name */
    public static final String f9063if = ", ";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AWSRequestMetricsFullSupport() {
        super(new TimingInfoFullSupport(System.nanoTime()));
        System.currentTimeMillis();
        this.f9064do = new HashMap();
        this.f9065if = new HashMap();
    }

    /* renamed from: else, reason: not valid java name */
    public static void m5172else(Object obj, Object obj2, StringBuilder sb) {
        sb.append(obj);
        sb.append((Object) f9061do);
        sb.append(obj2);
        sb.append((Object) f9063if);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: case */
    public final void mo5166case(AWSRequestMetrics.Field field) {
        this.f9065if.put(field.name(), new TimingInfoFullSupport(System.nanoTime()));
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: do */
    public final void mo5167do(AWSRequestMetrics.Field field, Serializable serializable) {
        String name = field.name();
        HashMap hashMap = this.f9064do;
        List list = (List) hashMap.get(name);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(name, list);
        }
        list.add(serializable);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: for */
    public final void mo5168for() {
        super.f9037do.mo5195else("Exception");
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: if */
    public final void mo5169if(AWSRequestMetrics.Field field) {
        String name = field.name();
        TimingInfo timingInfo = (TimingInfo) this.f9065if.get(name);
        if (timingInfo != null) {
            timingInfo.mo5198if();
            super.f9037do.mo5194do(name, TimingInfo.m5192break(timingInfo.m5201try(), Long.valueOf(timingInfo.m5199new())));
        } else {
            LogFactory.getLog(getClass()).warn("Trying to end an event which was never started: " + name);
        }
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: new */
    public final void mo5170new() {
        Log log = f9062do;
        if (log.isInfoEnabled()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : this.f9064do.entrySet()) {
                m5172else(entry.getKey(), entry.getValue(), sb);
            }
            TimingInfo timingInfo = super.f9037do;
            for (Map.Entry<String, Number> entry2 : timingInfo.mo5196for().entrySet()) {
                m5172else(entry2.getKey(), entry2.getValue(), sb);
            }
            for (Map.Entry<String, List<TimingInfo>> entry3 : timingInfo.mo5193case().entrySet()) {
                m5172else(entry3.getKey(), entry3.getValue(), sb);
            }
            log.info(sb.toString());
        }
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: try */
    public final void mo5171try(long j) {
        super.f9037do.mo5200this(j, "RequestCount");
    }
}
