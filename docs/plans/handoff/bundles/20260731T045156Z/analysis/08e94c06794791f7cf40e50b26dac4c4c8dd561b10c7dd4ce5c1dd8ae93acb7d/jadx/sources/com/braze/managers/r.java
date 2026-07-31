package com.braze.managers;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.SessionStateChangedEvent;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.IntentUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* loaded from: classes2.dex */
public final class r {
    public static final String m = BrazeLogger.getBrazeLogTag((Class<?>) r.class);
    public static final long n;
    public static final long o;

    /* renamed from: a, reason: collision with root package name */
    public final Context f131a;
    public final com.braze.storage.s b;
    public final com.braze.events.d c;
    public final com.braze.events.e d;
    public final AlarmManager e;
    public final int f;
    public final boolean g;
    public final ReentrantLock h;
    public final String i;
    public final p j;
    public Job k;
    public com.braze.models.l l;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        n = timeUnit.toMillis(10L);
        o = timeUnit.toMillis(10L);
    }

    public r(Context applicationContext, com.braze.storage.s sessionStorageManager, com.braze.events.d internalEventPublisher, com.braze.events.e externalEventPublisher, AlarmManager alarmManager, int i, boolean z) {
        CompletableJob Job$default;
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(sessionStorageManager, "sessionStorageManager");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(alarmManager, "alarmManager");
        this.f131a = applicationContext;
        this.b = sessionStorageManager;
        this.c = internalEventPublisher;
        this.d = externalEventPublisher;
        this.e = alarmManager;
        this.f = i;
        this.g = z;
        this.h = new ReentrantLock();
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.k = Job$default;
        p pVar = new p(this);
        this.j = pVar;
        String str = applicationContext.getPackageName() + ".intent.BRAZE_SESSION_SHOULD_SEAL";
        this.i = str;
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                applicationContext.registerReceiver(pVar, new IntentFilter(str), 2);
            } else {
                applicationContext.registerReceiver(pVar, new IntentFilter(str));
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.a(r.this);
                }
            }, 4, (Object) null);
            this.j = null;
        }
    }

    public static final String a(r rVar) {
        return "Failed to register dynamic receiver for " + rVar.i;
    }

    public static final String b(com.braze.models.l lVar) {
        return "New session created with ID: " + lVar.f160a;
    }

    public static final String c(com.braze.models.l lVar) {
        return "Checking if this session needs to be sealed: " + lVar.f160a;
    }

    public static final String d(com.braze.models.l lVar) {
        return "Session [" + lVar.f160a + "] being sealed because its end time is over the grace period. Session: " + lVar;
    }

    public static final String e(com.braze.models.l lVar) {
        return "Closed session with id " + lVar.f160a;
    }

    public static final String j() {
        return "Getting the stored open session";
    }

    public static final String m() {
        return "Failed to unregister session seal receiver.";
    }

    public final boolean f() {
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            i();
            final com.braze.models.l lVar = this.l;
            boolean z = true;
            if (lVar != null && !lVar.d) {
                if (lVar.c != null) {
                    lVar.c = null;
                } else {
                    z = false;
                }
                return z;
            }
            h();
            if (lVar != null && lVar.d) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.a(com.braze.models.l.this);
                    }
                }, 7, (Object) null);
                this.b.a(lVar.f160a.b);
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final com.braze.models.o g() {
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            i();
            com.braze.models.l lVar = this.l;
            return lVar != null ? lVar.f160a : null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void h() {
        final com.braze.models.l lVar = new com.braze.models.l();
        this.l = lVar;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return r.b(com.braze.models.l.this);
            }
        }, 6, (Object) null);
        this.c.b(new com.braze.events.internal.y(lVar), com.braze.events.internal.y.class);
        ((com.braze.events.d) this.d).b(new SessionStateChangedEvent(lVar.f160a.b, SessionStateChangedEvent.ChangeType.SESSION_STARTED), SessionStateChangedEvent.class);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        if ((r12.toMillis((long) r6) + r13) <= r9) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            r15 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r15.h
            r0.lock()
            com.braze.models.l r1 = r15.l     // Catch: java.lang.Throwable -> Lae
            r2 = 0
            if (r1 != 0) goto L36
            com.braze.support.BrazeLogger r3 = com.braze.support.BrazeLogger.INSTANCE     // Catch: java.lang.Throwable -> Lae
            com.braze.managers.r$$ExternalSyntheticLambda3 r8 = new com.braze.managers.r$$ExternalSyntheticLambda3     // Catch: java.lang.Throwable -> Lae
            r8.<init>()     // Catch: java.lang.Throwable -> Lae
            r9 = 7
            r10 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r4 = r15
            com.braze.support.BrazeLogger.brazelog$default(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lae
            com.braze.storage.s r1 = r15.b     // Catch: java.lang.Throwable -> Lae
            com.braze.models.n r1 = r1.c()     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto L33
            com.braze.models.l r9 = new com.braze.models.l     // Catch: java.lang.Throwable -> Lae
            com.braze.models.o r4 = r1.f160a     // Catch: java.lang.Throwable -> Lae
            double r5 = r1.b     // Catch: java.lang.Throwable -> Lae
            java.lang.Double r7 = r1.d()     // Catch: java.lang.Throwable -> Lae
            boolean r8 = r1.d     // Catch: java.lang.Throwable -> Lae
            r3 = r9
            r3.<init>(r4, r5, r7, r8)     // Catch: java.lang.Throwable -> Lae
            goto L34
        L33:
            r9 = r2
        L34:
            r15.l = r9     // Catch: java.lang.Throwable -> Lae
        L36:
            com.braze.models.l r1 = r15.l     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto Laa
            com.braze.support.BrazeLogger r11 = com.braze.support.BrazeLogger.INSTANCE     // Catch: java.lang.Throwable -> Lae
            com.braze.managers.r$$ExternalSyntheticLambda4 r8 = new com.braze.managers.r$$ExternalSyntheticLambda4     // Catch: java.lang.Throwable -> Lae
            r8.<init>()     // Catch: java.lang.Throwable -> Lae
            r9 = 7
            r10 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r3 = r11
            r4 = r15
            com.braze.support.BrazeLogger.brazelog$default(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lae
            java.lang.Double r3 = r1.c     // Catch: java.lang.Throwable -> Lae
            if (r3 == 0) goto La8
            boolean r4 = r1.d     // Catch: java.lang.Throwable -> Lae
            if (r4 != 0) goto La8
            double r4 = r1.b     // Catch: java.lang.Throwable -> Lae
            double r6 = r3.doubleValue()     // Catch: java.lang.Throwable -> Lae
            int r3 = r15.f     // Catch: java.lang.Throwable -> Lae
            boolean r8 = r15.g     // Catch: java.lang.Throwable -> Lae
            long r9 = com.braze.support.DateTimeUtils.nowInMilliseconds()     // Catch: java.lang.Throwable -> Lae
            java.util.concurrent.TimeUnit r12 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> Lae
            long r13 = (long) r3     // Catch: java.lang.Throwable -> Lae
            long r13 = r12.toMillis(r13)     // Catch: java.lang.Throwable -> Lae
            if (r8 == 0) goto L78
            long r3 = (long) r4     // Catch: java.lang.Throwable -> Lae
            long r3 = r12.toMillis(r3)     // Catch: java.lang.Throwable -> Lae
            long r3 = r3 + r13
            long r5 = com.braze.managers.r.o     // Catch: java.lang.Throwable -> Lae
            long r3 = r3 + r5
            int r3 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r3 > 0) goto La8
            goto L82
        L78:
            long r3 = (long) r6     // Catch: java.lang.Throwable -> Lae
            long r3 = r12.toMillis(r3)     // Catch: java.lang.Throwable -> Lae
            long r3 = r3 + r13
            int r3 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r3 > 0) goto La8
        L82:
            com.braze.support.BrazeLogger$Priority r5 = com.braze.support.BrazeLogger.Priority.I     // Catch: java.lang.Throwable -> Lae
            com.braze.managers.r$$ExternalSyntheticLambda5 r8 = new com.braze.managers.r$$ExternalSyntheticLambda5     // Catch: java.lang.Throwable -> Lae
            r8.<init>()     // Catch: java.lang.Throwable -> Lae
            r9 = 6
            r10 = 0
            r6 = 0
            r7 = 0
            r3 = r11
            r4 = r15
            com.braze.support.BrazeLogger.brazelog$default(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lae
            r15.k()     // Catch: java.lang.Throwable -> Lae
            com.braze.storage.s r1 = r15.b     // Catch: java.lang.Throwable -> Lae
            com.braze.models.l r3 = r15.l     // Catch: java.lang.Throwable -> Lae
            if (r3 == 0) goto L9e
            com.braze.models.o r3 = r3.f160a     // Catch: java.lang.Throwable -> Lae
            goto L9f
        L9e:
            r3 = r2
        L9f:
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> Lae
            r1.a(r3)     // Catch: java.lang.Throwable -> Lae
            r15.l = r2     // Catch: java.lang.Throwable -> Lae
        La8:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lae
        Laa:
            r0.unlock()
            return
        Lae:
            r1 = move-exception
            r0.unlock()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.managers.r.i():void");
    }

    public final void k() {
        com.braze.models.l lVar = this.l;
        if (lVar != null) {
            ReentrantLock reentrantLock = this.h;
            reentrantLock.lock();
            try {
                lVar.d = true;
                lVar.c = Double.valueOf(DateTimeUtils.nowInSecondsPrecise());
                this.b.a(lVar);
                this.c.b(new com.braze.events.internal.z(lVar), com.braze.events.internal.z.class);
                ((com.braze.events.d) this.d).b(new SessionStateChangedEvent(lVar.f160a.b, SessionStateChangedEvent.ChangeType.SESSION_ENDED), SessionStateChangedEvent.class);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final void l() {
        try {
            p pVar = this.j;
            if (pVar != null) {
                this.f131a.unregisterReceiver(pVar);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.m();
                }
            }, 4, (Object) null);
        }
    }

    public final void n() {
        Job launch$default;
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            f();
            final com.braze.models.l lVar = this.l;
            if (lVar != null) {
                lVar.c = Double.valueOf(DateTimeUtils.nowInSecondsPrecise());
                this.b.a(lVar);
                Job.DefaultImpls.cancel$default(this.k, (CancellationException) null, 1, (Object) null);
                launch$default = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new q(this, null), 3, null);
                this.k = launch$default;
                d();
                this.c.b(com.braze.events.internal.b0.f50a, com.braze.events.internal.b0.class);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.e(com.braze.models.l.this);
                    }
                }, 7, (Object) null);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(com.braze.models.l lVar) {
        return "Clearing completely dispatched sealed session " + lVar.f160a;
    }

    public static final String b() {
        return "Cancelling session seal alarm";
    }

    public static final String c() {
        return "Failed to cancel session seal alarm";
    }

    public static final String e() {
        return "Failed to create session seal alarm";
    }

    public final void d() {
        com.braze.models.l mutableSession = this.l;
        if (mutableSession != null) {
            int i = this.f;
            boolean z = this.g;
            Intrinsics.checkNotNullParameter(mutableSession, "mutableSession");
            TimeUnit timeUnit = TimeUnit.SECONDS;
            final long millis = timeUnit.toMillis(i);
            if (z) {
                millis = Math.max(o, (timeUnit.toMillis((long) mutableSession.b) + millis) - DateTimeUtils.nowInMilliseconds());
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.a(millis);
                }
            }, 7, (Object) null);
            try {
                Intent intent = new Intent(this.i);
                intent.putExtra(SDKAnalyticsEvents.PARAMETER_SESSION_ID, mutableSession.toString());
                this.e.set(1, DateTimeUtils.nowInMilliseconds() + millis, PendingIntent.getBroadcast(this.f131a, 0, intent, IntentUtils.getImmutablePendingIntentFlags() | 1073741824));
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.e();
                    }
                }, 4, (Object) null);
            }
        }
    }

    public static final String a(long j) {
        return "Creating a session seal alarm with a delay of " + j + " ms";
    }

    public final void a() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return r.b();
            }
        }, 7, (Object) null);
        try {
            Intent intent = new Intent(this.i);
            intent.putExtra(SDKAnalyticsEvents.PARAMETER_SESSION_ID, String.valueOf(this.l));
            this.e.cancel(PendingIntent.getBroadcast(this.f131a, 0, intent, IntentUtils.getImmutablePendingIntentFlags() | 1073741824));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.c();
                }
            }, 4, (Object) null);
        }
    }
}
