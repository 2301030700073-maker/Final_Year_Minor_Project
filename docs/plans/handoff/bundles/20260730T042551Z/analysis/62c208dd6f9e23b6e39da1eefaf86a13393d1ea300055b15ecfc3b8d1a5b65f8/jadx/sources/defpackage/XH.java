package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class XH {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f4484do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final long f4485do = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0148Cl f4486do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VH f4488do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0660Zs f4489do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4490do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FirebaseMessaging f4491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f4492do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final F2 f4487do = new F2();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4493do = false;

    public XH(FirebaseMessaging firebaseMessaging, C0660Zs c0660Zs, VH vh, C0148Cl c0148Cl, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f4491do = firebaseMessaging;
        this.f4489do = c0660Zs;
        this.f4488do = vh;
        this.f4486do = c0148Cl;
        this.f4490do = context;
        this.f4492do = scheduledExecutorService;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> void m2816do(FG<T> fg) {
        try {
            LG.m1318if(fg, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            e = e;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e3) {
            e = e3;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0076 A[LOOP:0: B:1:0x0000->B:19:0x0076, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d A[Catch: IOException -> 0x0041, TRY_LEAVE, TryCatch #0 {IOException -> 0x0041, blocks: (B:8:0x000e, B:17:0x0039, B:23:0x003d, B:24:0x001d, B:27:0x0027), top: B:7:0x000e }] */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2817case() {
        /*
            r6 = this;
        L0:
            monitor-enter(r6)
            VH r0 = r6.f4488do     // Catch: java.lang.Throwable -> L7f
            QH r0 = r0.m2552do()     // Catch: java.lang.Throwable -> L7f
            r1 = 1
            if (r0 != 0) goto Lc
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7f
            return r1
        Lc:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7f
            r2 = 0
            java.lang.String r3 = r0.f2901if     // Catch: java.io.IOException -> L41
            int r4 = r3.hashCode()     // Catch: java.io.IOException -> L41
            r5 = 83
            if (r4 == r5) goto L27
            r5 = 85
            if (r4 == r5) goto L1d
            goto L31
        L1d:
            java.lang.String r4 = "U"
            boolean r3 = r3.equals(r4)     // Catch: java.io.IOException -> L41
            if (r3 == 0) goto L31
            r3 = 1
            goto L32
        L27:
            java.lang.String r4 = "S"
            boolean r3 = r3.equals(r4)     // Catch: java.io.IOException -> L41
            if (r3 == 0) goto L31
            r3 = 0
            goto L32
        L31:
            r3 = -1
        L32:
            java.lang.String r4 = r0.f2899do
            if (r3 == 0) goto L3d
            if (r3 == r1) goto L39
            goto L73
        L39:
            r6.m2819for(r4)     // Catch: java.io.IOException -> L41
            goto L73
        L3d:
            r6.m2820if(r4)     // Catch: java.io.IOException -> L41
            goto L73
        L41:
            r1 = move-exception
            java.lang.String r3 = "SERVICE_NOT_AVAILABLE"
            java.lang.String r4 = r1.getMessage()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L6f
            java.lang.String r3 = "INTERNAL_SERVER_ERROR"
            java.lang.String r4 = r1.getMessage()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L6f
            java.lang.String r3 = "TOO_MANY_SUBSCRIBERS"
            java.lang.String r4 = r1.getMessage()
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L67
            goto L6f
        L67:
            java.lang.String r3 = r1.getMessage()
            if (r3 != 0) goto L6e
            goto L72
        L6e:
            throw r1
        L6f:
            r1.getMessage()
        L72:
            r1 = 0
        L73:
            if (r1 != 0) goto L76
            return r2
        L76:
            VH r1 = r6.f4488do
            r1.m2553for(r0)
            r6.m2821new(r0)
            goto L0
        L7f:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.XH.m2817case():boolean");
    }

    /* renamed from: else, reason: not valid java name */
    public final void m2818else(long j) {
        this.f4492do.schedule(new YH(this, this.f4490do, this.f4489do, Math.min(Math.max(30L, 2 * j), f4485do)), j, TimeUnit.SECONDS);
        synchronized (this) {
            this.f4493do = true;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2819for(String str) {
        String m6087do = this.f4491do.m6087do();
        C0148Cl c0148Cl = this.f4486do;
        c0148Cl.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str);
        bundle.putString("delete", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        m2816do(c0148Cl.m289do(c0148Cl.m290for(bundle, m6087do, "/topics/" + str)));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2820if(String str) {
        String m6087do = this.f4491do.m6087do();
        C0148Cl c0148Cl = this.f4486do;
        c0148Cl.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str);
        m2816do(c0148Cl.m289do(c0148Cl.m290for(bundle, m6087do, "/topics/" + str)));
    }

    /* renamed from: new, reason: not valid java name */
    public final void m2821new(QH qh) {
        synchronized (this.f4487do) {
            String str = qh.f2900for;
            if (this.f4487do.containsKey(str)) {
                ArrayDeque arrayDeque = (ArrayDeque) this.f4487do.getOrDefault(str, null);
                GG gg = (GG) arrayDeque.poll();
                if (gg != null) {
                    gg.m721if(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f4487do.remove(str);
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final synchronized void m2822try(boolean z) {
        this.f4493do = z;
    }
}
