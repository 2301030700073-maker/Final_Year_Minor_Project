package com.fsck.k9.ui.settings.account;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.ui.base.ThemeType;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.ArrayList;
import java.util.List;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.util.OpenPgpProviderUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpAppSelectDialog extends BaseActivity {
    public static final Intent MARKET_INTENT = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=org.sufficientlysecure.keychain"));
    public static final Intent MARKET_INTENT_FALLBACK = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=org.sufficientlysecure.keychain"));
    public LegacyAccountDto account;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class OpenKeychainInfoFragment extends DialogFragment {
        @Override // androidx.fragment.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity());
            materialAlertDialogBuilder.setTitle(R.string.dialog_openkeychain_info_title);
            ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = getLayoutInflater().inflate(R.layout.dialog_openkeychain_info, (ViewGroup) null, false);
            materialAlertDialogBuilder.setNegativeButton(R.string.cancel_action, new DialogInterface.OnClickListener() { // from class: com.fsck.k9.ui.settings.account.OpenPgpAppSelectDialog.OpenKeychainInfoFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    OpenKeychainInfoFragment.this.dismissInternal(false, false);
                }
            });
            materialAlertDialogBuilder.setPositiveButton(R.string.dialog_openkeychain_info_install, new DialogInterface.OnClickListener() { // from class: com.fsck.k9.ui.settings.account.OpenPgpAppSelectDialog.OpenKeychainInfoFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    OpenKeychainInfoFragment openKeychainInfoFragment = OpenKeychainInfoFragment.this;
                    openKeychainInfoFragment.dismissInternal(false, false);
                    try {
                        openKeychainInfoFragment.startActivity(OpenPgpAppSelectDialog.MARKET_INTENT);
                    } catch (ActivityNotFoundException unused) {
                        openKeychainInfoFragment.startActivity(OpenPgpAppSelectDialog.MARKET_INTENT_FALLBACK);
                    }
                }
            });
            return materialAlertDialogBuilder.create();
        }

        @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            getActivity().finish();
        }

        @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
        public final void onStop() {
            super.onStop();
            dismissAllowingStateLoss();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class OpenPgpAppSelectFragment extends DialogFragment {
        public final ArrayList openPgpProviderList = new ArrayList();
        public String selectedPackage;

        @Override // androidx.fragment.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            boolean z;
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(getActivity());
            materialAlertDialogBuilder.setTitle(R.string.account_settings_crypto_app_select_title);
            ArrayList arrayList = this.openPgpProviderList;
            arrayList.clear();
            AppCompatActivity activity = getActivity();
            arrayList.add(new OpenPgpProviderEntry(null, activity.getString(R.string.openpgp_list_preference_none), getResources().getDrawable(R.drawable.ic_action_cancel_launchersize_light)));
            List<ResolveInfo> queryIntentServices = getActivity().getPackageManager().queryIntentServices(new Intent("org.openintents.openpgp.IOpenPgpService2"), 0);
            if (queryIntentServices != null) {
                z = false;
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    if (serviceInfo != null) {
                        String str = serviceInfo.packageName;
                        String valueOf = String.valueOf(serviceInfo.loadLabel(activity.getPackageManager()));
                        Drawable loadIcon = resolveInfo.serviceInfo.loadIcon(activity.getPackageManager());
                        if (!OpenPgpProviderUtil.DISALLOWED_PROVIDERS.contains(str)) {
                            arrayList.add(new OpenPgpProviderEntry(str, valueOf, loadIcon));
                            z = true;
                        }
                    }
                }
            } else {
                z = false;
            }
            if (!z) {
                for (ResolveInfo resolveInfo2 : activity.getPackageManager().queryIntentActivities(OpenPgpAppSelectDialog.MARKET_INTENT, 0)) {
                    Intent intent = new Intent(OpenPgpAppSelectDialog.MARKET_INTENT);
                    intent.setPackage(resolveInfo2.activityInfo.packageName);
                    OpenPgpProviderEntry openPgpProviderEntry = new OpenPgpProviderEntry("org.sufficientlysecure.keychain", String.format(activity.getString(R.string.openpgp_install_openkeychain_via), String.valueOf(resolveInfo2.activityInfo.applicationInfo.loadLabel(activity.getPackageManager()))), resolveInfo2.activityInfo.loadIcon(activity.getPackageManager()));
                    openPgpProviderEntry.intent = intent;
                    arrayList.add(openPgpProviderEntry);
                }
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(getActivity(), arrayList) { // from class: com.fsck.k9.ui.settings.account.OpenPgpAppSelectDialog.OpenPgpAppSelectFragment.1
                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public final View getView(int i, View view, ViewGroup viewGroup) {
                    View view2 = super.getView(i, view, viewGroup);
                    ((ImageView) view2.findViewById(android.R.id.icon1)).setImageDrawable(((OpenPgpProviderEntry) OpenPgpAppSelectFragment.this.openPgpProviderList.get(i)).icon);
                    if (i == 0) {
                        ((CheckedTextView) view2.findViewById(android.R.id.text1)).setChecked(true);
                    }
                    return view2;
                }
            };
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.fsck.k9.ui.settings.account.OpenPgpAppSelectDialog.OpenPgpAppSelectFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    OpenPgpAppSelectFragment openPgpAppSelectFragment = OpenPgpAppSelectFragment.this;
                    OpenPgpProviderEntry openPgpProviderEntry2 = (OpenPgpProviderEntry) openPgpAppSelectFragment.openPgpProviderList.get(i);
                    if (openPgpProviderEntry2.intent != null) {
                        openPgpAppSelectFragment.getActivity().startActivity(openPgpProviderEntry2.intent);
                    } else {
                        openPgpAppSelectFragment.selectedPackage = openPgpProviderEntry2.packageName;
                        dialogInterface.dismiss();
                    }
                }
            };
            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
            alertParams.mAdapter = arrayAdapter;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = -1;
            alertParams.mIsSingleChoice = true;
            return materialAlertDialogBuilder.create();
        }

        @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            OpenPgpAppSelectDialog openPgpAppSelectDialog = (OpenPgpAppSelectDialog) getActivity();
            openPgpAppSelectDialog.account.setOpenPgpProvider(this.selectedPackage);
            ((Preferences) CloseableKt.get$default(Preferences.class)).saveAccount(openPgpAppSelectDialog.account);
            openPgpAppSelectDialog.finish();
        }

        @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
        public final void onStop() {
            super.onStop();
            dismissAllowingStateLoss();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenPgpProviderEntry {
        public final Drawable icon;
        public Intent intent;
        public final String packageName;
        public final String simpleName;

        public OpenPgpProviderEntry(String str, String str2, Drawable drawable) {
            this.packageName = str;
            this.simpleName = str2;
            this.icon = drawable;
        }

        public final String toString() {
            return this.simpleName;
        }
    }

    public OpenPgpAppSelectDialog() {
        super(ThemeType.DIALOG);
    }

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.account = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(getIntent().getStringExtra("account"));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        ArrayList openPgpProviderPackages = OpenPgpProviderUtil.getOpenPgpProviderPackages(this);
        if (openPgpProviderPackages.isEmpty()) {
            new OpenKeychainInfoFragment().show(getSupportFragmentManager(), "openkeychain_info");
            return;
        }
        if (openPgpProviderPackages.size() != 1) {
            new OpenPgpAppSelectFragment().show(getSupportFragmentManager(), "openpgp_select");
            return;
        }
        Log.d("Only one OpenPGP provider - just choosing that one!", new Object[0]);
        this.account.setOpenPgpProvider((String) openPgpProviderPackages.get(0));
        ((Preferences) CloseableKt.get$default(Preferences.class)).saveAccount(this.account);
        finish();
    }
}
