package com.google.android.material.textfield;

import androidx.datastore.core.Api26Impl;
import com.google.android.material.internal.CheckableImageButton;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                Api26Impl.setIconClickable(checkableImageButton, null);
                break;
        }
    }
}
