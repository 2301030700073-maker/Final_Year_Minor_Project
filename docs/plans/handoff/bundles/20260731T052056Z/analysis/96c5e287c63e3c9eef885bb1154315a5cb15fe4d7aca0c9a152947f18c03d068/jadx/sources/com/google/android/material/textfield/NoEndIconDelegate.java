package com.google.android.material.textfield;

import coil3.util.BitmapsKt;
import com.google.android.material.internal.CheckableImageButton;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                BitmapsKt.setIconClickable(checkableImageButton, null);
                break;
        }
    }
}
