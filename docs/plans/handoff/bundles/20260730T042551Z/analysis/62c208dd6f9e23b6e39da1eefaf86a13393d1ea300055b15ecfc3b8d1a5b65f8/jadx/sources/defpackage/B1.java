package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.widget.ActionBarContextView;
import com.facebook.internal.Utility;
import com.joeykrim.rootcheck.R;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class B1 implements InterfaceC0136Bv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatDelegateImpl f188do;

    public B1(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f188do = appCompatDelegateImpl;
    }

    @Override // defpackage.InterfaceC0136Bv
    /* renamed from: for, reason: not valid java name */
    public final C3150jM mo137for(View view, C3150jM c3150jM) {
        boolean z;
        View view2;
        C3150jM c3150jM2;
        boolean z2;
        int m7063try = c3150jM.m7063try();
        AppCompatDelegateImpl appCompatDelegateImpl = this.f188do;
        appCompatDelegateImpl.getClass();
        int m7063try2 = c3150jM.m7063try();
        ActionBarContextView actionBarContextView = appCompatDelegateImpl.f5240do;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) appCompatDelegateImpl.f5240do.getLayoutParams();
            if (appCompatDelegateImpl.f5240do.isShown()) {
                if (appCompatDelegateImpl.f5224do == null) {
                    appCompatDelegateImpl.f5224do = new Rect();
                    appCompatDelegateImpl.f5252if = new Rect();
                }
                Rect rect = appCompatDelegateImpl.f5224do;
                Rect rect2 = appCompatDelegateImpl.f5252if;
                rect.set(c3150jM.m7059for(), c3150jM.m7063try(), c3150jM.m7062new(), c3150jM.m7061if());
                ViewGroup viewGroup = appCompatDelegateImpl.f5226do;
                Method method = C3915wL.f16320do;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception unused) {
                    }
                }
                int i = rect.top;
                int i2 = rect.left;
                int i3 = rect.right;
                C3150jM m1864this = QK.m1864this(appCompatDelegateImpl.f5226do);
                int m7059for = m1864this == null ? 0 : m1864this.m7059for();
                int m7062new = m1864this == null ? 0 : m1864this.m7062new();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                Context context = appCompatDelegateImpl.f5222do;
                if (i <= 0 || appCompatDelegateImpl.f5225do != null) {
                    View view3 = appCompatDelegateImpl.f5225do;
                    if (view3 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                        int i4 = marginLayoutParams2.height;
                        int i5 = marginLayoutParams.topMargin;
                        if (i4 != i5 || marginLayoutParams2.leftMargin != m7059for || marginLayoutParams2.rightMargin != m7062new) {
                            marginLayoutParams2.height = i5;
                            marginLayoutParams2.leftMargin = m7059for;
                            marginLayoutParams2.rightMargin = m7062new;
                            appCompatDelegateImpl.f5225do.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view4 = new View(context);
                    appCompatDelegateImpl.f5225do = view4;
                    view4.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = m7059for;
                    layoutParams.rightMargin = m7062new;
                    appCompatDelegateImpl.f5226do.addView(appCompatDelegateImpl.f5225do, -1, layoutParams);
                }
                View view5 = appCompatDelegateImpl.f5225do;
                z = view5 != null;
                if (z && view5.getVisibility() != 0) {
                    View view6 = appCompatDelegateImpl.f5225do;
                    view6.setBackgroundColor((view6.getWindowSystemUiVisibility() & Utility.DEFAULT_STREAM_BUFFER_SIZE) != 0 ? C0466Ra.getColor(context, R.color.abc_decor_view_status_guard_light) : C0466Ra.getColor(context, R.color.abc_decor_view_status_guard));
                }
                if (!appCompatDelegateImpl.f5251goto && z) {
                    m7063try2 = 0;
                }
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                } else {
                    r8 = false;
                }
                z2 = r8;
                z = false;
            }
            if (z2) {
                appCompatDelegateImpl.f5240do.setLayoutParams(marginLayoutParams);
            }
        }
        View view7 = appCompatDelegateImpl.f5225do;
        if (view7 != null) {
            view7.setVisibility(z ? 0 : 8);
        }
        if (m7063try != m7063try2) {
            c3150jM2 = c3150jM.m7058else(c3150jM.m7059for(), m7063try2, c3150jM.m7062new(), c3150jM.m7061if());
            view2 = view;
        } else {
            view2 = view;
            c3150jM2 = c3150jM;
        }
        return QK.m1853final(view2, c3150jM2);
    }
}
