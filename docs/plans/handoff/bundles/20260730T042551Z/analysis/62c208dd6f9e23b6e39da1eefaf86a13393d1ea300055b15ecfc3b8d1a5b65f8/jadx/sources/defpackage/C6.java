package defpackage;

/* loaded from: classes.dex */
public final class C6<T> {

    /* renamed from: do, reason: not valid java name */
    public E6<T> f332do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Mz<Void> f333do = new Mz<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f334do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f335do;

    public final void finalize() {
        Mz<Void> mz;
        E6<T> e6 = this.f332do;
        if (e6 != null && !e6.isDone()) {
            e6.f734do.mo1470while(new D6("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f334do));
        }
        if (this.f335do || (mz = this.f333do) == null) {
            return;
        }
        mz.mo1469throw(null);
    }
}
