package defpackage;

import j$.util.DesugarCollections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class Xz implements InterfaceC2911i9 {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2911i9 f4628do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<Dy<?>> f4629do;

    /* renamed from: for, reason: not valid java name */
    public final Set<Dy<?>> f4630for;

    /* renamed from: if, reason: not valid java name */
    public final Set<Dy<?>> f4631if;

    /* renamed from: new, reason: not valid java name */
    public final Set<Dy<?>> f4632new;

    /* renamed from: Xz$do, reason: invalid class name */
    public static class Cdo implements InterfaceC3950wy {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC3950wy f4633do;

        public Cdo(InterfaceC3950wy interfaceC3950wy) {
            this.f4633do = interfaceC3950wy;
        }
    }

    public Xz(C0793c9 c0793c9, C3785u9 c3785u9) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (C0513Td c0513Td : c0793c9.f8504if) {
            int i = c0513Td.f3718if;
            boolean z = i == 0;
            int i2 = c0513Td.f3716do;
            Dy<?> dy = c0513Td.f3717do;
            if (z) {
                if (i2 == 2) {
                    hashSet4.add(dy);
                } else {
                    hashSet.add(dy);
                }
            } else if (i == 2) {
                hashSet3.add(dy);
            } else if (i2 == 2) {
                hashSet5.add(dy);
            } else {
                hashSet2.add(dy);
            }
        }
        if (!c0793c9.f8502for.isEmpty()) {
            hashSet.add(Dy.m416do(InterfaceC3950wy.class));
        }
        this.f4629do = DesugarCollections.unmodifiableSet(hashSet);
        this.f4631if = DesugarCollections.unmodifiableSet(hashSet2);
        this.f4630for = DesugarCollections.unmodifiableSet(hashSet3);
        this.f4632new = DesugarCollections.unmodifiableSet(hashSet4);
        DesugarCollections.unmodifiableSet(hashSet5);
        this.f4628do = c3785u9;
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: case, reason: not valid java name */
    public final <T> InterfaceC3655ry<T> mo2878case(Dy<T> dy) {
        if (this.f4631if.contains(dy)) {
            return this.f4628do.mo2878case(dy);
        }
        throw new C0623Yd(String.format("Attempting to request an undeclared dependency Provider<%s>.", dy));
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: do, reason: not valid java name */
    public final <T> InterfaceC0118Bd<T> mo2879do(Dy<T> dy) {
        if (this.f4630for.contains(dy)) {
            return this.f4628do.mo2879do(dy);
        }
        throw new C0623Yd(String.format("Attempting to request an undeclared dependency Deferred<%s>.", dy));
    }

    /* renamed from: else, reason: not valid java name */
    public final <T> InterfaceC0118Bd<T> m2880else(Class<T> cls) {
        return mo2879do(Dy.m416do(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.InterfaceC2911i9
    /* renamed from: for, reason: not valid java name */
    public final <T> T mo2881for(Class<T> cls) {
        if (!this.f4629do.contains(Dy.m416do(cls))) {
            throw new C0623Yd(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t = (T) this.f4628do.mo2881for(cls);
        return !cls.equals(InterfaceC3950wy.class) ? t : (T) new Cdo((InterfaceC3950wy) t);
    }

    /* renamed from: goto, reason: not valid java name */
    public final Set m2882goto(Class cls) {
        return mo2885try(Dy.m416do(cls));
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: if, reason: not valid java name */
    public final <T> T mo2883if(Dy<T> dy) {
        if (this.f4629do.contains(dy)) {
            return (T) this.f4628do.mo2883if(dy);
        }
        throw new C0623Yd(String.format("Attempting to request an undeclared dependency %s.", dy));
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: new, reason: not valid java name */
    public final <T> InterfaceC3655ry<T> mo2884new(Class<T> cls) {
        return mo2878case(Dy.m416do(cls));
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: try, reason: not valid java name */
    public final <T> Set<T> mo2885try(Dy<T> dy) {
        if (this.f4632new.contains(dy)) {
            return this.f4628do.mo2885try(dy);
        }
        throw new C0623Yd(String.format("Attempting to request an undeclared dependency Set<%s>.", dy));
    }
}
