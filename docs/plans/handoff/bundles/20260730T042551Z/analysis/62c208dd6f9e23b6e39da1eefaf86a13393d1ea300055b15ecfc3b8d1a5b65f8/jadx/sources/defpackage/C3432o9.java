package defpackage;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;

/* renamed from: o9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3432o9 implements InterfaceC3491p9 {
    @Override // defpackage.InterfaceC3491p9
    /* renamed from: do */
    public final List<C0793c9<?>> mo7562do(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (C0793c9<?> c0793c9 : componentRegistrar.getComponents()) {
            String str = c0793c9.f8499do;
            if (str != null) {
                c0793c9 = new C0793c9<>(str, c0793c9.f8500do, c0793c9.f8504if, c0793c9.f8498do, c0793c9.f8503if, new C0714aq(str, c0793c9, 1), c0793c9.f8502for);
            }
            arrayList.add(c0793c9);
        }
        return arrayList;
    }
}
