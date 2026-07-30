package defpackage;

import java.util.concurrent.CancellationException;

/* loaded from: classes3.dex */
public final class S8 {

    /* renamed from: do, reason: not valid java name */
    public final L6 f3450do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2650dk<Throwable, C3206kJ> f3451do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f3452do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Throwable f3453do;

    /* renamed from: if, reason: not valid java name */
    public final Object f3454if;

    /* JADX WARN: Multi-variable type inference failed */
    public S8(Object obj, L6 l6, InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk, Object obj2, Throwable th) {
        this.f3452do = obj;
        this.f3450do = l6;
        this.f3451do = interfaceC2650dk;
        this.f3454if = obj2;
        this.f3453do = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Throwable] */
    /* renamed from: do, reason: not valid java name */
    public static S8 m2114do(S8 s8, L6 l6, CancellationException cancellationException, int i) {
        Object obj = (i & 1) != 0 ? s8.f3452do : null;
        if ((i & 2) != 0) {
            l6 = s8.f3450do;
        }
        L6 l62 = l6;
        InterfaceC2650dk<Throwable, C3206kJ> interfaceC2650dk = (i & 4) != 0 ? s8.f3451do : null;
        Object obj2 = (i & 8) != 0 ? s8.f3454if : null;
        CancellationException cancellationException2 = cancellationException;
        if ((i & 16) != 0) {
            cancellationException2 = s8.f3453do;
        }
        s8.getClass();
        return new S8(obj, l62, interfaceC2650dk, obj2, cancellationException2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S8)) {
            return false;
        }
        S8 s8 = (S8) obj;
        return C0173Do.m394do(this.f3452do, s8.f3452do) && C0173Do.m394do(this.f3450do, s8.f3450do) && C0173Do.m394do(this.f3451do, s8.f3451do) && C0173Do.m394do(this.f3454if, s8.f3454if) && C0173Do.m394do(this.f3453do, s8.f3453do);
    }

    public final int hashCode() {
        Object obj = this.f3452do;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        L6 l6 = this.f3450do;
        int hashCode2 = (hashCode + (l6 == null ? 0 : l6.hashCode())) * 31;
        InterfaceC2650dk<Throwable, C3206kJ> interfaceC2650dk = this.f3451do;
        int hashCode3 = (hashCode2 + (interfaceC2650dk == null ? 0 : interfaceC2650dk.hashCode())) * 31;
        Object obj2 = this.f3454if;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f3453do;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f3452do + ", cancelHandler=" + this.f3450do + ", onCancellation=" + this.f3451do + ", idempotentResume=" + this.f3454if + ", cancelCause=" + this.f3453do + ')';
    }

    public /* synthetic */ S8(Object obj, L6 l6, InterfaceC2650dk interfaceC2650dk, CancellationException cancellationException, int i) {
        this(obj, (i & 2) != 0 ? null : l6, (InterfaceC2650dk<? super Throwable, C3206kJ>) ((i & 4) != 0 ? null : interfaceC2650dk), (Object) null, (i & 16) != 0 ? null : cancellationException);
    }
}
