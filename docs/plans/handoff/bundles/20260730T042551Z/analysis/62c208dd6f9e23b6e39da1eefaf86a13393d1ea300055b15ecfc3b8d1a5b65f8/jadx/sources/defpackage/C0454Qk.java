package defpackage;

import androidx.datastore.preferences.protobuf.Cfinal;

/* renamed from: Qk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0454Qk implements InterfaceC0484Rs {

    /* renamed from: do, reason: not valid java name */
    public static final C0454Qk f3040do = new C0454Qk();

    @Override // defpackage.InterfaceC0484Rs
    /* renamed from: do, reason: not valid java name */
    public final boolean mo1991do(Class<?> cls) {
        return Cfinal.class.isAssignableFrom(cls);
    }

    @Override // defpackage.InterfaceC0484Rs
    /* renamed from: if, reason: not valid java name */
    public final InterfaceC0440Ps mo1992if(Class<?> cls) {
        if (!Cfinal.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (InterfaceC0440Ps) Cfinal.m3865catch(cls.asSubclass(Cfinal.class)).mo3869break(Cfinal.Ccase.BUILD_MESSAGE_INFO);
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
        }
    }
}
