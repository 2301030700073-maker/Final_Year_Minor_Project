package org.schabi.newpipe.local.subscription;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import com.livefront.bridge.Bridge;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportInput;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ImportConfirmationDialog extends DialogFragment {
    public static void show(Fragment fragment, SubscriptionImportInput subscriptionImportInput) {
        ImportConfirmationDialog importConfirmationDialog = new ImportConfirmationDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable("input", subscriptionImportInput);
        importConfirmationDialog.setArguments(bundle);
        importConfirmationDialog.show(fragment.getParentFragmentManager(), (String) null);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bridge.restoreInstanceState(this, bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext);
        builder.setMessage(R.string.import_network_expensive_warning);
        builder.P.mCancelable = true;
        return builder.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new SubscriptionFragment$$ExternalSyntheticLambda5(this, requireContext, 1)).create();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }
}
