package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver.Id;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidSystem;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONBuilder;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.Preconditions;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.SDKInfo;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.StringUtil;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DefaultEventClient implements InternalEventClient, JSONSerializable {

    /* renamed from: do, reason: not valid java name */
    public long f8918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AnalyticsContext f8919do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DefaultDeliveryClient f8920do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8922do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<EventObserver> f8923do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8924do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f8921do = new ConcurrentHashMap();

    /* renamed from: if, reason: not valid java name */
    public final ConcurrentHashMap f8926if = new ConcurrentHashMap();

    /* renamed from: for, reason: not valid java name */
    public final ConcurrentHashMap f8925for = new ConcurrentHashMap();

    /* renamed from: new, reason: not valid java name */
    public final ConcurrentHashMap f8927new = new ConcurrentHashMap();

    public DefaultEventClient(DefaultAnalyticsContext defaultAnalyticsContext, boolean z) {
        this.f8923do = new CopyOnWriteArrayList();
        this.f8924do = true;
        DefaultDeliveryClient defaultDeliveryClient = defaultAnalyticsContext.f8807do;
        Preconditions.m5077do(defaultDeliveryClient, "A valid DeliveryClient must be provided");
        this.f8924do = z;
        this.f8919do = defaultAnalyticsContext;
        this.f8920do = defaultDeliveryClient;
        if (this.f8923do == null) {
            this.f8923do = new ArrayList();
        }
        if (this.f8923do.contains(defaultDeliveryClient)) {
            return;
        }
        if (this.f8923do == null) {
            this.f8923do = new ArrayList();
        }
        this.f8923do.add(defaultDeliveryClient);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5099case(AnalyticsEvent analyticsEvent) {
        if (analyticsEvent == null) {
            return;
        }
        DefaultAnalyticsContext defaultAnalyticsContext = (DefaultAnalyticsContext) this.f8919do;
        if (defaultAnalyticsContext.f8803do.m5068do("isAnalyticsEnabled", Boolean.TRUE).booleanValue() && this.f8924do && (analyticsEvent instanceof InternalEvent)) {
            InternalEvent internalEvent = (InternalEvent) analyticsEvent;
            String str = this.f8922do;
            long currentTimeMillis = System.currentTimeMillis();
            String mo5061catch = internalEvent.mo5061catch();
            Map<String, String> mo5064goto = internalEvent.mo5064goto();
            Map<String, Double> mo5066this = internalEvent.mo5066this();
            SDKInfo sDKInfo = defaultAnalyticsContext.f8806do;
            long mo5097do = internalEvent.mo5097do();
            Long mo5095class = internalEvent.mo5095class();
            Long mo5098try = internalEvent.mo5098try();
            Id id = defaultAnalyticsContext.f8804do;
            AndroidSystem androidSystem = defaultAnalyticsContext.f8805do;
            DefaultEvent defaultEvent = new DefaultEvent(mo5061catch, mo5064goto, mo5066this, sDKInfo, str, mo5097do, mo5095class, mo5098try, currentTimeMillis, id, androidSystem.f8833do, androidSystem.f8835do);
            if (this.f8923do == null) {
                this.f8923do = new ArrayList();
            }
            Iterator<EventObserver> it = this.f8923do.iterator();
            while (it.hasNext()) {
                it.next().mo5082do(defaultEvent);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5100else() {
        this.f8920do.m5083for();
    }

    /* renamed from: for, reason: not valid java name */
    public final EventConstraintDecorator m5101for(String str) {
        if (str == null) {
            throw new IllegalArgumentException("The eventType passed into create event was null");
        }
        String m5078do = StringUtil.m5078do(str, 50, false);
        m5078do.getClass();
        EventConstraintDecorator eventConstraintDecorator = new EventConstraintDecorator(m5102new(m5078do, this.f8918do, null, null));
        synchronized (this) {
            for (Map.Entry entry : this.f8921do.entrySet()) {
                eventConstraintDecorator.mo5062else((String) entry.getKey(), (String) entry.getValue());
            }
            if (this.f8925for.containsKey(eventConstraintDecorator.mo5061catch())) {
                for (Map.Entry entry2 : ((Map) this.f8925for.get(eventConstraintDecorator.mo5061catch())).entrySet()) {
                    eventConstraintDecorator.mo5062else((String) entry2.getKey(), (String) entry2.getValue());
                }
            }
            for (Map.Entry entry3 : this.f8926if.entrySet()) {
                eventConstraintDecorator.mo5059break((String) entry3.getKey(), (Double) entry3.getValue());
            }
            if (this.f8927new.containsKey(eventConstraintDecorator.mo5061catch())) {
                for (Map.Entry entry4 : ((Map) this.f8927new.get(eventConstraintDecorator.mo5061catch())).entrySet()) {
                    eventConstraintDecorator.mo5059break((String) entry4.getKey(), (Double) entry4.getValue());
                }
            }
        }
        return eventConstraintDecorator;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable
    /* renamed from: if */
    public final JSONObject mo5076if() {
        JSONArray jSONArray = new JSONArray();
        List<EventObserver> list = this.f8923do;
        if (list != null) {
            for (EventObserver eventObserver : list) {
                if (JSONSerializable.class.isAssignableFrom(eventObserver.getClass())) {
                    jSONArray.put(((JSONSerializable) eventObserver).mo5076if());
                } else {
                    jSONArray.put(eventObserver);
                }
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        ConcurrentHashMap concurrentHashMap = this.f8921do;
        if (concurrentHashMap != null) {
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put((String) entry.getKey(), entry.getValue());
                    jSONArray2.put(jSONObject);
                } catch (JSONException unused) {
                }
            }
        }
        JSONArray jSONArray3 = new JSONArray();
        ConcurrentHashMap concurrentHashMap2 = this.f8926if;
        if (concurrentHashMap2 != null) {
            for (Map.Entry entry2 : concurrentHashMap2.entrySet()) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put((String) entry2.getKey(), entry2.getValue());
                    jSONArray3.put(jSONObject2);
                } catch (JSONException unused2) {
                }
            }
        }
        JSONObject jSONObject3 = new JSONObject();
        ConcurrentHashMap concurrentHashMap3 = this.f8925for;
        if (concurrentHashMap3 != null) {
            for (Map.Entry entry3 : concurrentHashMap3.entrySet()) {
                JSONArray jSONArray4 = new JSONArray();
                for (Map.Entry entry4 : ((Map) entry3.getValue()).entrySet()) {
                    try {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put((String) entry4.getKey(), entry4.getValue());
                        jSONArray4.put(jSONObject4);
                    } catch (JSONException unused3) {
                    }
                }
                try {
                    jSONObject3.put((String) entry3.getKey(), jSONArray4);
                } catch (JSONException unused4) {
                }
            }
        }
        JSONObject jSONObject5 = new JSONObject();
        ConcurrentHashMap concurrentHashMap4 = this.f8927new;
        if (concurrentHashMap4 != null) {
            for (Map.Entry entry5 : concurrentHashMap4.entrySet()) {
                JSONArray jSONArray5 = new JSONArray();
                for (Map.Entry entry6 : ((Map) entry5.getValue()).entrySet()) {
                    try {
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.put((String) entry6.getKey(), entry6.getValue());
                        jSONArray5.put(jSONObject6);
                    } catch (JSONException unused5) {
                    }
                }
                try {
                    jSONObject5.put((String) entry5.getKey(), jSONArray5);
                } catch (JSONException unused6) {
                }
            }
        }
        JSONBuilder jSONBuilder = new JSONBuilder(this);
        jSONBuilder.m5075for(((DefaultAnalyticsContext) this.f8919do).f8804do, "uniqueId");
        jSONBuilder.m5075for(jSONArray, "observers");
        jSONBuilder.m5075for(jSONArray2, "globalAttributes");
        jSONBuilder.m5075for(jSONArray3, "globalMetrics");
        jSONBuilder.m5075for(jSONObject3, "eventTypeAttributes");
        jSONBuilder.m5075for(jSONObject5, "eventTypeMetrics");
        return jSONBuilder.f8840do;
    }

    /* renamed from: new, reason: not valid java name */
    public final DefaultEvent m5102new(String str, long j, Long l, Long l2) {
        String str2 = this.f8922do;
        Long valueOf = Long.valueOf(j);
        long currentTimeMillis = System.currentTimeMillis();
        DefaultAnalyticsContext defaultAnalyticsContext = (DefaultAnalyticsContext) this.f8919do;
        SDKInfo sDKInfo = defaultAnalyticsContext.f8806do;
        long longValue = valueOf.longValue();
        Id id = defaultAnalyticsContext.f8804do;
        AndroidSystem androidSystem = defaultAnalyticsContext.f8805do;
        return new DefaultEvent(str, null, null, sDKInfo, str2, longValue, l, l2, currentTimeMillis, id, androidSystem.f8833do, androidSystem.f8835do);
    }

    public final String toString() {
        JSONObject mo5076if = mo5076if();
        try {
            return mo5076if.toString(4);
        } catch (JSONException unused) {
            return mo5076if.toString();
        }
    }
}
