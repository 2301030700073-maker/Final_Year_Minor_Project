package defpackage;

import android.widget.EditText;
import com.google.android.material.search.SearchBar;
import com.google.android.material.search.SearchView;

/* loaded from: classes3.dex */
public final /* synthetic */ class RB implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SearchView f3154do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3155for;

    public /* synthetic */ RB(SearchView searchView, int i) {
        this.f3155for = i;
        this.f3154do = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f3155for;
        SearchView searchView = this.f3154do;
        switch (i) {
            case 0:
                EditText editText = searchView.f11285do;
                editText.clearFocus();
                SearchBar searchBar = searchView.f11293do;
                if (searchBar != null) {
                    searchBar.requestFocus();
                }
                C3738tL.m8280case(editText);
                break;
            default:
                searchView.m5854break();
                break;
        }
    }
}
