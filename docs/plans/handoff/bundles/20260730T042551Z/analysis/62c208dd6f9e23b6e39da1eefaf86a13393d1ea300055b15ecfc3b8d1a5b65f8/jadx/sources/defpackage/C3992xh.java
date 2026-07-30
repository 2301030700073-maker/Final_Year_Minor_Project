package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.Cdo;
import com.google.android.material.tabs.TabLayout;

/* renamed from: xh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3992xh extends Cdo {
    @Override // com.google.android.material.tabs.Cdo
    /* renamed from: if */
    public final void mo5965if(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        if (f >= 0.5f) {
            view = view2;
        }
        RectF m5964do = Cdo.m5964do(tabLayout, view);
        float m6709do = f < 0.5f ? C2785g1.m6709do(1.0f, 0.0f, 0.0f, 0.5f, f) : C2785g1.m6709do(0.0f, 1.0f, 0.5f, 1.0f, f);
        drawable.setBounds((int) m5964do.left, drawable.getBounds().top, (int) m5964do.right, drawable.getBounds().bottom);
        drawable.setAlpha((int) (m6709do * 255.0f));
    }
}
