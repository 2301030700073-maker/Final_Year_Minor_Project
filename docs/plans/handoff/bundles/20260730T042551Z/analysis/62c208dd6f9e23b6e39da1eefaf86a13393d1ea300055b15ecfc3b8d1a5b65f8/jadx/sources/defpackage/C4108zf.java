package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.Cdo;
import com.google.android.material.tabs.TabLayout;

/* renamed from: zf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4108zf extends Cdo {
    @Override // com.google.android.material.tabs.Cdo
    /* renamed from: if */
    public final void mo5965if(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float cos;
        float f2;
        RectF m5964do = Cdo.m5964do(tabLayout, view);
        RectF m5964do2 = Cdo.m5964do(tabLayout, view2);
        if (m5964do.left < m5964do2.left) {
            double d = (f * 3.141592653589793d) / 2.0d;
            f2 = (float) (1.0d - Math.cos(d));
            cos = (float) Math.sin(d);
        } else {
            double d2 = (f * 3.141592653589793d) / 2.0d;
            float sin = (float) Math.sin(d2);
            cos = (float) (1.0d - Math.cos(d2));
            f2 = sin;
        }
        drawable.setBounds(C2785g1.m6710if(f2, (int) m5964do.left, (int) m5964do2.left), drawable.getBounds().top, C2785g1.m6710if(cos, (int) m5964do.right, (int) m5964do2.right), drawable.getBounds().bottom);
    }
}
