package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f117a;
    public final ArrayList b;
    public final SharedPreferences c;

    public i0(Context context, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f117a = reentrantLock;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        SharedPreferences a2 = c.a(context, null, apiKey, new StringBuilder("com.braze.storage.braze_push_delivery_storage"), 0);
        this.c = a2;
        reentrantLock.lock();
        try {
            arrayList.clear();
            Map<String, ?> all = a2.getAll();
            Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
            Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
            while (it.hasNext()) {
                String key = it.next().getKey();
                ArrayList arrayList2 = this.b;
                Intrinsics.checkNotNull(key);
                arrayList2.add(new com.braze.models.push.a(key, this.c.getLong(key, 0L)));
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(List list) {
        return "Re-adding PDEs to storage: " + list;
    }

    public static final String b(String str) {
        return com.braze.i.a("Adding push campaign to storage with uid ", str);
    }

    public final void a(final String pushCampaignId) {
        Intrinsics.checkNotNullParameter(pushCampaignId, "pushCampaignId");
        ReentrantLock reentrantLock = this.f117a;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i0$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i0.b(pushCampaignId);
                }
            }, 7, (Object) null);
            long nowInSeconds = DateTimeUtils.nowInSeconds();
            this.c.edit().putLong(pushCampaignId, nowInSeconds).apply();
            this.b.add(new com.braze.models.push.a(pushCampaignId, nowInSeconds));
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(ArrayList events) {
        Intrinsics.checkNotNullParameter(events, "events");
        ReentrantLock reentrantLock = this.f117a;
        reentrantLock.lock();
        try {
            SharedPreferences.Editor edit = this.c.edit();
            Iterator it = events.iterator();
            while (it.hasNext()) {
                final com.braze.models.push.a aVar = (com.braze.models.push.a) it.next();
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i0$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return i0.a(com.braze.models.push.a.this);
                    }
                }, 7, (Object) null);
                String string = aVar.b.getString("cid");
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                edit.remove(string);
            }
            edit.apply();
            this.b.removeAll(events);
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(com.braze.models.push.a aVar) {
        StringBuilder sb = new StringBuilder("Clearing PDE from storage with uid ");
        String string = aVar.b.getString("cid");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return sb.append(string).toString();
    }

    public final void b(final ArrayList events) {
        Intrinsics.checkNotNullParameter(events, "events");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i0$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return i0.a(events);
            }
        }, 7, (Object) null);
        ReentrantLock reentrantLock = this.f117a;
        reentrantLock.lock();
        try {
            this.b.addAll(events);
        } finally {
            reentrantLock.unlock();
        }
    }
}
