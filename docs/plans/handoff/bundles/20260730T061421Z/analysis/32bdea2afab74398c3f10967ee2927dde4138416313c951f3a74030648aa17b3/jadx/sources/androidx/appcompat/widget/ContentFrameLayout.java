package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import b.b.c.C0021u;
import b.b.c.H;
import b.b.c.J;
import b.b.f.m.o;
import b.b.g.InterfaceC0051h0;
import java.util.Objects;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public TypedValue f56a;

    /* renamed from: b, reason: collision with root package name */
    public TypedValue f57b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f58c;

    /* renamed from: d, reason: collision with root package name */
    public TypedValue f59d;
    public TypedValue e;
    public TypedValue f;
    public final Rect g;
    public C0021u h;

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public void a(C0021u c0021u) {
        this.h = c0021u;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0021u c0021u = this.h;
        if (c0021u != null) {
            Objects.requireNonNull(c0021u);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        o oVar;
        super.onDetachedFromWindow();
        C0021u c0021u = this.h;
        if (c0021u != null) {
            J j = c0021u.f320a;
            InterfaceC0051h0 interfaceC0051h0 = j.k;
            if (interfaceC0051h0 != null) {
                interfaceC0051h0.n();
            }
            if (j.p != null) {
                j.e.getDecorView().removeCallbacks(j.q);
                if (j.p.isShowing()) {
                    try {
                        j.p.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                j.p = null;
            }
            j.z();
            H E = j.E(0);
            if (E == null || (oVar = E.h) == null) {
                return;
            }
            oVar.c(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new Rect();
    }
}
