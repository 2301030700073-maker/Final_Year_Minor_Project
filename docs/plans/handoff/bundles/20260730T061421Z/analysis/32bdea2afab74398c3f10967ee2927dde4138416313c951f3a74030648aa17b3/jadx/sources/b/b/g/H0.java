package b.b.g;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public class H0 implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f453a;

    public H0(SearchView searchView) {
        this.f453a = searchView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        SearchView searchView = this.f453a;
        Editable text = searchView.p.getText();
        searchView.P = text;
        TextUtils.isEmpty(text);
        searchView.u.setVisibility(8);
        searchView.w.setVisibility(8);
        searchView.v();
        searchView.s.setVisibility(8);
        searchView.O = charSequence.toString();
    }
}
