package com.braze.triggers.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.triggers.actions.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f280a;
    public final ConcurrentHashMap b;
    public final LinkedHashMap c;

    public g(Context context, String str, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences a2 = com.braze.managers.c.a(context, str, apiKey, new StringBuilder("com.appboy.storage.triggers.re_eligibility"), 0);
        Intrinsics.checkNotNullExpressionValue(a2, "getSharedPreferences(...)");
        this.f280a = a2;
        this.b = a();
        this.c = new LinkedHashMap();
    }

    public static final String a(String str) {
        return com.braze.a.a("Deleting outdated triggered action id ", str, " from stored re-eligibility list. In-memory re-eligibility list is unchanged.");
    }

    public static final String b(String str) {
        return com.braze.a.a("Retaining triggered action ", str, " in re-eligibility list.");
    }

    public static final String c(String str) {
        return com.braze.a.a("Retrieving triggered action id ", str, " eligibility information from local storage.");
    }

    public final void d(final com.braze.triggers.actions.a triggeredAction) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        com.braze.triggers.actions.g gVar = (com.braze.triggers.actions.g) triggeredAction;
        if (gVar.b.f.f271a == -1) {
            this.b.remove(gVar.f263a);
            this.f280a.edit().remove(gVar.f263a).apply();
            return;
        }
        Long l = (Long) this.c.get(gVar.f263a);
        final long longValue = l != null ? l.longValue() : 0L;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(com.braze.triggers.actions.a.this, longValue);
            }
        }, 7, (Object) null);
        this.b.put(gVar.f263a, Long.valueOf(longValue));
        this.f280a.edit().putLong(gVar.f263a, longValue).apply();
    }

    public final boolean a(final com.braze.triggers.actions.g triggeredAction) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        final com.braze.triggers.config.b bVar = triggeredAction.b.f;
        if (bVar.f271a == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(com.braze.triggers.actions.a.this);
                }
            }, 7, (Object) null);
            return true;
        }
        if (!this.b.containsKey(triggeredAction.f263a)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b(com.braze.triggers.actions.a.this);
                }
            }, 7, (Object) null);
            return true;
        }
        if (bVar.f271a == -1) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.c(com.braze.triggers.actions.a.this);
                }
            }, 7, (Object) null);
            return false;
        }
        Long l = (Long) this.b.get(triggeredAction.f263a);
        final long longValue = l != null ? l.longValue() : 0L;
        long nowInSeconds = DateTimeUtils.nowInSeconds() + triggeredAction.b.d;
        int i = bVar.f271a;
        if (nowInSeconds >= ((i > 0 ? Integer.valueOf(i) : null) != null ? r0.intValue() : 0) + longValue) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(longValue, bVar);
                }
            }, 7, (Object) null);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(longValue, bVar);
            }
        }, 7, (Object) null);
        return false;
    }

    public static final String b(com.braze.triggers.actions.a aVar) {
        return "Triggered action id " + ((com.braze.triggers.actions.g) aVar).f263a + " always eligible via never having been triggered. Returning true for eligibility status";
    }

    public static final String b(long j, com.braze.triggers.config.a aVar) {
        StringBuilder append = new StringBuilder("Trigger action is not re-eligible for display since only ").append(DateTimeUtils.nowInSeconds() - j).append(" seconds have passed since the last time it was triggered (minimum interval: ");
        int i = ((com.braze.triggers.config.b) aVar).f271a;
        return append.append(i > 0 ? Integer.valueOf(i) : null).append(").").toString();
    }

    public static final String b(com.braze.triggers.actions.a aVar, long j) {
        return "Resetting re-eligibility for action Id " + ((com.braze.triggers.actions.g) aVar).f263a + " to " + j;
    }

    public static final String b() {
        return "Encountered unexpected exception while parsing stored re-eligibility information.";
    }

    public static final String a(com.braze.triggers.actions.a aVar) {
        return "Triggered action id " + ((com.braze.triggers.actions.g) aVar).f263a + " always eligible via configuration. Returning true for eligibility status";
    }

    public static final String a(long j, com.braze.triggers.config.a aVar) {
        StringBuilder append = new StringBuilder("Trigger action is re-eligible for display since ").append(DateTimeUtils.nowInSeconds() - j).append(" seconds have passed since the last time it was triggered (minimum interval: ");
        int i = ((com.braze.triggers.config.b) aVar).f271a;
        return append.append(i > 0 ? Integer.valueOf(i) : null).append(").").toString();
    }

    public final void a(final h triggeredAction, final long j) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.a(com.braze.triggers.actions.a.this, j);
            }
        }, 7, (Object) null);
        LinkedHashMap linkedHashMap = this.c;
        String str = triggeredAction.f263a;
        Long l = (Long) this.b.get(str);
        linkedHashMap.put(str, Long.valueOf(l != null ? l.longValue() : 0L));
        this.b.put(triggeredAction.f263a, Long.valueOf(j));
        this.f280a.edit().putLong(triggeredAction.f263a, j).apply();
    }

    public static final String a(com.braze.triggers.actions.a aVar, long j) {
        return "Updating re-eligibility for action Id " + ((com.braze.triggers.actions.g) aVar).f263a + " to time " + j + '.';
    }

    public final ConcurrentHashMap a() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        try {
            for (final String str : this.f280a.getAll().keySet()) {
                long j = this.f280a.getLong(str, 0L);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.c(str);
                    }
                }, 7, (Object) null);
                concurrentHashMap.put(str, Long.valueOf(j));
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b();
                }
            }, 4, (Object) null);
        }
        return concurrentHashMap;
    }

    public final void a(List triggeredActions) {
        Intrinsics.checkNotNullParameter(triggeredActions, "triggeredActions");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(triggeredActions, 10));
        Iterator it = triggeredActions.iterator();
        while (it.hasNext()) {
            arrayList.add(((com.braze.triggers.actions.g) ((com.braze.triggers.actions.a) it.next())).f263a);
        }
        SharedPreferences.Editor edit = this.f280a.edit();
        for (final String str : CollectionsKt.toSet(this.b.keySet())) {
            if (!arrayList.contains(str)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(str);
                    }
                }, 7, (Object) null);
                edit.remove(str);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.b(str);
                    }
                }, 7, (Object) null);
            }
        }
        edit.apply();
    }

    public static final String c(com.braze.triggers.actions.a aVar) {
        return "Triggered action id " + ((com.braze.triggers.actions.g) aVar).f263a + " no longer eligible due to having been triggered in the past and is only eligible once.";
    }
}
