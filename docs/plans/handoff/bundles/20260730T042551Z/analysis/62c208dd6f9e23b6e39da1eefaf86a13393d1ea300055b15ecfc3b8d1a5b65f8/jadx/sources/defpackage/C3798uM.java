package defpackage;

import android.content.Context;
import defpackage.AbstractC4103za;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: uM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3798uM implements AbstractC4103za.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final Object f15876do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3739tM f15877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC4103za<?>[] f15878do;

    static {
        AbstractC0614Xq.m2870try("WorkConstraintsTracker");
    }

    public C3798uM(Context context, IG ig, InterfaceC3739tM interfaceC3739tM) {
        Context applicationContext = context.getApplicationContext();
        this.f15877do = interfaceC3739tM;
        this.f15878do = new AbstractC4103za[]{new C3133j5(applicationContext, ig), new C3251l5(applicationContext, ig), new C3614rF(applicationContext, ig), new C3887vu(applicationContext, ig), new C0223Fu(applicationContext, ig), new C4064yu(applicationContext, ig), new C4005xu(applicationContext, ig)};
        this.f15876do = new Object();
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m8384do(String str) {
        synchronized (this.f15876do) {
            for (AbstractC4103za<?> abstractC4103za : this.f15878do) {
                Object obj = abstractC4103za.f16918do;
                if (obj != null && abstractC4103za.mo652for(obj) && abstractC4103za.f16919do.contains(str)) {
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("Work %s constrained by %s", str, abstractC4103za.getClass().getSimpleName());
                    m2869for.mo2872do(new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8385for(Collection collection) {
        synchronized (this.f15876do) {
            for (AbstractC4103za<?> abstractC4103za : this.f15878do) {
                if (abstractC4103za.f16920do != null) {
                    abstractC4103za.f16920do = null;
                    abstractC4103za.m8805try(null, abstractC4103za.f16918do);
                }
            }
            for (AbstractC4103za<?> abstractC4103za2 : this.f15878do) {
                abstractC4103za2.m8804new(collection);
            }
            for (AbstractC4103za<?> abstractC4103za3 : this.f15878do) {
                if (abstractC4103za3.f16920do != this) {
                    abstractC4103za3.f16920do = this;
                    abstractC4103za3.m8805try(this, abstractC4103za3.f16918do);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8386if(ArrayList arrayList) {
        synchronized (this.f15876do) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (m8384do(str)) {
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("Constraints met for %s", str);
                    m2869for.mo2872do(new Throwable[0]);
                    arrayList2.add(str);
                }
            }
            InterfaceC3739tM interfaceC3739tM = this.f15877do;
            if (interfaceC3739tM != null) {
                interfaceC3739tM.mo1456do(arrayList2);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8387new() {
        synchronized (this.f15876do) {
            for (AbstractC4103za<?> abstractC4103za : this.f15878do) {
                ArrayList arrayList = abstractC4103za.f16919do;
                if (!arrayList.isEmpty()) {
                    arrayList.clear();
                    abstractC4103za.f16917do.m274if(abstractC4103za);
                }
            }
        }
    }
}
