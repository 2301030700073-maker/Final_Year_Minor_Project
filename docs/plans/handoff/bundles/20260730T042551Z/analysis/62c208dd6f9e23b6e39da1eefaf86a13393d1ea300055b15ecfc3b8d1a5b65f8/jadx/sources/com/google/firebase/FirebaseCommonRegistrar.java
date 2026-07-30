package com.google.firebase;

import android.content.Context;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.AbstractC0657Zp;
import defpackage.C0437Pp;
import defpackage.C0472Rg;
import defpackage.C0513Td;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C2850h7;
import defpackage.C3222kd;
import defpackage.C3340md;
import defpackage.C3459oe;
import defpackage.C3580qh;
import defpackage.Cpackage;
import defpackage.Dy;
import defpackage.FJ;
import defpackage.G4;
import defpackage.InterfaceC0609Xl;
import defpackage.InterfaceC0631Yl;
import defpackage.InterfaceC0653Zl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    /* renamed from: do, reason: not valid java name */
    public static String m6070do(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List<C0793c9<?>> getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        C0793c9.Cdo m4890if = C0793c9.m4890if(FJ.class);
        int i = 2;
        m4890if.m4891do(new C0513Td(2, 0, AbstractC0657Zp.class));
        m4890if.f8508do = new C3459oe(i);
        arrayList.add(m4890if.m4893if());
        Dy dy = new Dy(G4.class, Executor.class);
        C0793c9.Cdo cdo = new C0793c9.Cdo(C3340md.class, new Class[]{InterfaceC0631Yl.class, InterfaceC0653Zl.class});
        cdo.m4891do(C0513Td.m2276for(Context.class));
        cdo.m4891do(C0513Td.m2276for(C0706ai.class));
        cdo.m4891do(new C0513Td(2, 0, InterfaceC0609Xl.class));
        cdo.m4891do(new C0513Td(1, 1, FJ.class));
        cdo.m4891do(new C0513Td((Dy<?>) dy, 1, 0));
        cdo.f8508do = new C3222kd(dy, 0);
        arrayList.add(cdo.m4893if());
        arrayList.add(C0774bq.m4863do("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C0774bq.m4863do("fire-core", "21.0.0"));
        arrayList.add(C0774bq.m4863do("device-name", m6070do(Build.PRODUCT)));
        arrayList.add(C0774bq.m4863do("device-model", m6070do(Build.DEVICE)));
        arrayList.add(C0774bq.m4863do("device-brand", m6070do(Build.BRAND)));
        arrayList.add(C0774bq.m4864if("android-target-sdk", new C0472Rg(9)));
        arrayList.add(C0774bq.m4864if("android-min-sdk", new C3580qh(3)));
        arrayList.add(C0774bq.m4864if("android-platform", new Cpackage(5)));
        arrayList.add(C0774bq.m4864if("android-installer", new C2850h7(i)));
        try {
            str = C0437Pp.f2829do.toString();
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(C0774bq.m4863do("kotlin", str));
        }
        return arrayList;
    }
}
