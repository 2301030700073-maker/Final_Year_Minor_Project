package b.i.b;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class k0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f913a;

    public k0(ArrayList arrayList) {
        this.f913a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        q0.p(this.f913a, 4);
    }
}
