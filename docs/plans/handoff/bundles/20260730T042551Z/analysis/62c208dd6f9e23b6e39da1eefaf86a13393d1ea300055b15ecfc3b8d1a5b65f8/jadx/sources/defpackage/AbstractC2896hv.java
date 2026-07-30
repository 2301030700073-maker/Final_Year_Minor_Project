package defpackage;

import android.os.Bundle;

/* renamed from: hv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC2896hv {

    /* renamed from: do, reason: not valid java name */
    public C2778fv f13404do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f13405do;

    /* renamed from: do */
    public void mo6611do(Bundle bundle) {
        CharSequence charSequence = this.f13405do;
        if (charSequence != null) {
            bundle.putCharSequence("android.title.big", charSequence);
        }
        String mo6472for = mo6472for();
        if (mo6472for != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", mo6472for);
        }
    }

    /* renamed from: for */
    public abstract String mo6472for();

    /* renamed from: if */
    public abstract void mo6473if(C2953iv c2953iv);

    /* renamed from: new, reason: not valid java name */
    public final void m6843new(C2778fv c2778fv) {
        if (this.f13404do != c2778fv) {
            this.f13404do = c2778fv;
            if (c2778fv != null) {
                c2778fv.m6688try(this);
            }
        }
    }
}
