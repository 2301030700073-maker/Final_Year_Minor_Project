package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.default, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdefault {
    /* renamed from: do, reason: not valid java name */
    public static int m4500do(RecyclerView.Cstatic cstatic, Cnative cnative, View view, View view2, RecyclerView.Cclass cclass, boolean z) {
        if (cclass.m4395throws() == 0 || cstatic.m4449if() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.Cclass.m4380implements(view) - RecyclerView.Cclass.m4380implements(view2)) + 1;
        }
        return Math.min(cnative.mo4542class(), cnative.mo4548if(view2) - cnative.mo4552try(view));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m4501for(RecyclerView.Cstatic cstatic, Cnative cnative, View view, View view2, RecyclerView.Cclass cclass, boolean z) {
        if (cclass.m4395throws() == 0 || cstatic.m4449if() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return cstatic.m4449if();
        }
        return (int) (((cnative.mo4548if(view2) - cnative.mo4552try(view)) / (Math.abs(RecyclerView.Cclass.m4380implements(view) - RecyclerView.Cclass.m4380implements(view2)) + 1)) * cstatic.m4449if());
    }

    /* renamed from: if, reason: not valid java name */
    public static int m4502if(RecyclerView.Cstatic cstatic, Cnative cnative, View view, View view2, RecyclerView.Cclass cclass, boolean z, boolean z2) {
        if (cclass.m4395throws() == 0 || cstatic.m4449if() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (cstatic.m4449if() - Math.max(RecyclerView.Cclass.m4380implements(view), RecyclerView.Cclass.m4380implements(view2))) - 1) : Math.max(0, Math.min(RecyclerView.Cclass.m4380implements(view), RecyclerView.Cclass.m4380implements(view2)));
        if (z) {
            return Math.round((max * (Math.abs(cnative.mo4548if(view2) - cnative.mo4552try(view)) / (Math.abs(RecyclerView.Cclass.m4380implements(view) - RecyclerView.Cclass.m4380implements(view2)) + 1))) + (cnative.mo4541catch() - cnative.mo4552try(view)));
        }
        return max;
    }
}
