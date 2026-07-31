package com.google.android.material.dialog;

import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.google.android.material.shape.MaterialShapeDrawable;
import okio.PriorityQueue;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MaterialAlertDialogBuilder extends PriorityQueue {
    public final MaterialShapeDrawable background;
    public final Rect backgroundInsets;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialAlertDialogBuilder(android.content.Context r14, int r15) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.dialog.MaterialAlertDialogBuilder.<init>(android.content.Context, int):void");
    }

    @Override // okio.PriorityQueue
    public AlertDialog create() {
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

    public final void setMessage(int i) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mMessage = alertParams.mContext.getText(i);
    }

    public final void setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, RemoveFromReadingListsDialog$$ExternalSyntheticLambda1 removeFromReadingListsDialog$$ExternalSyntheticLambda1) {
        super.setMultiChoiceItems(charSequenceArr, zArr, (DialogInterface.OnMultiChoiceClickListener) removeFromReadingListsDialog$$ExternalSyntheticLambda1);
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

    public final void setNegativeButton(String str, DialogInterface.OnClickListener onClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mNegativeButtonText = str;
        alertParams.mNegativeButtonListener = onClickListener;
    }

    public final void setPositiveButton(String str, DialogInterface.OnClickListener onClickListener) {
        super.setPositiveButton((CharSequence) str, onClickListener);
    }

    @Override // okio.PriorityQueue
    public final void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
