package com.fsck.k9.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProgressDialogFragment extends DialogFragment {
    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        dialogInterface.getClass();
        AppCompatActivity activity = getActivity();
        MessageCompose messageCompose = activity instanceof MessageCompose ? (MessageCompose) activity : null;
        if (messageCompose != null) {
            messageCompose.attachmentPresenter.actionToPerformAfterWaiting = 1;
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Bundle requireArguments = requireArguments();
        String string = requireArguments.getString("title");
        String string2 = requireArguments.getString("message");
        View inflate = getLayoutInflater().inflate(R.layout.progress_dialog, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.progressMessage)).setText(string2);
        PriorityQueue priorityQueue = new PriorityQueue(requireContext());
        AlertController.AlertParams alertParams = (AlertController.AlertParams) priorityQueue.array;
        alertParams.mTitle = string;
        alertParams.mView = inflate;
        return priorityQueue.create();
    }
}
