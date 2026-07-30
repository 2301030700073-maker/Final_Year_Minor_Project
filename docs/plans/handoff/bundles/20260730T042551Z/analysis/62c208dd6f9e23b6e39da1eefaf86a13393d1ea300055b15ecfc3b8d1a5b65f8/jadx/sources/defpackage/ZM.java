package defpackage;

import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ZM {

    /* renamed from: do, reason: not valid java name */
    public final Object f4811do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f4812do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f4813do;

    /* renamed from: if, reason: not valid java name */
    public final HashMap f4814if;

    /* renamed from: ZM$do, reason: invalid class name */
    public class Cdo implements ThreadFactory {

        /* renamed from: do, reason: not valid java name */
        public int f4815do = 0;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f4815do);
            this.f4815do = this.f4815do + 1;
            return newThread;
        }
    }

    /* renamed from: ZM$for, reason: invalid class name */
    public static class Cfor implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final String f4816break;

        /* renamed from: do, reason: not valid java name */
        public final ZM f4817do;

        public Cfor(ZM zm, String str) {
            this.f4817do = zm;
            this.f4816break = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f4817do.f4811do) {
                if (((Cfor) this.f4817do.f4812do.remove(this.f4816break)) != null) {
                    Cif cif = (Cif) this.f4817do.f4814if.remove(this.f4816break);
                    if (cif != null) {
                        cif.mo2994if(this.f4816break);
                    }
                } else {
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("Timer with %s is already marked as complete.", this.f4816break);
                    m2869for.mo2872do(new Throwable[0]);
                }
            }
        }
    }

    /* renamed from: ZM$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: if, reason: not valid java name */
        void mo2994if(String str);
    }

    static {
        AbstractC0614Xq.m2870try("WorkTimer");
    }

    public ZM() {
        Cdo cdo = new Cdo();
        this.f4812do = new HashMap();
        this.f4814if = new HashMap();
        this.f4811do = new Object();
        this.f4813do = Executors.newSingleThreadScheduledExecutor(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2992do(String str, Cif cif) {
        synchronized (this.f4811do) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Starting timer for %s", str);
            m2869for.mo2872do(new Throwable[0]);
            m2993if(str);
            Cfor cfor = new Cfor(this, str);
            this.f4812do.put(str, cfor);
            this.f4814if.put(str, cif);
            this.f4813do.schedule(cfor, 600000L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2993if(String str) {
        synchronized (this.f4811do) {
            if (((Cfor) this.f4812do.remove(str)) != null) {
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                String.format("Stopping timer for %s", str);
                m2869for.mo2872do(new Throwable[0]);
                this.f4814if.remove(str);
            }
        }
    }
}
