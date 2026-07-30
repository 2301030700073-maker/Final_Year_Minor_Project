package b.e.c.c;

import b.b.g.Z;
import java.util.Objects;

/* loaded from: classes.dex */
public class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f687a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Z f688b;

    public f(Z z, int i) {
        this.f688b = z;
        this.f687a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        Objects.requireNonNull(this.f688b);
    }
}
