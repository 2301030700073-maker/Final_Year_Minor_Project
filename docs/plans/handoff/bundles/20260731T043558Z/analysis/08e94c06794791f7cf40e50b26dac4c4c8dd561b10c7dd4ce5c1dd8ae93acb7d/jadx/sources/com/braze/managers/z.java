package com.braze.managers;

import com.braze.support.BrazeLogger;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.storage.v f141a;
    public boolean b;

    public z(com.braze.storage.v brazeEventStorageProvider) {
        Intrinsics.checkNotNullParameter(brazeEventStorageProvider, "brazeEventStorageProvider");
        this.f141a = brazeEventStorageProvider;
    }

    public static final String b(com.braze.models.i iVar) {
        return "Storage manager is closed. Not adding event: " + iVar;
    }

    public final void a(final com.braze.models.i event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.b) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.z$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return z.b(com.braze.models.i.this);
                }
            }, 6, (Object) null);
        } else {
            this.f141a.a(event);
        }
    }

    public static final String b() {
        return "Started offline event recovery task.";
    }

    public final void a(final LinkedHashSet events) {
        Intrinsics.checkNotNullParameter(events, "events");
        if (this.b) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.z$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return z.a(events);
                }
            }, 6, (Object) null);
        } else {
            this.f141a.a(events);
        }
    }

    public static final String a(Set set) {
        return "Storage manager is closed. Not deleting events: " + set;
    }

    public final void a(com.braze.events.d internalEventPublisher) {
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        if (this.b) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.z$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return z.a();
                }
            }, 6, (Object) null);
            return;
        }
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.z$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return z.b();
            }
        }, 7, (Object) null);
        final List events = CollectionsKt.toList(this.f141a.c());
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.z$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return z.a(events);
            }
        }, 6, (Object) null);
        Intrinsics.checkNotNullParameter(events, "events");
        internalEventPublisher.b(new com.braze.events.internal.dispatchmanager.c(com.braze.events.internal.dispatchmanager.b.b, events, null, null, 12), com.braze.events.internal.dispatchmanager.c.class);
    }

    public static final String a() {
        return "Storage manager is closed. Not starting offline recovery.";
    }

    public static final String a(List list) {
        return "Adding events to dispatch from storage: " + list;
    }
}
