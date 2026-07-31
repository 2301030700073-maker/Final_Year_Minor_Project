package net.thunderbird.feature.notification.impl;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.MutexImpl;
import net.thunderbird.feature.notification.api.NotificationId;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.content.Notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationRegistry implements NotificationRegistry {
    public final StateFlowImpl internalRegistrar;
    public final MutexImpl mutex;
    public final AtomicInteger rawId;
    public final ReadonlyStateFlow registrar;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Registrar {
        public final Map byId;
        public final Map byNotification;

        public Registrar(Map map, Map map2) {
            map.getClass();
            map2.getClass();
            this.byNotification = map;
            this.byId = map2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Registrar)) {
                return false;
            }
            Registrar registrar = (Registrar) obj;
            return Intrinsics.areEqual(this.byNotification, registrar.byNotification) && Intrinsics.areEqual(this.byId, registrar.byId);
        }

        public final int hashCode() {
            return this.byId.hashCode() + (this.byNotification.hashCode() * 31);
        }

        public final String toString() {
            return "Registrar(byNotification=" + this.byNotification + ", byId=" + this.byId + ")";
        }
    }

    public DefaultNotificationRegistry() {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher;
        handlerContext.getClass();
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), handlerContext));
        this.mutex = new MutexImpl();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(new Registrar(emptyMap, emptyMap));
        this.internalRegistrar = MutableStateFlow;
        this.rawId = new AtomicInteger(0);
        this.registrar = FlowKt.stateIn(new SafeFlow(10, MutableStateFlow), CoroutineScope, new StartedWhileSubscribed(Long.MAX_VALUE), emptyMap);
    }

    /* renamed from: get-RiqCqwk, reason: not valid java name */
    public final Notification m1044getRiqCqwk(int i) {
        return (Notification) ((Registrar) this.internalRegistrar.getValue()).byId.get(new NotificationId(i));
    }

    /* renamed from: get-_qXnNqc, reason: not valid java name */
    public final NotificationId m1045get_qXnNqc(Notification notification) {
        notification.getClass();
        Registrar registrar = (Registrar) this.internalRegistrar.getValue();
        registrar.getClass();
        return (NotificationId) registrar.byNotification.get(notification);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c A[Catch: all -> 0x004f, TryCatch #0 {all -> 0x004f, blocks: (B:11:0x0046, B:13:0x004c, B:14:0x00af, B:19:0x0051, B:20:0x005c, B:22:0x0076, B:23:0x0087, B:25:0x0092, B:26:0x00a3, B:31:0x009a, B:32:0x007e), top: B:10:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051 A[Catch: all -> 0x004f, TryCatch #0 {all -> 0x004f, blocks: (B:11:0x0046, B:13:0x004c, B:14:0x00af, B:19:0x0051, B:20:0x005c, B:22:0x0076, B:23:0x0087, B:25:0x0092, B:26:0x00a3, B:31:0x009a, B:32:0x007e), top: B:10:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: register-MQcfKRA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Comparable m1046registerMQcfKRA(net.thunderbird.feature.notification.api.content.Notification r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$register$1
            if (r0 == 0) goto L13
            r0 = r9
            net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$register$1 r0 = (net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$register$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$register$1 r0 = new net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$register$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2c
            kotlinx.coroutines.sync.MutexImpl r8 = r0.L$1
            net.thunderbird.feature.notification.api.content.Notification r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r0
            goto L46
        L2c:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r8
            kotlinx.coroutines.sync.MutexImpl r9 = r7.mutex
            r0.L$1 = r9
            r0.label = r2
            java.lang.Object r0 = r9.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L46
            return r1
        L46:
            net.thunderbird.feature.notification.api.NotificationId r0 = r7.m1045get_qXnNqc(r8)     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L51
            int r7 = r0.value     // Catch: java.lang.Throwable -> L4f
            goto Laf
        L4f:
            r7 = move-exception
            goto Lb8
        L51:
            java.util.concurrent.atomic.AtomicInteger r0 = r7.rawId     // Catch: java.lang.Throwable -> L4f
            r0.getClass()     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.addAndGet(r2)     // Catch: java.lang.Throwable -> L4f
            kotlinx.coroutines.flow.StateFlowImpl r7 = r7.internalRegistrar     // Catch: java.lang.Throwable -> L4f
        L5c:
            java.lang.Object r1 = r7.getValue()     // Catch: java.lang.Throwable -> L4f
            r2 = r1
            net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$Registrar r2 = (net.thunderbird.feature.notification.impl.DefaultNotificationRegistry.Registrar) r2     // Catch: java.lang.Throwable -> L4f
            net.thunderbird.feature.notification.api.NotificationId r4 = new net.thunderbird.feature.notification.api.NotificationId     // Catch: java.lang.Throwable -> L4f
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4f
            r2.getClass()     // Catch: java.lang.Throwable -> L4f
            java.util.Map r5 = r2.byNotification     // Catch: java.lang.Throwable -> L4f
            r5.getClass()     // Catch: java.lang.Throwable -> L4f
            boolean r6 = r5.isEmpty()     // Catch: java.lang.Throwable -> L4f
            if (r6 == 0) goto L7e
            java.util.Map r5 = java.util.Collections.singletonMap(r8, r4)     // Catch: java.lang.Throwable -> L4f
            r5.getClass()     // Catch: java.lang.Throwable -> L4f
            goto L87
        L7e:
            java.util.LinkedHashMap r6 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L4f
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L4f
            r6.put(r8, r4)     // Catch: java.lang.Throwable -> L4f
            r5 = r6
        L87:
            java.util.Map r2 = r2.byId     // Catch: java.lang.Throwable -> L4f
            r2.getClass()     // Catch: java.lang.Throwable -> L4f
            boolean r6 = r2.isEmpty()     // Catch: java.lang.Throwable -> L4f
            if (r6 == 0) goto L9a
            java.util.Map r2 = java.util.Collections.singletonMap(r4, r8)     // Catch: java.lang.Throwable -> L4f
            r2.getClass()     // Catch: java.lang.Throwable -> L4f
            goto La3
        L9a:
            java.util.LinkedHashMap r6 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L4f
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L4f
            r6.put(r4, r8)     // Catch: java.lang.Throwable -> L4f
            r2 = r6
        La3:
            net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$Registrar r4 = new net.thunderbird.feature.notification.impl.DefaultNotificationRegistry$Registrar     // Catch: java.lang.Throwable -> L4f
            r4.<init>(r5, r2)     // Catch: java.lang.Throwable -> L4f
            boolean r1 = r7.compareAndSet(r1, r4)     // Catch: java.lang.Throwable -> L4f
            if (r1 == 0) goto L5c
            r7 = r0
        Laf:
            net.thunderbird.feature.notification.api.NotificationId r8 = new net.thunderbird.feature.notification.api.NotificationId     // Catch: java.lang.Throwable -> L4f
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L4f
            r9.unlock(r3)
            return r8
        Lb8:
            r9.unlock(r3)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.DefaultNotificationRegistry.m1046registerMQcfKRA(net.thunderbird.feature.notification.api.content.Notification, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Comparable");
    }

    public final void unregister(Notification notification) {
        StateFlowImpl stateFlowImpl;
        Object value;
        Registrar registrar;
        do {
            stateFlowImpl = this.internalRegistrar;
            value = stateFlowImpl.getValue();
            registrar = (Registrar) value;
            registrar.getClass();
            Map map = registrar.byNotification;
            NotificationId notificationId = (NotificationId) map.get(notification);
            if (notificationId != null) {
                int i = notificationId.value;
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.remove(notification);
                int size = linkedHashMap.size();
                Map map2 = EmptyMap.INSTANCE;
                Map map3 = linkedHashMap;
                if (size == 0) {
                    map3 = map2;
                } else if (size == 1) {
                    Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
                    Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
                    singletonMap.getClass();
                    map3 = singletonMap;
                }
                Map map4 = registrar.byId;
                NotificationId notificationId2 = new NotificationId(i);
                map4.getClass();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(map4);
                linkedHashMap2.remove(notificationId2);
                int size2 = linkedHashMap2.size();
                if (size2 != 0) {
                    if (size2 != 1) {
                        map2 = linkedHashMap2;
                    } else {
                        Map.Entry entry2 = (Map.Entry) linkedHashMap2.entrySet().iterator().next();
                        map2 = Collections.singletonMap(entry2.getKey(), entry2.getValue());
                        map2.getClass();
                    }
                }
                registrar = new Registrar(map3, map2);
            }
        } while (!stateFlowImpl.compareAndSet(value, registrar));
    }
}
