package b.i.b;

/* loaded from: classes.dex */
public class G0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H0 f850a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J0 f851b;

    public G0(J0 j0, H0 h0) {
        this.f851b = j0;
        this.f850a = h0;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f851b.f861c.remove(this.f850a.f855b);
    }
}
