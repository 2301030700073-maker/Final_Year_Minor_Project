package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdg;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
public final class RS<V> extends FutureTask<V> implements Comparable<RS<V>> {

    /* renamed from: break, reason: not valid java name */
    public final String f3177break;

    /* renamed from: do, reason: not valid java name */
    public final long f3178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ QS f3179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f3180do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RS(QS qs, Runnable runnable, boolean z, String str) {
        super(zzdg.zza().zza(runnable), null);
        this.f3179do = qs;
        Preconditions.checkNotNull(str);
        long andIncrement = QS.f2940do.getAndIncrement();
        this.f3178do = andIncrement;
        this.f3177break = str;
        this.f3180do = z;
        if (andIncrement == Long.MAX_VALUE) {
            qs.mo2249case().f13717do.m7369if("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        RS rs = (RS) obj;
        boolean z = rs.f3180do;
        boolean z2 = this.f3180do;
        if (z2 != z) {
            return z2 ? -1 : 1;
        }
        long j = this.f3178do;
        long j2 = rs.f3178do;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f3179do.mo2249case().f13721if.m7368for("Two tasks share the same index. index", Long.valueOf(j));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        C3156jS mo2249case = this.f3179do.mo2249case();
        mo2249case.f13717do.m7368for(this.f3177break, th);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RS(QS qs, Callable callable, boolean z) {
        super(zzdg.zza().zza(callable));
        this.f3179do = qs;
        Preconditions.checkNotNull("Task exception on worker thread");
        long andIncrement = QS.f2940do.getAndIncrement();
        this.f3178do = andIncrement;
        this.f3177break = "Task exception on worker thread";
        this.f3180do = z;
        if (andIncrement == Long.MAX_VALUE) {
            qs.mo2249case().f13717do.m7369if("Tasks index overflow");
        }
    }
}
