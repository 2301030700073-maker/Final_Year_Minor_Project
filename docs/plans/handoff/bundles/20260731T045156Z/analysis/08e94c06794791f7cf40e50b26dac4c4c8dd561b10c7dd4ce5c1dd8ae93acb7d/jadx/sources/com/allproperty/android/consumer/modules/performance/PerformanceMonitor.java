package com.allproperty.android.consumer.modules.performance;

import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.metrics.Trace;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PerformanceMonitor.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\rR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;", "", "<init>", "()V", "traces", "", "", "Lcom/google/firebase/perf/metrics/Trace;", "startTrace", ViewHierarchyNode.JsonKeys.IDENTIFIER, "stopTrace", "", "nativeAppTrace", "", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PerformanceMonitor {
    private final Map<String, Trace> traces = new LinkedHashMap();

    public final Trace startTrace(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Trace trace = this.traces.get(identifier);
        if (trace == null) {
            trace = FirebasePerformance.getInstance().newTrace(identifier);
            trace.start();
            Intrinsics.checkNotNullExpressionValue(trace, "also(...)");
        }
        this.traces.put(identifier, trace);
        return trace;
    }

    public final void stopTrace(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Trace trace = this.traces.get(identifier);
        if (trace != null) {
            trace.stop();
            this.traces.remove(identifier);
        }
    }

    public final void nativeAppTrace(boolean stopTrace) {
        Trace newTrace = FirebasePerformance.getInstance().newTrace("nativeApplicationLoad");
        Intrinsics.checkNotNullExpressionValue(newTrace, "newTrace(...)");
        if (stopTrace) {
            newTrace.stop();
        } else {
            newTrace.start();
        }
    }
}
