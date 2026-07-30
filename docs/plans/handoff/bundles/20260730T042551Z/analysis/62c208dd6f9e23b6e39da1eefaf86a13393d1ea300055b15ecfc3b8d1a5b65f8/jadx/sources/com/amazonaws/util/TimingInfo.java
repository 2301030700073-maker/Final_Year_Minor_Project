package com.amazonaws.util;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class TimingInfo {

    /* renamed from: do, reason: not valid java name */
    public final long f9078do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Long f9079do;

    public TimingInfo(long j, Long l) {
        this.f9078do = j;
        this.f9079do = l;
    }

    /* renamed from: break, reason: not valid java name */
    public static TimingInfo m5192break(long j, Long l) {
        return new TimingInfoUnmodifiable(j, l);
    }

    /* renamed from: case, reason: not valid java name */
    public Map<String, List<TimingInfo>> mo5193case() {
        return Collections.emptyMap();
    }

    /* renamed from: do, reason: not valid java name */
    public void mo5194do(String str, TimingInfo timingInfo) {
    }

    /* renamed from: else, reason: not valid java name */
    public void mo5195else(String str) {
    }

    /* renamed from: for, reason: not valid java name */
    public Map<String, Number> mo5196for() {
        return Collections.emptyMap();
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m5197goto() {
        return this.f9079do != null;
    }

    /* renamed from: if, reason: not valid java name */
    public void mo5198if() {
        this.f9079do = Long.valueOf(System.nanoTime());
    }

    /* renamed from: new, reason: not valid java name */
    public final long m5199new() {
        Long l = this.f9079do;
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    /* renamed from: this, reason: not valid java name */
    public void mo5200this(long j, String str) {
    }

    public final String toString() {
        Double valueOf = m5197goto() ? Double.valueOf(TimeUnit.NANOSECONDS.toMicros(this.f9079do.longValue() - this.f9078do) / 1000.0d) : null;
        return String.valueOf(valueOf == null ? -1.0d : valueOf.doubleValue());
    }

    /* renamed from: try, reason: not valid java name */
    public final long m5201try() {
        return this.f9078do;
    }
}
