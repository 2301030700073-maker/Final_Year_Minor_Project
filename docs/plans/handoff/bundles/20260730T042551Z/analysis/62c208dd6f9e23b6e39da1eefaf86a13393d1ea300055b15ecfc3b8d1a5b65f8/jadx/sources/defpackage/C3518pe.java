package defpackage;

import android.content.Context;
import android.view.VelocityTracker;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.common.api.Api;

/* renamed from: pe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3518pe {

    /* renamed from: do, reason: not valid java name */
    public float f14945do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f14946do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f14947do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f14948do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f14949do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f14950do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3577qe f14951do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f14952do;

    /* renamed from: for, reason: not valid java name */
    public int f14953for;

    /* renamed from: if, reason: not valid java name */
    public int f14954if;

    /* renamed from: pe$do, reason: invalid class name */
    public interface Cdo {
    }

    /* renamed from: pe$if, reason: invalid class name */
    public interface Cif {
    }

    public C3518pe(Context context, NestedScrollView.Cfor cfor) {
        int i = 0;
        C3400ne c3400ne = new C3400ne(i);
        C3459oe c3459oe = new C3459oe(i);
        this.f14946do = -1;
        this.f14954if = -1;
        this.f14953for = -1;
        this.f14952do = new int[]{Api.BaseClientBuilder.API_PRIORITY_OTHER, 0};
        this.f14947do = context;
        this.f14951do = cfor;
        this.f14950do = c3400ne;
        this.f14949do = c3459oe;
    }
}
