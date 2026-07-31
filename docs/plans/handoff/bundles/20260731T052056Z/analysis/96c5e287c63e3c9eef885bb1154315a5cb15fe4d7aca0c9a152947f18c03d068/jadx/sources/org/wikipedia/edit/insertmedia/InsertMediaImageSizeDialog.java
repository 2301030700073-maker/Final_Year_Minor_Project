package org.wikipedia.edit.insertmedia;

import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.android.material.textfield.TextInputLayout;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.views.PlainPasteEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "org/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertMediaImageSizeDialog extends ExtendedBottomSheetDialogFragment {
    public SVGAndroidRenderer _binding;

    public InsertMediaImageSizeDialog() {
        super(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.dialog_insert_media_size, viewGroup, false);
        int i = R.id.imageSizeCustomHeightLayout;
        TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.imageSizeCustomHeightLayout);
        if (textInputLayout != null) {
            i = R.id.imageSizeCustomHeightText;
            PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.imageSizeCustomHeightText);
            if (plainPasteEditText != null) {
                i = R.id.imageSizeCustomSwitch;
                MaterialSwitch materialSwitch = (MaterialSwitch) Room.findChildViewById(inflate, R.id.imageSizeCustomSwitch);
                if (materialSwitch != null) {
                    i = R.id.imageSizeCustomWidthLayout;
                    TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate, R.id.imageSizeCustomWidthLayout);
                    if (textInputLayout2 != null) {
                        i = R.id.imageSizeCustomWidthText;
                        PlainPasteEditText plainPasteEditText2 = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.imageSizeCustomWidthText);
                        if (plainPasteEditText2 != null) {
                            this._binding = new SVGAndroidRenderer((LinearLayout) inflate, textInputLayout, plainPasteEditText, materialSwitch, textInputLayout2, plainPasteEditText2);
                            setCustomSizeFields();
                            SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                            sVGAndroidRenderer.getClass();
                            ((MaterialSwitch) sVGAndroidRenderer.stateStack).setChecked(!Intrinsics.areEqual(((InsertMediaActivity) requireActivity()).getViewModel().imageSize, "220x124"));
                            SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                            sVGAndroidRenderer2.getClass();
                            TextInputLayout textInputLayout3 = (TextInputLayout) sVGAndroidRenderer2.document;
                            SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                            sVGAndroidRenderer3.getClass();
                            textInputLayout3.setEnabled(((MaterialSwitch) sVGAndroidRenderer3.stateStack).isChecked());
                            SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
                            sVGAndroidRenderer4.getClass();
                            TextInputLayout textInputLayout4 = (TextInputLayout) sVGAndroidRenderer4.parentStack;
                            SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
                            sVGAndroidRenderer5.getClass();
                            textInputLayout4.setEnabled(((MaterialSwitch) sVGAndroidRenderer5.stateStack).isChecked());
                            SVGAndroidRenderer sVGAndroidRenderer6 = this._binding;
                            sVGAndroidRenderer6.getClass();
                            ((MaterialSwitch) sVGAndroidRenderer6.stateStack).setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(2, this));
                            SVGAndroidRenderer sVGAndroidRenderer7 = this._binding;
                            sVGAndroidRenderer7.getClass();
                            LinearLayout linearLayout = (LinearLayout) sVGAndroidRenderer7.canvas;
                            linearLayout.getClass();
                            return linearLayout;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        ComponentCallbacks activity;
        dialogInterface.getClass();
        super.onDismiss(dialogInterface);
        InsertMediaViewModel viewModel = ((InsertMediaActivity) requireActivity()).getViewModel();
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        Editable text = ((PlainPasteEditText) sVGAndroidRenderer.matrixStack).getText();
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        viewModel.imageSize = ((Object) text) + "x" + ((Object) ((PlainPasteEditText) sVGAndroidRenderer2.state).getText());
        if (InsertMediaAdvancedSettingsFragment.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (InsertMediaAdvancedSettingsFragment.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (InsertMediaAdvancedSettingsFragment.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = InsertMediaAdvancedSettingsFragment.class.isInstance(getActivity()) ? getActivity() : null;
        }
        InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = (InsertMediaAdvancedSettingsFragment) activity;
        if (insertMediaAdvancedSettingsFragment != null) {
            insertMediaAdvancedSettingsFragment.onUpdateImageSize();
        }
    }

    public final void setCustomSizeFields() {
        List split$default = StringsKt.split$default(((InsertMediaActivity) requireActivity()).getViewModel().imageSize, new String[]{"x"});
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((PlainPasteEditText) sVGAndroidRenderer.matrixStack).setText((CharSequence) split$default.get(0));
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((PlainPasteEditText) sVGAndroidRenderer2.state).setText((CharSequence) split$default.get(1));
    }
}
