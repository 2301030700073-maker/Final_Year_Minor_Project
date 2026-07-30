package b.b.g;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public class K0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f462a;

    public K0(SearchView searchView) {
        this.f462a = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        View.OnFocusChangeListener onFocusChangeListener = this.f462a.I;
    }
}
