package defpackage;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: yz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class DialogFragmentC4069yz extends DialogFragment {

    /* renamed from: yz$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4069yz dialogFragmentC4069yz = DialogFragmentC4069yz.this;
            if (dialogFragmentC4069yz.getActivity() == null || dialogFragmentC4069yz.getDialog() == null) {
                return;
            }
            ((InputMethodManager) dialogFragmentC4069yz.getActivity().getSystemService("input_method")).showSoftInput(dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other), 2);
        }
    }

    /* renamed from: yz$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4069yz dialogFragmentC4069yz = DialogFragmentC4069yz.this;
            try {
            } catch (NullPointerException e) {
                C0766bi.m4854do().m4855for(e);
            }
            if (dialogFragmentC4069yz.getActivity() == null) {
                return;
            }
            if (((RadioButton) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_radio_btn_report_issue_tri)).isChecked()) {
                C3210kN.m7250for("ReportIssueTopic", "RootResultsIncorrect");
                C3210kN.m7250for("RIRRIDetails", MainActivity.f12241this ? "FalsePositive" : "FalseNegative");
            }
            if (((RadioButton) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_radio_btn_report_issue_trbnh)).isChecked()) {
                C3210kN.m7250for("ReportIssueTopic", "RootBasicsNotHelpful");
                if (((CheckBox) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_report_issue_trbnh_wir)).isChecked()) {
                    C3210kN.m7250for("RIRBNHDetails", "WhatIsRoot");
                }
                if (((CheckBox) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_report_issue_trbnh_wr)).isChecked()) {
                    C3210kN.m7250for("RIRBNHDetails", "WhyRoot");
                }
                if (((CheckBox) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_report_issue_trbnh_htr)).isChecked()) {
                    C3210kN.m7250for("RIRBNHDetails", "HowToRoot");
                }
            }
            if (((RadioButton) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_radio_btn_report_issue_to)).isChecked()) {
                C3210kN.m7250for("ReportIssueTopic", "Other");
                C3210kN.m7250for("RIOtherComments", ((EditText) dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other)).getText().toString());
            }
            ((InputMethodManager) dialogFragmentC4069yz.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other).getWindowToken(), 0);
            VJ.m2567final(dialogFragmentC4069yz.getActivity(), "ReportDialog");
            if (dialogFragmentC4069yz.getActivity() != null) {
                VJ.m2574instanceof(dialogFragmentC4069yz.getActivity(), dialogFragmentC4069yz.getResources().getString(R.string.reportIssueSuccess));
            }
        }
    }

    /* renamed from: yz$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4069yz dialogFragmentC4069yz = DialogFragmentC4069yz.this;
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_grp_report_issue_trbnh).setVisibility(8);
            }
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_radio_grp_report_issue_to).setVisibility(8);
            }
            if (dialogFragmentC4069yz.getActivity() == null || dialogFragmentC4069yz.getDialog() == null) {
                return;
            }
            ((InputMethodManager) dialogFragmentC4069yz.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other).getWindowToken(), 0);
        }
    }

    /* renamed from: yz$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4069yz dialogFragmentC4069yz = DialogFragmentC4069yz.this;
            if (dialogFragmentC4069yz.getActivity() == null) {
                return;
            }
            try {
                ((InputMethodManager) dialogFragmentC4069yz.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other).getWindowToken(), 0);
            } catch (NullPointerException e) {
                C0766bi.m4854do().m4855for(e);
            }
            VJ.m2567final(dialogFragmentC4069yz.getActivity(), "ReportDialog");
        }
    }

    /* renamed from: yz$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4069yz dialogFragmentC4069yz = DialogFragmentC4069yz.this;
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_grp_report_issue_trbnh).setVisibility(0);
            }
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_radio_grp_report_issue_to).setVisibility(8);
            }
            if (dialogFragmentC4069yz.getActivity() == null || dialogFragmentC4069yz.getDialog() == null) {
                return;
            }
            ((InputMethodManager) dialogFragmentC4069yz.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other).getWindowToken(), 0);
        }
    }

    /* renamed from: yz$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4069yz dialogFragmentC4069yz = DialogFragmentC4069yz.this;
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_grp_report_issue_trbnh).setVisibility(8);
            }
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_radio_grp_report_issue_to).setVisibility(0);
            }
            if (dialogFragmentC4069yz.getDialog() != null) {
                dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other).requestFocus();
            }
            if (dialogFragmentC4069yz.getActivity() == null || dialogFragmentC4069yz.getDialog() == null) {
                return;
            }
            ((InputMethodManager) dialogFragmentC4069yz.getActivity().getSystemService("input_method")).showSoftInput(dialogFragmentC4069yz.getDialog().findViewById(R.id.dialog_et_report_issue_to_other), 2);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        View inflate = View.inflate(getActivity(), R.layout.report_dialog, null);
        ((TextView) inflate.findViewById(R.id.dialog_md_title)).setText(getString(R.string.reportIssueTitle));
        inflate.findViewById(R.id.dialog_md_alongside_buttons).setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.dialog_md_confirm);
        button.setAllCaps(true);
        button.setTextColor(getResources().getColor(R.color.colorPrimary));
        button.setText(R.string.universalBtnSubmit);
        button.setVisibility(0);
        button.setOnClickListener(new Cdo());
        Button button2 = (Button) inflate.findViewById(R.id.dialog_md_cancel);
        button2.setAllCaps(true);
        button2.setVisibility(0);
        button2.setText(R.string.universalBtnCancel);
        button2.setTextColor(getResources().getColor(R.color.grey400));
        button2.setOnClickListener(new Cif());
        ((RadioButton) inflate.findViewById(R.id.dialog_radio_btn_report_issue_tri)).setOnClickListener(new Cfor());
        ((RadioButton) inflate.findViewById(R.id.dialog_radio_btn_report_issue_trbnh)).setOnClickListener(new Cnew());
        ((RadioButton) inflate.findViewById(R.id.dialog_radio_btn_report_issue_to)).setOnClickListener(new Ctry());
        ((EditText) inflate.findViewById(R.id.dialog_et_report_issue_to_other)).setOnClickListener(new Ccase());
        if (MainActivity.f12238goto) {
            inflate.findViewById(R.id.dialog_radio_btn_report_issue_tri).setVisibility(0);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }
}
