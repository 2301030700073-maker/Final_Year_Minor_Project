package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;

/* renamed from: androidx.recyclerview.widget.return, reason: invalid class name */
/* loaded from: classes.dex */
public class Creturn extends Cfinally {

    /* renamed from: do, reason: not valid java name */
    public Cimport f7674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cwhile f7675do;

    /* renamed from: case, reason: not valid java name */
    public static View m4563case(RecyclerView.Cclass cclass, Cnative cnative) {
        int m4395throws = cclass.m4395throws();
        View view = null;
        if (m4395throws == 0) {
            return null;
        }
        int mo4542class = (cnative.mo4542class() / 2) + cnative.mo4541catch();
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i2 = 0; i2 < m4395throws; i2++) {
            View m4394switch = cclass.m4394switch(i2);
            int abs = Math.abs(((cnative.mo4546for(m4394switch) / 2) + cnative.mo4552try(m4394switch)) - mo4542class);
            if (abs < i) {
                view = m4394switch;
                i = abs;
            }
        }
        return view;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m4564try(View view, Cnative cnative) {
        return ((cnative.mo4546for(view) / 2) + cnative.mo4552try(view)) - ((cnative.mo4542class() / 2) + cnative.mo4541catch());
    }

    /* renamed from: else, reason: not valid java name */
    public final Cnative m4565else(RecyclerView.Cclass cclass) {
        Cwhile cwhile = this.f7675do;
        if (cwhile == null || ((Cnative) cwhile).f7657do != cclass) {
            this.f7675do = new Cwhile(cclass);
        }
        return this.f7675do;
    }

    @Override // androidx.recyclerview.widget.Cfinally
    @SuppressLint({"UnknownNullness"})
    /* renamed from: for */
    public View mo4517for(RecyclerView.Cclass cclass) {
        if (cclass.mo4316case()) {
            return m4563case(cclass, m4566goto(cclass));
        }
        if (cclass.mo4323try()) {
            return m4563case(cclass, m4565else(cclass));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final Cnative m4566goto(RecyclerView.Cclass cclass) {
        Cimport cimport = this.f7674do;
        if (cimport == null || ((Cnative) cimport).f7657do != cclass) {
            this.f7674do = new Cimport(cclass);
        }
        return this.f7674do;
    }

    @Override // androidx.recyclerview.widget.Cfinally
    /* renamed from: if */
    public final int[] mo4518if(RecyclerView.Cclass cclass, View view) {
        int[] iArr = new int[2];
        if (cclass.mo4323try()) {
            iArr[0] = m4564try(view, m4565else(cclass));
        } else {
            iArr[0] = 0;
        }
        if (cclass.mo4316case()) {
            iArr[1] = m4564try(view, m4566goto(cclass));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
