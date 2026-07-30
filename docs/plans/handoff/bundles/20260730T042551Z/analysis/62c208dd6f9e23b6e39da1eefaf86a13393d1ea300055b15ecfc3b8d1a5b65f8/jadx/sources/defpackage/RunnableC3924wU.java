package defpackage;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzo;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: wU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3924wU implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f16359break = null;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f16360catch;

    /* renamed from: class, reason: not valid java name */
    public final /* synthetic */ String f16361class;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzo f16362do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AtomicReference f16363do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f16364do;

    public RunnableC3924wU(C3217kU c3217kU, AtomicReference atomicReference, String str, String str2, zzo zzoVar) {
        this.f16363do = atomicReference;
        this.f16360catch = str;
        this.f16361class = str2;
        this.f16362do = zzoVar;
        this.f16364do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU c3217kU;
        YR yr;
        synchronized (this.f16363do) {
            try {
                try {
                    c3217kU = this.f16364do;
                    yr = c3217kU.f13997do;
                } catch (RemoteException e) {
                    this.f16364do.mo2249case().f13717do.m7370new("(legacy) Failed to get conditional properties; remote exception", C3156jS.m7106while(this.f16359break), this.f16360catch, e);
                    this.f16363do.set(Collections.emptyList());
                }
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7370new("(legacy) Failed to get conditional properties; not connected to service", C3156jS.m7106while(this.f16359break), this.f16360catch, this.f16361class);
                    this.f16363do.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f16359break)) {
                    Preconditions.checkNotNull(this.f16362do);
                    this.f16363do.set(yr.mo2928throw(this.f16360catch, this.f16361class, this.f16362do));
                } else {
                    this.f16363do.set(yr.mo2926public(this.f16359break, this.f16360catch, this.f16361class));
                }
                this.f16364do.m7271volatile();
                this.f16363do.notify();
            } finally {
                this.f16363do.notify();
            }
        }
    }
}
