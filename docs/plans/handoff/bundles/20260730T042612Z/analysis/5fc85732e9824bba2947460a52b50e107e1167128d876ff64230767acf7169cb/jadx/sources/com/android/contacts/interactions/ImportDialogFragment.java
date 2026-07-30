package com.android.contacts.interactions;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import com.android.contacts.R;
import com.android.contacts.activities.SimImportActivity;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.compat.PhoneNumberUtilsCompat;
import com.android.contacts.database.SimContactDao;
import com.android.contacts.editor.SelectAccountDialogFragment;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.SimCard;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountSelectionUtil;
import com.google.common.util.concurrent.Futures;
import java.util.List;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class ImportDialogFragment extends DialogFragment {
    private static BidiFormatter sBidiFormatter = BidiFormatter.getInstance();
    private Future<List<AccountInfo>> mAccountsFuture;
    private SimContactDao mSimDao;
    private boolean mSimOnly = false;

    public static void show(FragmentManager fragmentManager) {
        new ImportDialogFragment().show(fragmentManager, "ImportDialogFragment");
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = false;
        setStyle(0, R.style.ContactsAlertDialogTheme);
        Bundle arguments = getArguments();
        if (arguments != null && arguments.getBoolean("extraSimOnly", false)) {
            z = true;
        }
        this.mSimOnly = z;
        this.mSimDao = SimContactDao.create(getContext());
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.mAccountsFuture = AccountTypeManager.getInstance(getActivity()).filterAccountsAsync(AccountTypeManager.writableFilter());
    }

    @Override // android.app.Fragment
    public Context getContext() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        final ArrayAdapter<AdapterEntry> arrayAdapter = new ArrayAdapter<AdapterEntry>(getActivity(), R.layout.select_dialog_item) { // from class: com.android.contacts.interactions.ImportDialogFragment.1
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = layoutInflater.inflate(R.layout.select_dialog_item, viewGroup, false);
                }
                TextView textView = (TextView) view.findViewById(R.id.primary_text);
                TextView textView2 = (TextView) view.findViewById(R.id.secondary_text);
                AdapterEntry item = getItem(i);
                textView2.setVisibility(8);
                if (item.mChoiceResourceId == R.string.import_from_sim) {
                    CharSequence simSecondaryText = getSimSecondaryText(item.mSim);
                    if (TextUtils.isEmpty(simSecondaryText)) {
                        textView2.setVisibility(8);
                    } else {
                        textView2.setText(simSecondaryText);
                        textView2.setVisibility(0);
                    }
                }
                textView.setText(item.mLabel);
                return view;
            }

            CharSequence getSimSecondaryText(SimCard simCard) {
                int simContactCount = ImportDialogFragment.this.getSimContactCount(simCard);
                CharSequence formattedPhone = simCard.getFormattedPhone();
                if (formattedPhone == null) {
                    formattedPhone = simCard.getPhone();
                }
                if (formattedPhone != null) {
                    formattedPhone = ImportDialogFragment.sBidiFormatter.unicodeWrap(PhoneNumberUtilsCompat.createTtsSpannable(formattedPhone), TextDirectionHeuristicsCompat.LTR);
                }
                if (simContactCount != -1 && formattedPhone != null) {
                    return TextUtils.expandTemplate(ImportDialogFragment.this.getResources().getQuantityString(R.plurals.import_from_sim_secondary_template, simContactCount), String.valueOf(simContactCount), formattedPhone);
                }
                if (formattedPhone != null) {
                    return formattedPhone;
                }
                if (simContactCount != -1) {
                    return ImportDialogFragment.this.getResources().getQuantityString(R.plurals.import_from_sim_secondary_contact_count_fmt, simContactCount, Integer.valueOf(simContactCount));
                }
                return null;
            }
        };
        addItems(arrayAdapter);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.ImportDialogFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                int i2 = ((AdapterEntry) arrayAdapter.getItem(i)).mChoiceResourceId;
                if (i2 == R.string.import_from_sim) {
                    ImportDialogFragment.this.handleSimImportRequest(((AdapterEntry) arrayAdapter.getItem(i)).mSim);
                } else if (i2 == R.string.import_from_vcf_file) {
                    ImportDialogFragment.this.handleImportRequest(i2, -1);
                } else {
                    Log.e("ImportDialogFragment", "Unexpected resource: " + ImportDialogFragment.this.getActivity().getResources().getResourceEntryName(i2));
                }
                dialogInterface.dismiss();
            }
        };
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(getActivity(), getTheme()).setTitle(R.string.dialog_import).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
        if (arrayAdapter.isEmpty()) {
            negativeButton.setMessage(R.string.nothing_to_import_message);
        } else {
            negativeButton.setSingleChoiceItems(arrayAdapter, -1, onClickListener);
        }
        return negativeButton.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSimContactCount(SimCard simCard) {
        if (simCard.getContacts() != null) {
            return simCard.getContacts().size();
        }
        Bundle arguments = getArguments();
        if (arguments == null) {
            return -1;
        }
        return arguments.getInt("simContactCount_" + simCard.getSimId(), -1);
    }

    private void addItems(ArrayAdapter<AdapterEntry> arrayAdapter) {
        if (getActivity().getResources().getBoolean(R.bool.config_allow_import_from_vcf_file) && !this.mSimOnly) {
            arrayAdapter.add(new AdapterEntry(getString(R.string.import_from_vcf_file), R.string.import_from_vcf_file));
        }
        List<SimCard> simCards = this.mSimDao.getSimCards();
        if (simCards.size() == 1) {
            arrayAdapter.add(new AdapterEntry(getString(R.string.import_from_sim), R.string.import_from_sim, simCards.get(0)));
            return;
        }
        for (int i = 0; i < simCards.size(); i++) {
            SimCard simCard = simCards.get(i);
            arrayAdapter.add(new AdapterEntry(getSimDescription(simCard, i), R.string.import_from_sim, simCard));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSimImportRequest(SimCard simCard) {
        startActivity(new Intent(getActivity(), (Class<?>) SimImportActivity.class).putExtra("extraSubscriptionId", simCard.getSubscriptionId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleImportRequest(int i, int i2) {
        List<AccountWithDataSet> extractAccounts = AccountInfo.extractAccounts((List) Futures.getUnchecked(this.mAccountsFuture));
        int size = extractAccounts.size();
        if (size > 1) {
            Bundle bundle = new Bundle();
            bundle.putInt("resourceId", i);
            bundle.putInt("subscriptionId", i2);
            SelectAccountDialogFragment.show(getFragmentManager(), R.string.dialog_new_contact_account, AccountTypeManager.AccountFilter.CONTACTS_WRITABLE, bundle);
            return;
        }
        Activity activity = getActivity();
        AccountWithDataSet accountWithDataSet = size == 1 ? extractAccounts.get(0) : null;
        if (!CompatUtils.isMSIMCompatible()) {
            i2 = -1;
        }
        AccountSelectionUtil.doImport(activity, i, accountWithDataSet, i2);
    }

    private CharSequence getSimDescription(SimCard simCard, int i) {
        CharSequence displayName = simCard.getDisplayName();
        return displayName != null ? getString(R.string.import_from_sim_summary_fmt, displayName) : getString(R.string.import_from_sim_summary_fmt, String.valueOf(i));
    }

    private static class AdapterEntry {
        public final int mChoiceResourceId;
        public final CharSequence mLabel;
        public final SimCard mSim;

        public AdapterEntry(CharSequence charSequence, int i, SimCard simCard) {
            this.mLabel = charSequence;
            this.mChoiceResourceId = i;
            this.mSim = simCard;
        }

        public AdapterEntry(String str, int i) {
            this(str, i, null);
        }
    }
}
