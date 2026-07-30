package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.Ccase;
import defpackage.C1;
import defpackage.C3385nL;
import defpackage.InterfaceC2643dd;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: case, reason: not valid java name */
    public TypedValue f5755case;

    /* renamed from: do, reason: not valid java name */
    public final Rect f5756do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TypedValue f5757do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f5758do;

    /* renamed from: for, reason: not valid java name */
    public TypedValue f5759for;

    /* renamed from: if, reason: not valid java name */
    public TypedValue f5760if;

    /* renamed from: new, reason: not valid java name */
    public TypedValue f5761new;

    /* renamed from: try, reason: not valid java name */
    public TypedValue f5762try;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$do, reason: invalid class name */
    public interface Cdo {
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Cdo cdo = this.f5758do;
        if (cdo != null) {
            cdo.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cdo cdo = this.f5758do;
        if (cdo != null) {
            AppCompatDelegateImpl appCompatDelegateImpl = ((C1) cdo).f311do;
            InterfaceC2643dd interfaceC2643dd = appCompatDelegateImpl.f5241do;
            if (interfaceC2643dd != null) {
                interfaceC2643dd.mo3370break();
            }
            if (appCompatDelegateImpl.f5228do != null) {
                appCompatDelegateImpl.f5227do.getDecorView().removeCallbacks(appCompatDelegateImpl.f5218do);
                if (appCompatDelegateImpl.f5228do.isShowing()) {
                    try {
                        appCompatDelegateImpl.f5228do.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                appCompatDelegateImpl.f5228do = null;
            }
            C3385nL c3385nL = appCompatDelegateImpl.f5243do;
            if (c3385nL != null) {
                c3385nL.m7565if();
            }
            Ccase ccase = appCompatDelegateImpl.a(0).f5268do;
            if (ccase != null) {
                ccase.m3333for(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5756do = new Rect();
    }
}
