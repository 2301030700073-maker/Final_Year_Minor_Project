package defpackage;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import defpackage.AbstractC3884vr;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ai, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0706ai {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0503Sp<C0293Jc> f4984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f4986do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3463oi f4989do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<C3340md> f4990do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3785u9 f4991do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f4983do = new Object();

    /* renamed from: do, reason: not valid java name */
    public static final F2 f4982do = new F2();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f4988do = new AtomicBoolean(false);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f4993if = new AtomicBoolean();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList f4987do = new CopyOnWriteArrayList();

    /* renamed from: if, reason: not valid java name */
    public final CopyOnWriteArrayList f4992if = new CopyOnWriteArrayList();

    @KeepForSdk
    /* renamed from: ai$do, reason: invalid class name */
    public interface Cdo {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
    /* renamed from: ai$for, reason: invalid class name */
    public static class Cfor extends BroadcastReceiver {

        /* renamed from: do, reason: not valid java name */
        public static final AtomicReference<Cfor> f4994do = new AtomicReference<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Context f4995do;

        public Cfor(Context context) {
            this.f4995do = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (C0706ai.f4983do) {
                Iterator it = ((AbstractC3884vr.Ctry) C0706ai.f4982do.values()).iterator();
                while (it.hasNext()) {
                    ((C0706ai) it.next()).m3151try();
                }
            }
            this.f4995do.unregisterReceiver(this);
        }
    }

    @TargetApi(14)
    /* renamed from: ai$if, reason: invalid class name */
    public static class Cif implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public static final AtomicReference<Cif> f4996do = new AtomicReference<>();

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void onBackgroundStateChanged(boolean z) {
            synchronized (C0706ai.f4983do) {
                Iterator it = new ArrayList(C0706ai.f4982do.values()).iterator();
                while (it.hasNext()) {
                    C0706ai c0706ai = (C0706ai) it.next();
                    if (c0706ai.f4988do.get()) {
                        Iterator it2 = c0706ai.f4987do.iterator();
                        while (it2.hasNext()) {
                            ((Cdo) it2.next()).onBackgroundStateChanged(z);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00ae A[LOOP:0: B:10:0x00a8->B:12:0x00ae, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0706ai(final android.content.Context r9, defpackage.C3463oi r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0706ai.<init>(android.content.Context, oi, java.lang.String):void");
    }

    /* renamed from: case, reason: not valid java name */
    public static C0706ai m3145case(Context context, C3463oi c3463oi) {
        C0706ai c0706ai;
        boolean z;
        AtomicReference<Cif> atomicReference = Cif.f4996do;
        if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference<Cif> atomicReference2 = Cif.f4996do;
            if (atomicReference2.get() == null) {
                Cif cif = new Cif();
                while (true) {
                    if (atomicReference2.compareAndSet(null, cif)) {
                        z = true;
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(cif);
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f4983do) {
            F2 f2 = f4982do;
            Preconditions.checkState(true ^ f2.containsKey("[DEFAULT]"), "FirebaseApp name [DEFAULT] already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            c0706ai = new C0706ai(context, c3463oi, "[DEFAULT]");
            f2.put("[DEFAULT]", c0706ai);
        }
        c0706ai.m3151try();
        return c0706ai;
    }

    /* renamed from: for, reason: not valid java name */
    public static C0706ai m3146for() {
        C0706ai c0706ai;
        synchronized (f4983do) {
            c0706ai = (C0706ai) f4982do.getOrDefault("[DEFAULT]", null);
            if (c0706ai == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
            c0706ai.f4990do.get().m7459for();
        }
        return c0706ai;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3147do() {
        Preconditions.checkState(!this.f4993if.get(), "FirebaseApp was deleted");
    }

    @KeepForSdk
    /* renamed from: else, reason: not valid java name */
    public final boolean m3148else() {
        boolean z;
        m3147do();
        C0293Jc c0293Jc = this.f4984do.get();
        synchronized (c0293Jc) {
            z = c0293Jc.f1653do;
        }
        return z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0706ai)) {
            return false;
        }
        C0706ai c0706ai = (C0706ai) obj;
        c0706ai.m3147do();
        return this.f4986do.equals(c0706ai.f4986do);
    }

    public final int hashCode() {
        return this.f4986do.hashCode();
    }

    @KeepForSdk
    /* renamed from: if, reason: not valid java name */
    public final <T> T m3149if(Class<T> cls) {
        m3147do();
        return (T) this.f4991do.mo2881for(cls);
    }

    @KeepForSdk
    /* renamed from: new, reason: not valid java name */
    public final String m3150new() {
        StringBuilder sb = new StringBuilder();
        m3147do();
        sb.append(Base64Utils.encodeUrlSafeNoPadding(this.f4986do.getBytes(Charset.defaultCharset())));
        sb.append("+");
        m3147do();
        sb.append(Base64Utils.encodeUrlSafeNoPadding(this.f4989do.f14828if.getBytes(Charset.defaultCharset())));
        return sb.toString();
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(FacebookRequestErrorClassification.KEY_NAME, this.f4986do).add("options", this.f4989do).toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3151try() {
        HashMap hashMap;
        boolean z = true;
        if (!GJ.m724do(this.f4985do)) {
            m3147do();
            Context context = this.f4985do;
            AtomicReference<Cfor> atomicReference = Cfor.f4994do;
            if (atomicReference.get() == null) {
                Cfor cfor = new Cfor(context);
                while (true) {
                    if (atomicReference.compareAndSet(null, cfor)) {
                        break;
                    } else if (atomicReference.get() != null) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    context.registerReceiver(cfor, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                    return;
                }
                return;
            }
            return;
        }
        m3147do();
        C3785u9 c3785u9 = this.f4991do;
        m3147do();
        boolean equals = "[DEFAULT]".equals(this.f4986do);
        AtomicReference<Boolean> atomicReference2 = c3785u9.f15862do;
        Boolean valueOf = Boolean.valueOf(equals);
        while (true) {
            if (atomicReference2.compareAndSet(null, valueOf)) {
                break;
            } else if (atomicReference2.get() != null) {
                z = false;
                break;
            }
        }
        if (z) {
            synchronized (c3785u9) {
                hashMap = new HashMap(c3785u9.f15860do);
            }
            c3785u9.m8374else(hashMap, equals);
        }
        this.f4990do.get().m7459for();
    }
}
