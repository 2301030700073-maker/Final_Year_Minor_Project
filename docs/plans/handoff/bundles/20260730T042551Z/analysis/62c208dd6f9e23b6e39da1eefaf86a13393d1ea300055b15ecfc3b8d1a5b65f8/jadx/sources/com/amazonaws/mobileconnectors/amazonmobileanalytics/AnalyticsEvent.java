package com.amazonaws.mobileconnectors.amazonmobileanalytics;

import java.util.Map;

/* loaded from: classes.dex */
public interface AnalyticsEvent {
    /* renamed from: break, reason: not valid java name */
    void mo5059break(String str, Double d);

    /* renamed from: case, reason: not valid java name */
    AnalyticsEvent mo5060case(String str, Double d);

    /* renamed from: catch, reason: not valid java name */
    String mo5061catch();

    /* renamed from: else, reason: not valid java name */
    void mo5062else(String str, String str2);

    /* renamed from: for, reason: not valid java name */
    boolean mo5063for(String str);

    /* renamed from: goto, reason: not valid java name */
    Map<String, String> mo5064goto();

    boolean hasAttribute(String str);

    /* renamed from: new, reason: not valid java name */
    AnalyticsEvent mo5065new(String str, String str2);

    /* renamed from: this, reason: not valid java name */
    Map<String, Double> mo5066this();
}
