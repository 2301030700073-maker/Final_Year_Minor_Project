package defpackage;

import android.view.View;
import com.google.android.material.search.SearchBar;

/* loaded from: classes3.dex */
public final class MB implements View.OnAttachStateChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SearchBar f2135do;

    public MB(SearchBar searchBar) {
        this.f2135do = searchBar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        SearchBar searchBar = this.f2135do;
        searchBar.f11267do.addTouchExplorationStateChangeListener(new Csynchronized(searchBar.f11266do));
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        SearchBar searchBar = this.f2135do;
        searchBar.f11267do.removeTouchExplorationStateChangeListener(new Csynchronized(searchBar.f11266do));
    }
}
