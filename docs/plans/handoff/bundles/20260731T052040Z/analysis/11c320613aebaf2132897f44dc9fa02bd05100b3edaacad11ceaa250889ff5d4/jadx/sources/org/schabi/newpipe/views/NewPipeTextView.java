package org.schabi.newpipe.views;

import android.content.Context;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NewPipeTextView extends AppCompatTextView {
    public NewPipeTextView(Context context) {
        super(context);
    }

    @Override // android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        if (i != 16908341) {
            return super.onTextContextMenuItem(i);
        }
        CharsKt.shareSelectedTextWithShareUtils(this);
        return true;
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        MovementMethod movementMethod = getMovementMethod();
        super.setText(charSequence, bufferType);
        setMovementMethod(movementMethod);
    }

    public NewPipeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NewPipeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
