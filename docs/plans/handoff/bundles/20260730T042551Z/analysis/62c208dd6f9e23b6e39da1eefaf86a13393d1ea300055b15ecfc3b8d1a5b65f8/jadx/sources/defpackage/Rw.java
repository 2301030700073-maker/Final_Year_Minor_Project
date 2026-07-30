package defpackage;

import j$.util.concurrent.ThreadLocalRandom;
import java.util.Random;

/* loaded from: classes3.dex */
public final class Rw extends Cnative {
    @Override // defpackage.Cnative
    /* renamed from: for */
    public final Random mo199for() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        C0173Do.m399new(current, "current()");
        return current;
    }
}
