package b.b.g;

import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public class S0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView.SearchAutoComplete f478a;

    public S0(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f478a = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        SearchView.SearchAutoComplete searchAutoComplete = this.f478a;
        if (searchAutoComplete.f) {
            ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
            searchAutoComplete.f = false;
        }
    }
}
