package defpackage;

import android.annotation.SuppressLint;
import androidx.work.ListenableWorker;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* renamed from: eN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC2689eN implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f12670break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ UC f12671do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RunnableC2748fN f12672do;

    public RunnableC2689eN(RunnableC2748fN runnableC2748fN, UC uc, String str) {
        this.f12672do = runnableC2748fN;
        this.f12671do = uc;
        this.f12670break = str;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"SyntheticAccessor"})
    public final void run() {
        String str = this.f12670break;
        RunnableC2748fN runnableC2748fN = this.f12672do;
        try {
            try {
                ListenableWorker.Cdo cdo = (ListenableWorker.Cdo) this.f12671do.get();
                if (cdo == null) {
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    int i = RunnableC2748fN.f12906for;
                    String.format("%s returned a null result. Treating it as a failure.", runnableC2748fN.f12910do.f3664if);
                    m2869for.mo2873if(new Throwable[0]);
                } else {
                    AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                    int i2 = RunnableC2748fN.f12906for;
                    String.format("%s returned a %s result.", runnableC2748fN.f12910do.f3664if, cdo);
                    m2869for2.mo2872do(new Throwable[0]);
                    runnableC2748fN.f12916do = cdo;
                }
            } catch (InterruptedException e) {
                e = e;
                AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
                int i3 = RunnableC2748fN.f12906for;
                String.format("%s failed because it threw an exception/error", str);
                m2869for3.mo2873if(e);
            } catch (CancellationException e2) {
                AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
                int i4 = RunnableC2748fN.f12906for;
                String.format("%s was cancelled", str);
                m2869for4.mo2874new(e2);
            } catch (ExecutionException e3) {
                e = e3;
                AbstractC0614Xq m2869for32 = AbstractC0614Xq.m2869for();
                int i32 = RunnableC2748fN.f12906for;
                String.format("%s failed because it threw an exception/error", str);
                m2869for32.mo2873if(e);
            }
        } finally {
            runnableC2748fN.m6663for();
        }
    }
}
