package com.fsck.k9.activity;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import androidx.constraintlayout.widget.Group;
import com.fsck.k9.ui.settings.account.VibrationDialogFragment;
import com.google.android.material.chip.Chip;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.Identity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class EditIdentity$$ExternalSyntheticLambda0 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ EditIdentity$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                EditIdentity editIdentity = (EditIdentity) obj;
                int i2 = EditIdentity.$r8$clinit;
                compoundButton.getClass();
                View view = editIdentity.signatureLayout;
                if (!z) {
                    if (view != null) {
                        view.setVisibility(8);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("signatureLayout");
                        throw null;
                    }
                }
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("signatureLayout");
                    throw null;
                }
                view.setVisibility(0);
                EditText editText = editIdentity.signature;
                if (editText == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("signature");
                    throw null;
                }
                Identity identity = editIdentity.identity;
                if (identity != null) {
                    editText.setText(identity.signature);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("identity");
                    throw null;
                }
            case 1:
                Group group = (Group) obj;
                compoundButton.getClass();
                group.setVisibility(z ? 8 : 0);
                return;
            case 2:
                VibrationDialogFragment.VibrationPatternAdapter vibrationPatternAdapter = (VibrationDialogFragment.VibrationPatternAdapter) obj;
                compoundButton.getClass();
                vibrationPatternAdapter.isVibrationEnabled = z;
                vibrationPatternAdapter.notifyDataSetChanged();
                return;
            default:
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = ((Chip) obj).onCheckedChangeListener;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                    return;
                }
                return;
        }
    }
}
