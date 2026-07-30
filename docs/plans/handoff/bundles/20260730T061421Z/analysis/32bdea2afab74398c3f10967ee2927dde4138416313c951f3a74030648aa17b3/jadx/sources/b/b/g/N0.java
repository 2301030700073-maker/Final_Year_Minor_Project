package b.b.g;

import android.app.SearchableInfo;
import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public class N0 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f470a;

    public N0(SearchView searchView) {
        this.f470a = searchView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        SearchableInfo searchableInfo = this.f470a.S;
        return false;
    }
}
