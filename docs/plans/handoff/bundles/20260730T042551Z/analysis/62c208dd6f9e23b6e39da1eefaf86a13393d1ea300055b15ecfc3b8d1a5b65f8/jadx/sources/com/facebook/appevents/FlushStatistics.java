package com.facebook.appevents;

import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class FlushStatistics {
    private int numEvents;
    private FlushResult result = FlushResult.SUCCESS;

    public final int getNumEvents() {
        return this.numEvents;
    }

    public final FlushResult getResult() {
        return this.result;
    }

    public final void setNumEvents(int i) {
        this.numEvents = i;
    }

    public final void setResult(FlushResult flushResult) {
        C0173Do.m401try(flushResult, "<set-?>");
        this.result = flushResult;
    }
}
