package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* renamed from: iL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2923iL implements InterfaceC0136Bv {

    /* renamed from: do, reason: not valid java name */
    public final Rect f13464do = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewPager f13465do;

    public C2923iL(ViewPager viewPager) {
        this.f13465do = viewPager;
    }

    @Override // defpackage.InterfaceC0136Bv
    /* renamed from: for */
    public final C3150jM mo137for(View view, C3150jM c3150jM) {
        C3150jM m1853final = QK.m1853final(view, c3150jM);
        if (m1853final.f13676do.mo7078const()) {
            return m1853final;
        }
        int m7059for = m1853final.m7059for();
        Rect rect = this.f13464do;
        rect.left = m7059for;
        rect.top = m1853final.m7063try();
        rect.right = m1853final.m7062new();
        rect.bottom = m1853final.m7061if();
        ViewPager viewPager = this.f13465do;
        int childCount = viewPager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C3150jM m1856if = QK.m1856if(viewPager.getChildAt(i), m1853final);
            rect.left = Math.min(m1856if.m7059for(), rect.left);
            rect.top = Math.min(m1856if.m7063try(), rect.top);
            rect.right = Math.min(m1856if.m7062new(), rect.right);
            rect.bottom = Math.min(m1856if.m7061if(), rect.bottom);
        }
        return m1853final.m7058else(rect.left, rect.top, rect.right, rect.bottom);
    }
}
