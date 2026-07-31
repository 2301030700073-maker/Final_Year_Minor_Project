package com.fsck.k9.fragment;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.fragment.app.DialogFragment;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.controller.MessagingController;
import java.util.EnumSet;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AttachmentDownloadDialogFragment extends DialogFragment {
    public MessagingController messagingController;
    public AnonymousClass1 messagingListener;

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AppCompatActivity activity = getActivity();
        if (activity == null || !(activity instanceof MessageCompose)) {
            return;
        }
        ((MessageCompose) activity).attachmentPresenter.actionToPerformAfterWaiting = 1;
    }

    /* JADX WARN: Type inference failed for: r13v11, types: [com.fsck.k9.fragment.AttachmentDownloadDialogFragment$1] */
    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        final int i;
        String str;
        Bundle bundle2 = this.mArguments;
        long j = bundle2.getLong("size");
        String string = bundle2.getString("message");
        int[] values = ImageAnalysis$$ExternalSyntheticLambda3.values(6);
        int length = values.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i = 1;
                break;
            }
            i = values[i2];
            if (j < ViewSizeResolver.CC.getSize(i) * 10240) {
                break;
            }
            i2++;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getActivity());
        progressDialog.setMessage(string);
        progressDialog.setMax((int) (j / ViewSizeResolver.CC.getSize(i)));
        progressDialog.setProgressStyle(1);
        progressDialog.setProgress(0);
        switch (i) {
            case 1:
                str = "B";
                break;
            case 2:
                str = "KiB";
                break;
            case 3:
                str = "MiB";
                break;
            case 4:
                str = "GiB";
                break;
            case 5:
                str = "TiB";
                break;
            case 6:
                str = "PiB";
                break;
            default:
                throw null;
        }
        progressDialog.setProgressNumberFormat("%1d/%2d ".concat(str));
        progressDialog.show();
        this.messagingListener = new SimpleMessagingListener() { // from class: com.fsck.k9.fragment.AttachmentDownloadDialogFragment.1
            @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
            public final void updateProgress(int i3) {
                progressDialog.setProgress((int) (i3 / ViewSizeResolver.CC.getSize(i)));
            }
        };
        EnumSet enumSet = MessagingController.SYNC_FLAGS;
        MessagingController messagingController = (MessagingController) CloseableKt.get$default(MessagingController.class);
        this.messagingController = messagingController;
        messagingController.addListener(this.messagingListener);
        return progressDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.messagingController.removeListener(this.messagingListener);
        super.onDestroyView();
    }
}
