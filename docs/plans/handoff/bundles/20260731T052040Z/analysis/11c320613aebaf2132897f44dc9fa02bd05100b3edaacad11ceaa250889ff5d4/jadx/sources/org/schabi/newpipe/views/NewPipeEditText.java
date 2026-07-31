package org.schabi.newpipe.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;
import kotlin.text.CharsKt;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NewPipeEditText extends AppCompatEditText {
    public NewPipeEditText(Context context) {
        super(context, null, R.attr.editTextStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        if (i != 16908341) {
            return super.onTextContextMenuItem(i);
        }
        CharsKt.shareSelectedTextWithShareUtils(this);
        return true;
    }

    public NewPipeEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NewPipeEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
    }
}
