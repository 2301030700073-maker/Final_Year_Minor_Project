package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.material.search.SearchView;

/* loaded from: classes3.dex */
public final class SB implements TextWatcher {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SearchView f3465do;

    public SB(SearchView searchView) {
        this.f3465do = searchView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f3465do.f11287do.setVisibility(charSequence.length() > 0 ? 0 : 8);
    }
}
