package okhttp3.internal.connection;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RoutePlanner$ConnectResult {
    public final RoutePlanner$Plan nextPlan;
    public final RoutePlanner$Plan plan;
    public final Throwable throwable;

    public /* synthetic */ RoutePlanner$ConnectResult(RoutePlanner$Plan routePlanner$Plan, Throwable th, int i) {
        this(routePlanner$Plan, (ConnectPlan) null, (i & 4) != 0 ? null : th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoutePlanner$ConnectResult)) {
            return false;
        }
        RoutePlanner$ConnectResult routePlanner$ConnectResult = (RoutePlanner$ConnectResult) obj;
        return Intrinsics.areEqual(this.plan, routePlanner$ConnectResult.plan) && Intrinsics.areEqual(this.nextPlan, routePlanner$ConnectResult.nextPlan) && Intrinsics.areEqual(this.throwable, routePlanner$ConnectResult.throwable);
    }

    public final int hashCode() {
        int hashCode = this.plan.hashCode() * 31;
        RoutePlanner$Plan routePlanner$Plan = this.nextPlan;
        int hashCode2 = (hashCode + (routePlanner$Plan == null ? 0 : routePlanner$Plan.hashCode())) * 31;
        Throwable th = this.throwable;
        return hashCode2 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "ConnectResult(plan=" + this.plan + ", nextPlan=" + this.nextPlan + ", throwable=" + this.throwable + ')';
    }

    public RoutePlanner$ConnectResult(RoutePlanner$Plan routePlanner$Plan, ConnectPlan connectPlan, Throwable th) {
        this.plan = routePlanner$Plan;
        this.nextPlan = connectPlan;
        this.throwable = th;
    }
}
