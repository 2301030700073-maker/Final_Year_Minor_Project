package b.i.b;

import android.view.View;
import android.widget.AdapterView;
import androidx.fragment.app.ListFragment;

/* loaded from: classes.dex */
public class D0 implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListFragment f840a;

    public D0(ListFragment listFragment) {
        this.f840a = listFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.f840a.b();
    }
}
