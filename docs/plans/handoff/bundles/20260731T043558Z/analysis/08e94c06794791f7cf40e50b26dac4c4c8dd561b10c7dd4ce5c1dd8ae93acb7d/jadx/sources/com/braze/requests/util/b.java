package com.braze.requests.util;

import android.os.SystemClock;
import com.braze.support.BrazeLogger;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.RandomKt;

/* loaded from: classes2.dex */
public final class b {
    public static final int g = (int) TimeUnit.SECONDS.toMillis(45);

    /* renamed from: a, reason: collision with root package name */
    public final int f204a;
    public final int b;
    public final int c;
    public final int d;
    public final Random e;
    public int f;

    public b(int i, int i2, int i3) {
        int i4 = g;
        this.f204a = i;
        this.b = i4;
        this.c = i2;
        this.d = i3;
        this.e = RandomKt.Random(SystemClock.uptimeMillis());
    }

    public final int a(final int i) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.util.b$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(b.this);
            }
        }, 7, (Object) null);
        Random random = this.e;
        int i2 = this.f * this.d;
        Intrinsics.checkNotNullParameter(random, "random");
        final int min = Math.min(i, i2) + random.nextInt(Math.abs(i - i2) + 1);
        this.f = Math.max(this.c, Math.min(this.f204a, min));
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.util.b$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(b.this, i, min);
            }
        }, 7, (Object) null);
        return this.f;
    }

    public final String toString() {
        return "ExponentialBackoffStateProvider(maxSleepDurationMs=" + this.f204a + ", defaultNormalFlushIntervalMs=" + this.b + ", minSleepDurationMs=" + this.c + ", scaleFactor=" + this.d + ", randomSleepDurationGenerator=" + this.e + ", lastSleepDurationMs=" + this.f + ", isBackingOff=" + (this.f != 0) + ')';
    }

    public static final String a(b bVar) {
        return "Computing new sleep delay. Previous sleep delay: " + bVar.f;
    }

    public static final String a(b bVar, int i, int i2) {
        return "New sleep duration: " + bVar.f + " ms. Default sleep duration: " + i + " ms. Max sleep: " + bVar.f204a + " ms. Min sleep: " + bVar.c + " ms. Scale factor: " + bVar.d + " randomValueBetweenSleepIntervals: " + i2;
    }
}
