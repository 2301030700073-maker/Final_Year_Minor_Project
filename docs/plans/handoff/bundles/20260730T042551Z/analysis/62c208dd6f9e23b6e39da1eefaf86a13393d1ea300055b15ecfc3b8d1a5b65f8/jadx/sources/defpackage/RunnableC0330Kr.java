package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.Cfor;

/* renamed from: Kr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC0330Kr implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cfor f1889do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1890for;

    public RunnableC0330Kr(Cfor cfor, int i) {
        this.f1889do = cfor;
        this.f1890for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView.Cclass cclass;
        RecyclerView recyclerView = this.f1889do.f10999if;
        if (recyclerView.f7298case || (cclass = recyclerView.f7312do) == null) {
            return;
        }
        cclass.S(recyclerView, this.f1890for);
    }
}
