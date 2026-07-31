package com.fsck.k9.ui.helper;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import com.google.android.material.textview.MaterialTextView;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BottomBaselineTextView extends MaterialTextView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BottomBaselineTextView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        context.getClass();
    }

    @Override // android.widget.TextView, android.view.View
    public int getBaseline() {
        Layout layout = getLayout();
        if (layout == null) {
            return super.getBaseline();
        }
        return layout.getLineBaseline(layout.getLineCount() - 1) + (super.getBaseline() - layout.getLineBaseline(0));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomBaselineTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    public /* synthetic */ BottomBaselineTextView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }
}
