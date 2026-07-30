package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.A0;
import defpackage.C0513Td;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.Cdefault;
import defpackage.Cpackage;
import defpackage.InterfaceC2911i9;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes3.dex */
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Cdefault lambda$getComponents$0(InterfaceC2911i9 interfaceC2911i9) {
        return new Cdefault((Context) interfaceC2911i9.mo2881for(Context.class), interfaceC2911i9.mo2884new(A0.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C0793c9<?>> getComponents() {
        C0793c9.Cdo m4890if = C0793c9.m4890if(Cdefault.class);
        m4890if.f8506do = LIBRARY_NAME;
        m4890if.m4891do(C0513Td.m2276for(Context.class));
        m4890if.m4891do(C0513Td.m2275do(A0.class));
        m4890if.f8508do = new Cpackage(0);
        return Arrays.asList(m4890if.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "21.1.1"));
    }
}
