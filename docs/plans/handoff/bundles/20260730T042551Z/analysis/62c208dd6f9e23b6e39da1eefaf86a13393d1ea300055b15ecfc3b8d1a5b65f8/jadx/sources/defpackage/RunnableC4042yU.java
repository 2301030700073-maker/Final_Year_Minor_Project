package defpackage;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzo;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: yU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC4042yU implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f16786break = null;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f16787catch;

    /* renamed from: class, reason: not valid java name */
    public final /* synthetic */ String f16788class;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzo f16789do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AtomicReference f16790do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f16791do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f16792do;

    public RunnableC4042yU(C3217kU c3217kU, AtomicReference atomicReference, String str, String str2, zzo zzoVar, boolean z) {
        this.f16790do = atomicReference;
        this.f16787catch = str;
        this.f16788class = str2;
        this.f16789do = zzoVar;
        this.f16792do = z;
        this.f16791do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU c3217kU;
        YR yr;
        synchronized (this.f16790do) {
            try {
                try {
                    c3217kU = this.f16791do;
                    yr = c3217kU.f13997do;
                } catch (RemoteException e) {
                    this.f16791do.mo2249case().f13717do.m7370new("(legacy) Failed to get user properties; remote exception", C3156jS.m7106while(this.f16786break), this.f16787catch, e);
                    this.f16790do.set(Collections.emptyList());
                }
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7370new("(legacy) Failed to get user properties; not connected to service", C3156jS.m7106while(this.f16786break), this.f16787catch, this.f16788class);
                    this.f16790do.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f16786break)) {
                    Preconditions.checkNotNull(this.f16789do);
                    this.f16790do.set(yr.mo2919default(this.f16787catch, this.f16788class, this.f16792do, this.f16789do));
                } else {
                    this.f16790do.set(yr.mo2929throws(this.f16786break, this.f16787catch, this.f16788class, this.f16792do));
                }
                this.f16791do.m7271volatile();
                this.f16790do.notify();
            } finally {
                this.f16790do.notify();
            }
        }
    }
}
