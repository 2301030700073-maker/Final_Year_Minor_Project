package app.k9mail.feature.settings.p000import.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.AccountList;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import okhttp3.internal.http2.Http2Connection;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PickAppDialogFragment extends DialogFragment {
    public String selectedPackageName;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(1, this, new GapPending$keyMap$2(3, this)));

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        final AccountList.AccountsAdapter accountsAdapter = new AccountList.AccountsAdapter(requireContext());
        JobKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new Preferences$getAccountFlow$1(this, ((PickAppViewModel) this.viewModel$delegate.getValue()).appInfoFlow, new ImageLoadKt$ImageLoad$1$1$1(7, accountsAdapter), (Continuation) null, 19), 3);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: app.k9mail.feature.settings.import.ui.PickAppDialogFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AppInfo appInfo = (AppInfo) AccountList.AccountsAdapter.this.getItem(i);
                if (appInfo != null) {
                    this.selectedPackageName = appInfo.packageName;
                }
            }
        };
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext());
        materialAlertDialogBuilder.setTitle(R.string.settings_import_pick_app_dialog_title);
        materialAlertDialogBuilder.setAdapter(accountsAdapter, onClickListener);
        materialAlertDialogBuilder.setNegativeButton(R.string.cancel_action, null);
        return materialAlertDialogBuilder.create();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        dialogInterface.getClass();
        Util.setFragmentResult(this, "pickApp", Util.bundleOf(new Pair("packageName", this.selectedPackageName)));
        super.onDismiss(dialogInterface);
    }
}
