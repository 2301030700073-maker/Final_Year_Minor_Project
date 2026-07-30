package defpackage;

import defpackage.AbstractC3905wB;
import java.util.Map;

/* renamed from: q4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3545q4 extends AbstractC3905wB {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2792g8 f15034do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Ex, AbstractC3905wB.Cdo> f15035do;

    public C3545q4(InterfaceC2792g8 interfaceC2792g8, Map<Ex, AbstractC3905wB.Cdo> map) {
        if (interfaceC2792g8 == null) {
            throw new NullPointerException("Null clock");
        }
        this.f15034do = interfaceC2792g8;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f15035do = map;
    }

    @Override // defpackage.AbstractC3905wB
    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2792g8 mo7850do() {
        return this.f15034do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3905wB)) {
            return false;
        }
        AbstractC3905wB abstractC3905wB = (AbstractC3905wB) obj;
        return this.f15034do.equals(abstractC3905wB.mo7850do()) && this.f15035do.equals(abstractC3905wB.mo7851for());
    }

    @Override // defpackage.AbstractC3905wB
    /* renamed from: for, reason: not valid java name */
    public final Map<Ex, AbstractC3905wB.Cdo> mo7851for() {
        return this.f15035do;
    }

    public final int hashCode() {
        return ((this.f15034do.hashCode() ^ 1000003) * 1000003) ^ this.f15035do.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f15034do + ", values=" + this.f15035do + "}";
    }
}
