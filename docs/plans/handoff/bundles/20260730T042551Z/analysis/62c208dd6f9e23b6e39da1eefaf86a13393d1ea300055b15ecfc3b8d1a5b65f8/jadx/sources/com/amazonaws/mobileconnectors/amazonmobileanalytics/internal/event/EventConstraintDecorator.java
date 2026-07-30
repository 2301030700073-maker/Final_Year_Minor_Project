package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.StringUtil;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EventConstraintDecorator implements InternalEvent {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InternalEvent f8929do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f8930do = new AtomicInteger(0);

    /* renamed from: do, reason: not valid java name */
    public final int f8928do = 50;

    public EventConstraintDecorator(DefaultEvent defaultEvent) {
        this.f8929do = defaultEvent;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: break */
    public final synchronized void mo5059break(String str, Double d) {
        if (str != null && d != null) {
            if (this.f8930do.get() < this.f8928do && !this.f8929do.mo5063for(str)) {
                String m5078do = StringUtil.m5078do(str, 40, false);
                m5078do.getClass();
                this.f8929do.mo5059break(m5078do, d);
                this.f8930do.incrementAndGet();
            } else if (this.f8929do.mo5063for(str)) {
                String m5078do2 = StringUtil.m5078do(str, 40, false);
                m5078do2.getClass();
                this.f8929do.mo5059break(m5078do2, d);
            }
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: case */
    public final AnalyticsEvent mo5060case(String str, Double d) {
        mo5059break(str, d);
        return this.f8929do;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: catch */
    public final String mo5061catch() {
        return this.f8929do.mo5061catch();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent
    /* renamed from: class */
    public final Long mo5095class() {
        return this.f8929do.mo5095class();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent
    /* renamed from: do */
    public final long mo5097do() {
        return this.f8929do.mo5097do();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: else */
    public final synchronized void mo5062else(String str, String str2) {
        if (str != null && str2 != null) {
            if (this.f8930do.get() < this.f8928do && !this.f8929do.hasAttribute(str)) {
                String m5078do = StringUtil.m5078do(str, 40, false);
                m5078do.getClass();
                String m5078do2 = StringUtil.m5078do(str2, 200, false);
                m5078do2.getClass();
                this.f8929do.mo5062else(m5078do, m5078do2);
                this.f8930do.incrementAndGet();
            } else if (this.f8929do.hasAttribute(str)) {
                String m5078do3 = StringUtil.m5078do(str, 40, false);
                m5078do3.getClass();
                String m5078do4 = StringUtil.m5078do(str2, 200, false);
                m5078do4.getClass();
                this.f8929do.mo5062else(m5078do3, m5078do4);
            }
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: for */
    public final boolean mo5063for(String str) {
        return this.f8929do.mo5063for(str);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: goto */
    public final Map<String, String> mo5064goto() {
        return this.f8929do.mo5064goto();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    public final boolean hasAttribute(String str) {
        return this.f8929do.hasAttribute(str);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable
    /* renamed from: if */
    public final JSONObject mo5076if() {
        return this.f8929do.mo5076if();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: new */
    public final AnalyticsEvent mo5065new(String str, String str2) {
        mo5062else(str, str2);
        return this.f8929do;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: this */
    public final Map<String, Double> mo5066this() {
        return this.f8929do.mo5066this();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent
    /* renamed from: try */
    public final Long mo5098try() {
        return this.f8929do.mo5098try();
    }
}
