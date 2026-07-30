package defpackage;

import android.graphics.Typeface;

/* loaded from: classes3.dex */
public final class R6 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f3146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Typeface f3147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3148do;

    /* renamed from: R6$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void mo2015do(Typeface typeface);
    }

    public R6(Cdo cdo, Typeface typeface) {
        this.f3147do = typeface;
        this.f3146do = cdo;
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: class */
    public final void mo1840class(int i) {
        if (this.f3148do) {
            return;
        }
        this.f3146do.mo2015do(this.f3147do);
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: const */
    public final void mo1841const(Typeface typeface, boolean z) {
        if (this.f3148do) {
            return;
        }
        this.f3146do.mo2015do(typeface);
    }
}
