package b.l;

import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;
import b.e.i.C0088b;

/* loaded from: classes.dex */
public class T extends C0088b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ U f1042a;

    public T(U u) {
        this.f1042a = u;
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityNodeInfo(View view, b.e.i.E.d dVar) {
        Preference d2;
        this.f1042a.f1044d.onInitializeAccessibilityNodeInfo(view, dVar);
        int childAdapterPosition = this.f1042a.f1043c.getChildAdapterPosition(view);
        b.m.b.Q adapter = this.f1042a.f1043c.getAdapter();
        if ((adapter instanceof M) && (d2 = ((M) adapter).d(childAdapterPosition)) != null) {
            d2.onInitializeAccessibilityNodeInfo();
        }
    }

    @Override // b.e.i.C0088b
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.f1042a.f1044d.performAccessibilityAction(view, i, bundle);
    }
}
