package b.b.g;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public class M0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f468a;

    public M0(SearchView searchView) {
        this.f468a = searchView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SearchView.SearchAutoComplete searchAutoComplete;
        SearchView searchView = this.f468a;
        if (view == searchView.t) {
            searchView.y(false);
            searchView.p.requestFocus();
            searchView.p.a(true);
        } else {
            if (view == searchView.v) {
                searchView.s();
                return;
            }
            if (view == searchView.u) {
                searchView.u();
            } else if (view != searchView.w && view == (searchAutoComplete = searchView.p)) {
                searchAutoComplete.refreshAutoCompleteResults();
            }
        }
    }
}
