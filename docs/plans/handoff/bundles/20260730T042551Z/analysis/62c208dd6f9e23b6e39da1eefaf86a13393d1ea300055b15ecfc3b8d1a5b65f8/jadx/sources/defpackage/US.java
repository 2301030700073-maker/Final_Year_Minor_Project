package defpackage;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes3.dex */
public final class US extends Thread {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ QS f3914do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f3915do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BlockingQueue<RS<?>> f3916do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3917do = false;

    public US(QS qs, String str, BlockingQueue<RS<?>> blockingQueue) {
        this.f3914do = qs;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.f3915do = new Object();
        this.f3916do = blockingQueue;
        setName(str);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2420do() {
        synchronized (this.f3915do) {
            this.f3915do.notifyAll();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2421for() {
        synchronized (this.f3914do.f2948if) {
            if (!this.f3917do) {
                this.f3914do.f2945do.release();
                this.f3914do.f2948if.notifyAll();
                QS qs = this.f3914do;
                if (this == qs.f2942do) {
                    qs.f2942do = null;
                } else if (this == qs.f2947if) {
                    qs.f2947if = null;
                } else {
                    qs.mo2249case().f13717do.m7369if("Current scheduler thread is neither worker nor network");
                }
                this.f3917do = true;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2422if(InterruptedException interruptedException) {
        C3156jS mo2249case = this.f3914do.mo2249case();
        mo2249case.f13722new.m7368for(Cpublic.m7816case(getName(), " was interrupted"), interruptedException);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.f3914do.f2945do.acquire();
                z = true;
            } catch (InterruptedException e) {
                m2422if(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                RS<?> poll = this.f3916do.poll();
                if (poll != null) {
                    Process.setThreadPriority(poll.f3180do ? threadPriority : 10);
                    poll.run();
                } else {
                    synchronized (this.f3915do) {
                        if (this.f3916do.peek() == null) {
                            this.f3914do.getClass();
                            try {
                                this.f3915do.wait(30000L);
                            } catch (InterruptedException e2) {
                                m2422if(e2);
                            }
                        }
                    }
                    synchronized (this.f3914do.f2948if) {
                        if (this.f3916do.peek() == null) {
                            m2421for();
                            return;
                        }
                    }
                }
            }
        } finally {
            m2421for();
        }
    }
}
