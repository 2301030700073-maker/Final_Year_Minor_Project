package com.braze.requests.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.DateTimeUtils;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f203a;

    public a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("persistent.com.braze.requests.metadata.last_req_at", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.f203a = sharedPreferences;
    }

    public final long a(c target) {
        Intrinsics.checkNotNullParameter(target, "target");
        String str = "uri-" + target.f205a.hashCode();
        long j = this.f203a.getLong(str, 0L);
        long nowInMilliseconds = DateTimeUtils.nowInMilliseconds();
        this.f203a.edit().putLong(str, nowInMilliseconds).apply();
        return Math.min(nowInMilliseconds - j, 7200000L);
    }

    public final long b(c target) {
        Intrinsics.checkNotNullParameter(target, "target");
        String str = "uri-at-" + target.f205a.hashCode();
        long j = this.f203a.getLong(str, 1L);
        this.f203a.edit().putLong(str, 1 + j).apply();
        return j;
    }

    public final void c(c target) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.f203a.edit().putLong("uri-at-" + target.f205a.hashCode(), 1L).apply();
    }
}
