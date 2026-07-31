package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.events.d f125a;
    public final com.braze.storage.e0 b;
    public final SharedPreferences c;
    public boolean d;

    public n(Context applicationContext, com.braze.events.d eventPublisher, com.braze.storage.e0 serverConfigStorageProvider) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        this.f125a = eventPublisher;
        this.b = serverConfigStorageProvider;
        this.c = applicationContext.getSharedPreferences("com.appboy.storage.sessions.messaging_session", 0);
    }

    public static final String c() {
        return "Publishing new messaging session event.";
    }

    public static final String d() {
        return "Messaging session not started.";
    }

    public final boolean a() {
        final long r = this.b.r();
        if (r == -1 || this.d) {
            return false;
        }
        final long j = this.c.getLong("messaging_session_timestamp", -1L);
        final long nowInSeconds = DateTimeUtils.nowInSeconds();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n.a(r, nowInSeconds, j);
            }
        }, 7, (Object) null);
        return j + r < nowInSeconds;
    }

    public final void b() {
        if (!a()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.d();
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n.c();
            }
        }, 7, (Object) null);
        this.f125a.b(com.braze.events.internal.n.f68a, com.braze.events.internal.n.class);
        this.d = true;
    }

    public final void e() {
        final long nowInSeconds = DateTimeUtils.nowInSeconds();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n.a(nowInSeconds);
            }
        }, 7, (Object) null);
        this.c.edit().putLong("messaging_session_timestamp", nowInSeconds).apply();
        this.d = false;
    }

    public static final String a(long j, long j2, long j3) {
        return "Messaging session timeout: " + j + ", current diff: " + (j2 - j3);
    }

    public static final String a(long j) {
        return "Messaging session stopped. Adding new messaging session timestamp: " + j;
    }
}
