package defpackage;

import android.os.Bundle;
import j$.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* renamed from: z5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4076z5 implements F0, E0 {

    /* renamed from: do, reason: not valid java name */
    public final Object f16860do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CountDownLatch f16861do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeUnit f16862do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4082zB f16863do;

    public C4076z5(C4082zB c4082zB, TimeUnit timeUnit) {
        this.f16863do = c4082zB;
        this.f16862do = timeUnit;
    }

    @Override // defpackage.F0
    /* renamed from: do */
    public final void mo542do(Bundle bundle, String str) {
        CountDownLatch countDownLatch = this.f16861do;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }

    @Override // defpackage.E0
    /* renamed from: if */
    public final void mo269if(Bundle bundle) {
        synchronized (this.f16860do) {
            Objects.toString(bundle);
            this.f16861do = new CountDownLatch(1);
            this.f16863do.mo269if(bundle);
            try {
                this.f16861do.await(500, this.f16862do);
            } catch (InterruptedException unused) {
            }
            this.f16861do = null;
        }
    }
}
