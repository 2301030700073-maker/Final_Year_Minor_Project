package com.nononsenseapps.filepicker;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.preference.Preference;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NewItemFragment extends DialogFragment {
    public AbstractFilePickerFragment listener = null;

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mView = null;
        alertParams.mViewLayoutResId = R.layout.nnf_dialog_folder_name;
        builder.setTitle(R.string.nnf_new_folder);
        builder.setNegativeButton(R.string.nnf_new_folder_cancel, null).setPositiveButton(R.string.nnf_new_folder_ok, null);
        AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.nononsenseapps.filepicker.NewItemFragment.1
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                final AlertDialog alertDialog = (AlertDialog) dialogInterface;
                final EditText editText = (EditText) alertDialog.findViewById(R.id.edit_text);
                if (editText == null) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Could not find an edit text in the dialog");
                    return;
                }
                alertDialog.getButton(-2).setOnClickListener(new Preference.AnonymousClass1(alertDialog, 7));
                final Button button = alertDialog.getButton(-1);
                button.setEnabled(false);
                button.setOnClickListener(new View.OnClickListener() { // from class: com.nononsenseapps.filepicker.NewItemFragment.1.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        String obj = editText.getText().toString();
                        NewItemFragment newItemFragment = NewItemFragment.this;
                        if (newItemFragment.validateName(obj)) {
                            AbstractFilePickerFragment abstractFilePickerFragment = newItemFragment.listener;
                            if (abstractFilePickerFragment != null) {
                                abstractFilePickerFragment.onNewFolder(obj);
                            }
                            alertDialog.dismiss();
                        }
                    }
                });
                editText.addTextChangedListener(new TextWatcher() { // from class: com.nononsenseapps.filepicker.NewItemFragment.1.3
                    @Override // android.text.TextWatcher
                    public final void afterTextChanged(Editable editable) {
                        button.setEnabled(NewItemFragment.this.validateName(editable.toString()));
                    }

                    @Override // android.text.TextWatcher
                    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }
                });
            }
        });
        return create;
    }

    public abstract boolean validateName(String str);
}
