package defpackage;

import com.google.protobuf.Cthis;

/* renamed from: Pk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0432Pk implements InterfaceC0462Qs {

    /* renamed from: do, reason: not valid java name */
    public static final C0432Pk f2821do = new C0432Pk();

    @Override // defpackage.InterfaceC0462Qs
    /* renamed from: do, reason: not valid java name */
    public final boolean mo1797do(Class<?> cls) {
        return Cthis.class.isAssignableFrom(cls);
    }

    @Override // defpackage.InterfaceC0462Qs
    /* renamed from: if, reason: not valid java name */
    public final InterfaceC0418Os mo1798if(Class<?> cls) {
        if (!Cthis.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (InterfaceC0418Os) Cthis.m6297throws(cls.asSubclass(Cthis.class)).mo523static(Cthis.Ctry.BUILD_MESSAGE_INFO);
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
        }
    }
}
