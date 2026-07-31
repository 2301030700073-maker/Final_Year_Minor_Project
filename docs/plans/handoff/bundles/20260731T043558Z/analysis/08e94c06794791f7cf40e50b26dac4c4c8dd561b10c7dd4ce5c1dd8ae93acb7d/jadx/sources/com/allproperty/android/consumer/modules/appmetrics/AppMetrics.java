package com.allproperty.android.consumer.modules.appmetrics;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppMetrics.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0007J\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\rR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;", "", "<init>", "()V", "data", "", "", "", "addMetric", "", SDKConstants.PARAM_KEY, "value", "getMetrics", "", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AppMetrics {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile AppMetrics INSTANCE;
    private final Map<String, Double> data;

    public /* synthetic */ AppMetrics(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AppMetrics() {
        this.data = new LinkedHashMap();
    }

    /* compiled from: AppMetrics.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;", "getInstance", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AppMetrics getInstance() {
            AppMetrics appMetrics = AppMetrics.INSTANCE;
            if (appMetrics == null) {
                synchronized (this) {
                    appMetrics = AppMetrics.INSTANCE;
                    if (appMetrics == null) {
                        appMetrics = new AppMetrics(null);
                        Companion companion = AppMetrics.INSTANCE;
                        AppMetrics.INSTANCE = appMetrics;
                    }
                }
            }
            return appMetrics;
        }
    }

    public final void addMetric(String key, double value) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.data.put(key, Double.valueOf(value));
    }

    public final Map<String, Double> getMetrics() {
        return MapsKt.toMap(this.data);
    }
}
