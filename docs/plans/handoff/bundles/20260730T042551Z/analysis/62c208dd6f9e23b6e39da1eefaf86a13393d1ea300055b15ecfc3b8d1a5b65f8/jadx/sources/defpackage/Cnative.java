package defpackage;

import java.util.Random;

/* renamed from: native, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnative extends Iy {
    @Override // defpackage.Iy
    /* renamed from: do */
    public final int mo994do() {
        return mo199for().nextInt();
    }

    /* renamed from: for */
    public abstract Random mo199for();

    @Override // defpackage.Iy
    /* renamed from: if */
    public final int mo995if() {
        return mo199for().nextInt(2147418112);
    }
}
