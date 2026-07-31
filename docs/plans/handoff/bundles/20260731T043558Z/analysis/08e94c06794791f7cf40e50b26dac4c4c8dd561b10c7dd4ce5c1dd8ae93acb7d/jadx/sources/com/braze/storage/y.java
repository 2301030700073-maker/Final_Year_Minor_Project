package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* loaded from: classes2.dex */
public final class y {
    public static final long b = TimeUnit.DAYS.toSeconds(45);

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f237a;

    public y(Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences a2 = com.braze.managers.c.a(context, str2, str, new StringBuilder("com.braze.storage.push_identifier_storage"), 0);
        Intrinsics.checkNotNullExpressionValue(a2, "getSharedPreferences(...)");
        this.f237a = a2;
        a();
    }

    public static final String b(String str) {
        return com.braze.a.a("Push dedupe id ", str, " has already been seen. Returning false.");
    }

    public final boolean a(final String pushId) {
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        if (StringsKt.isBlank(pushId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.y$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return y.b();
                }
            }, 7, (Object) null);
            return true;
        }
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        if (this.f237a.contains(pushId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.y$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return y.b(pushId);
                }
            }, 7, (Object) null);
            return false;
        }
        a();
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        this.f237a.edit().putLong(pushId, DateTimeUtils.nowInSeconds()).apply();
        return true;
    }

    public static final String b() {
        return "Push dedupe id is blank. Returning true.";
    }

    public final void a() {
        final long nowInSeconds = DateTimeUtils.nowInSeconds() - b;
        SharedPreferences.Editor edit = this.f237a.edit();
        Map<String, ?> all = this.f237a.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        for (final Map.Entry<String, ?> entry : all.entrySet()) {
            Long l = (Long) entry.getValue();
            if (l == null || l.longValue() < nowInSeconds) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.y$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return y.a(entry, nowInSeconds);
                    }
                }, 6, (Object) null);
                edit.remove(entry.getKey());
            }
        }
        edit.apply();
    }

    public static final String a(Map.Entry entry, long j) {
        return "Evicting push id key " + entry + " based on cutoff: " + j;
    }
}
