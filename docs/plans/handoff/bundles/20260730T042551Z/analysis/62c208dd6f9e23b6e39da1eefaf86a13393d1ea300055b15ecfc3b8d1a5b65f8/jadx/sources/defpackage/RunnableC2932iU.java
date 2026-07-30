package defpackage;

/* renamed from: iU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2932iU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f13521do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13522for;

    public /* synthetic */ RunnableC2932iU(Object obj, int i) {
        this.f13522for = i;
        this.f13521do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f13522for;
        Object obj = this.f13521do;
        switch (i) {
            case 0:
                ((C2638dU) obj).f12502try = null;
                break;
            default:
                C3217kU c3217kU = ((AU) obj).f90do;
                c3217kU.f13997do = null;
                c3217kU.m7268strictfp();
                break;
        }
    }
}
