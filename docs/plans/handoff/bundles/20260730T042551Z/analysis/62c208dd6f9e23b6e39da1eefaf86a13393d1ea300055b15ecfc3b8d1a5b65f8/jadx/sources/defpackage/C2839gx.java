package defpackage;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cthis;
import com.joeykrim.rootcheck.R;

/* renamed from: gx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2839gx {

    /* renamed from: do, reason: not valid java name */
    public final Context f13228do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f13229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f13230do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cthis f13231do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f13232do;

    /* renamed from: gx$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        void mo261do(MenuItem menuItem);
    }

    public C2839gx(Context context, View view) {
        this.f13228do = context;
        this.f13229do = view;
        Ccase ccase = new Ccase(context);
        this.f13230do = ccase;
        ccase.mo3343switch(new C2721ex(this));
        Cthis cthis = new Cthis(R.attr.popupMenuStyle, 0, context, view, ccase, false);
        this.f13231do = cthis;
        cthis.f5543for = 0;
        cthis.f5538do = new C2780fx(this);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6753do(int i) {
        new YF(this.f13228do).inflate(i, this.f13230do);
    }
}
