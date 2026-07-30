package defpackage;

import java.util.Random;

/* renamed from: Bh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0122Bh extends Cnative {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f258do = new Cdo();

    /* renamed from: Bh$do, reason: invalid class name */
    public static final class Cdo extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public final Random initialValue() {
            return new Random();
        }
    }

    @Override // defpackage.Cnative
    /* renamed from: for, reason: not valid java name */
    public final Random mo199for() {
        Random random = this.f258do.get();
        C0173Do.m399new(random, "implStorage.get()");
        return random;
    }
}
