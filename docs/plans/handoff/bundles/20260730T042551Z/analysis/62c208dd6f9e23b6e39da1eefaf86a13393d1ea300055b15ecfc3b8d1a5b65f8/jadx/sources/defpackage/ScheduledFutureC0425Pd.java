package defpackage;

import android.annotation.SuppressLint;
import defpackage.Cstatic;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@SuppressLint({"RestrictedApi"})
/* renamed from: Pd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ScheduledFutureC0425Pd<V> extends Cstatic<V> implements ScheduledFuture<V> {

    /* renamed from: do, reason: not valid java name */
    public final ScheduledFuture<?> f2802do;

    /* renamed from: Pd$do, reason: invalid class name */
    public class Cdo implements Cif<V> {
        public Cdo() {
        }
    }

    /* renamed from: Pd$for, reason: invalid class name */
    public interface Cfor<T> {
        /* renamed from: do */
        ScheduledFuture mo855do(Cdo cdo);
    }

    /* renamed from: Pd$if, reason: invalid class name */
    public interface Cif<T> {
    }

    public ScheduledFutureC0425Pd(Cfor<V> cfor) {
        this.f2802do = cfor.mo855do(new Cdo());
    }

    @Override // defpackage.Cstatic
    /* renamed from: case, reason: not valid java name */
    public final void mo1774case() {
        ScheduledFuture<?> scheduledFuture = this.f2802do;
        Object obj = ((Cstatic) this).f15544do;
        scheduledFuture.cancel((obj instanceof Cstatic.Cif) && ((Cstatic.Cif) obj).f15554do);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.f2802do.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f2802do.getDelay(timeUnit);
    }
}
