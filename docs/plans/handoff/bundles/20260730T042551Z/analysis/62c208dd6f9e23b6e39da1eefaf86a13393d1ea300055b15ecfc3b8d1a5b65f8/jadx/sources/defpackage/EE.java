package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class EE extends LinearLayoutManager {
    public EE(int i) {
        super(i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    public final void S(RecyclerView recyclerView, int i) {
        DE de = new DE(recyclerView.getContext());
        ((RecyclerView.Creturn) de).f7426do = i;
        T(de);
    }
}
