package com.google.android.material.textfield;

import com.google.android.material.internal.CheckableImageButton;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NoEndIconDelegate extends EndIconDelegate {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NoEndIconDelegate(EndCompoundLayout endCompoundLayout, int i) {
        super(endCompoundLayout);
        this.$r8$classId = i;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void setUp() {
        switch (this.$r8$classId) {
            case 1:
                EndCompoundLayout endCompoundLayout = this.endLayout;
                endCompoundLayout.endIconOnLongClickListener = null;
                CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
                checkableImageButton.setOnLongClickListener(null);
                CharsKt.setIconClickable(checkableImageButton, null);
                break;
        }
    }
}
