package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class VG implements TextWatcher {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ EditText f4072do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TextInputLayout f4073do;

    /* renamed from: for, reason: not valid java name */
    public int f4074for;

    public VG(TextInputLayout textInputLayout, EditText editText) {
        this.f4073do = textInputLayout;
        this.f4072do = editText;
        this.f4074for = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f4073do;
        textInputLayout.m5990private(!textInputLayout.f11626class, false);
        if (textInputLayout.f11650do) {
            textInputLayout.m5993static(editable);
        }
        if (textInputLayout.f11661for) {
            textInputLayout.m5971abstract(editable);
        }
        EditText editText = this.f4072do;
        int lineCount = editText.getLineCount();
        int i = this.f4074for;
        if (lineCount != i) {
            if (lineCount < i) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                int minimumHeight = editText.getMinimumHeight();
                int i2 = textInputLayout.f11680private;
                if (minimumHeight != i2) {
                    editText.setMinimumHeight(i2);
                }
            }
            this.f4074for = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
