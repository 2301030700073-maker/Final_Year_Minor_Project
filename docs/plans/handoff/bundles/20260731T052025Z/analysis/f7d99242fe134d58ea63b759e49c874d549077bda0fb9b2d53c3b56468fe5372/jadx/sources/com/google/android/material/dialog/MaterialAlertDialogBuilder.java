package com.google.android.material.dialog;

import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.view.View;
import android.view.Window;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.fsck.k9.fragment.ConfirmationDialogFragment;
import com.google.android.material.shape.MaterialShapeDrawable;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MaterialAlertDialogBuilder extends PriorityQueue {
    public final MaterialShapeDrawable background;
    public final Rect backgroundInsets;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialAlertDialogBuilder(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.dialog.MaterialAlertDialogBuilder.<init>(android.content.Context):void");
    }

    @Override // okio.PriorityQueue
    public final AlertDialog create() {
        AlertDialog create = super.create();
        Window window = create.getWindow();
        View decorView = window.getDecorView();
        MaterialShapeDrawable materialShapeDrawable = this.background;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(decorView.getElevation());
        }
        Rect rect = this.backgroundInsets;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) materialShapeDrawable, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new InsetDialogOnTouchListener(create, rect));
        return create;
    }

    public final void setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mAdapter = listAdapter;
        alertParams.mOnClickListener = onClickListener;
    }

    public final void setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mNegativeButtonText = alertParams.mContext.getText(i);
        alertParams.mNegativeButtonListener = onClickListener;
    }

    public final void setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mPositiveButtonText = alertParams.mContext.getText(i);
        alertParams.mPositiveButtonListener = onClickListener;
    }

    public final void setTitle(int i) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mTitle = alertParams.mContext.getText(i);
    }

    public final void setPositiveButton(String str, ConfirmationDialogFragment confirmationDialogFragment) {
        super.setPositiveButton((CharSequence) str, (DialogInterface.OnClickListener) confirmationDialogFragment);
    }

    @Override // okio.PriorityQueue
    public final void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
