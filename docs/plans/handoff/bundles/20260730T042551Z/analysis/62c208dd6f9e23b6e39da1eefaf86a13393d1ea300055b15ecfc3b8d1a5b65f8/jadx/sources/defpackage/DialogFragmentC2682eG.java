package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: eG, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class DialogFragmentC2682eG extends DialogFragment {

    /* renamed from: do, reason: not valid java name */
    public static ArrayList<Integer> f12634do;

    /* renamed from: case, reason: not valid java name */
    public RadioButton f12635case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Button f12636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EditText f12637do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RadioButton f12638do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f12639do;

    /* renamed from: else, reason: not valid java name */
    public RadioButton f12640else;

    /* renamed from: for, reason: not valid java name */
    public RadioButton f12641for;

    /* renamed from: goto, reason: not valid java name */
    public RadioButton f12642goto;

    /* renamed from: if, reason: not valid java name */
    public Button f12643if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public RadioButton f12644if;

    /* renamed from: new, reason: not valid java name */
    public RadioButton f12645new;

    /* renamed from: try, reason: not valid java name */
    public RadioButton f12646try;

    /* renamed from: eG$break, reason: invalid class name */
    public class Cbreak implements View.OnClickListener {
        public Cbreak() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: eG$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: eG$catch, reason: invalid class name */
    public class Ccatch implements View.OnClickListener {
        public Ccatch() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: eG$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            EditText editText = dialogFragmentC2682eG.f12637do;
            dialogFragmentC2682eG.getClass();
            if (editText != null) {
                editText.setVisibility(0);
                editText.requestFocus();
                if (dialogFragmentC2682eG.getActivity() != null) {
                    ((InputMethodManager) dialogFragmentC2682eG.getActivity().getSystemService("input_method")).showSoftInput(editText, 2);
                }
            }
        }
    }

    /* renamed from: eG$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: eG$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            if (dialogFragmentC2682eG.getActivity() == null) {
                return;
            }
            DialogFragmentC2682eG.m6535do(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
            try {
                if (!DialogFragmentC2682eG.m6537if(dialogFragmentC2682eG).isEmpty() && dialogFragmentC2682eG.getActivity() != null) {
                    Activity activity = dialogFragmentC2682eG.getActivity();
                    Activity activity2 = dialogFragmentC2682eG.getActivity();
                    String m6537if = DialogFragmentC2682eG.m6537if(dialogFragmentC2682eG);
                    if (m6537if.equalsIgnoreCase(activity2.getString(R.string.vrSurveyRootMethodOptionOEM))) {
                        m6537if = activity2.getString(R.string.vrSurveyRootMethodOptionOEMAnalytics);
                    } else if (m6537if.equalsIgnoreCase(activity2.getString(R.string.vrSurveyRootMethodOptionOdin))) {
                        m6537if = activity2.getString(R.string.vrSurveyRootMethodOptionOdinAnalytics);
                    }
                    DialogFragmentC2682eG.m6539try(activity, m6537if);
                } else if (dialogFragmentC2682eG.getActivity() != null) {
                    VJ.m2574instanceof(dialogFragmentC2682eG.getActivity(), dialogFragmentC2682eG.getActivity().getString(R.string.vrSurveySelectError));
                }
            } catch (NullPointerException e) {
                C0766bi.m4854do().m4855for(e);
            }
            if (DialogFragmentC2682eG.m6537if(dialogFragmentC2682eG).isEmpty()) {
                return;
            }
            VJ.m2567final(dialogFragmentC2682eG.getActivity(), "SRIMDialog");
        }
    }

    /* renamed from: eG$goto, reason: invalid class name */
    public class Cgoto implements View.OnClickListener {
        public Cgoto() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: eG$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            RadioButton radioButton = dialogFragmentC2682eG.f12642goto;
            if (radioButton != null) {
                radioButton.setChecked(true);
            }
            if (dialogFragmentC2682eG.getActivity() != null) {
                ((InputMethodManager) dialogFragmentC2682eG.getActivity().getSystemService("input_method")).showSoftInput(dialogFragmentC2682eG.f12637do, 2);
            }
        }
    }

    /* renamed from: eG$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            if (dialogFragmentC2682eG.getActivity() == null) {
                return;
            }
            DialogFragmentC2682eG.m6535do(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
            VJ.m2567final(dialogFragmentC2682eG.getActivity(), "SRIMDialog");
        }
    }

    /* renamed from: eG$this, reason: invalid class name */
    public class Cthis implements View.OnClickListener {
        public Cthis() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: eG$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2682eG dialogFragmentC2682eG = DialogFragmentC2682eG.this;
            DialogFragmentC2682eG.m6536for(dialogFragmentC2682eG, dialogFragmentC2682eG.f12637do);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6535do(DialogFragmentC2682eG dialogFragmentC2682eG, EditText editText) {
        InputMethodManager inputMethodManager;
        if (editText == null) {
            dialogFragmentC2682eG.getClass();
        } else {
            if (dialogFragmentC2682eG.getActivity() == null || (inputMethodManager = (InputMethodManager) dialogFragmentC2682eG.getActivity().getSystemService("input_method")) == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m6536for(DialogFragmentC2682eG dialogFragmentC2682eG, EditText editText) {
        dialogFragmentC2682eG.getClass();
        if (editText != null) {
            editText.setVisibility(8);
            if (dialogFragmentC2682eG.getActivity() != null) {
                ((InputMethodManager) dialogFragmentC2682eG.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m6537if(DialogFragmentC2682eG dialogFragmentC2682eG) {
        EditText editText;
        RadioButton radioButton = dialogFragmentC2682eG.f12638do;
        if (radioButton != null && radioButton.isChecked()) {
            return dialogFragmentC2682eG.f12638do.getText().toString();
        }
        RadioButton radioButton2 = dialogFragmentC2682eG.f12644if;
        if (radioButton2 != null && radioButton2.isChecked()) {
            return dialogFragmentC2682eG.f12644if.getText().toString();
        }
        RadioButton radioButton3 = dialogFragmentC2682eG.f12641for;
        if (radioButton3 != null && radioButton3.isChecked()) {
            return dialogFragmentC2682eG.f12641for.getText().toString();
        }
        RadioButton radioButton4 = dialogFragmentC2682eG.f12645new;
        if (radioButton4 != null && radioButton4.isChecked()) {
            return dialogFragmentC2682eG.f12645new.getText().toString();
        }
        RadioButton radioButton5 = dialogFragmentC2682eG.f12646try;
        if (radioButton5 != null && radioButton5.isChecked()) {
            return dialogFragmentC2682eG.f12646try.getText().toString();
        }
        RadioButton radioButton6 = dialogFragmentC2682eG.f12635case;
        if (radioButton6 != null && radioButton6.isChecked()) {
            return dialogFragmentC2682eG.f12635case.getText().toString();
        }
        RadioButton radioButton7 = dialogFragmentC2682eG.f12640else;
        if (radioButton7 != null && radioButton7.isChecked()) {
            return dialogFragmentC2682eG.f12640else.getText().toString();
        }
        RadioButton radioButton8 = dialogFragmentC2682eG.f12642goto;
        return (radioButton8 == null || !radioButton8.isChecked() || (editText = dialogFragmentC2682eG.f12637do) == null || editText.getText().toString().isEmpty()) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : dialogFragmentC2682eG.f12637do.getText().toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6538new(Activity activity, int i) {
        return i == 1 ? activity.getString(R.string.vrSurveyRootMethodOptionOEM) : i == 2 ? activity.getString(R.string.vrSurveyRootMethodOptionKingRoot) : i == 3 ? activity.getString(R.string.vrSurveyRootMethodOptionKingoRoot) : i == 4 ? activity.getString(R.string.vrSurveyRootMethodOptionTowelRoot) : i == 5 ? activity.getString(R.string.vrSurveyRootMethodOptionOdin) : i == 6 ? activity.getString(R.string.vrSurveyRootMethodOptioniRoot) : i == 7 ? activity.getString(R.string.vrSurveyRootMethodOptionFramaroot) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m6539try(Activity activity, String str) {
        MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
        if (mobileAnalyticsManager != null) {
            try {
                DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                EventConstraintDecorator m5101for = defaultEventClient.m5101for("SurveyRootInstallMethod");
                m5101for.mo5062else("RootInstallMethod", str);
                defaultEventClient.m5099case(m5101for.f8929do);
                C4012y0.f16658do.f8800do.m5100else();
            } catch (Exception unused) {
            }
        }
        String str2 = Build.MODEL;
        String str3 = str2 != null ? str2 : "Displayed";
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putString("survey_root_install_method_displayed", str3).apply();
        }
        if (str2 == null) {
            str2 = "Displayed";
        }
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putString("survey_root_install_method_submitted", str2 + "," + str).apply();
        }
        if (activity != null) {
            VJ.m2574instanceof(activity, activity.getString(R.string.vrSurveyThanks));
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        View inflate = View.inflate(getActivity(), R.layout.srim_dialog, null);
        this.f12639do = (TextView) inflate.findViewById(R.id.dialog_md_title);
        this.f12636do = (Button) inflate.findViewById(R.id.dialog_md_confirm);
        this.f12643if = (Button) inflate.findViewById(R.id.dialog_md_cancel);
        this.f12638do = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption1);
        this.f12644if = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption2);
        this.f12641for = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption3);
        this.f12645new = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption4);
        this.f12646try = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption5);
        this.f12635case = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption6);
        this.f12640else = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOption7);
        this.f12642goto = (RadioButton) inflate.findViewById(R.id.vrSurveyRootMethodOptionOther);
        this.f12637do = (EditText) inflate.findViewById(R.id.vrSurveyRootMethodOptionOtherDetails);
        TextView textView = this.f12639do;
        if (textView != null) {
            textView.setText(getString(R.string.vrSurveyRootMethodDescription));
        }
        Button button = this.f12636do;
        if (button != null) {
            button.setAllCaps(true);
            this.f12636do.setOnClickListener(new Cfor());
        }
        Button button2 = this.f12643if;
        if (button2 != null) {
            button2.setAllCaps(true);
            this.f12643if.setOnClickListener(new Cnew());
        }
        RadioButton radioButton = this.f12638do;
        if (radioButton != null) {
            radioButton.setOnClickListener(new Ctry());
        }
        RadioButton radioButton2 = this.f12644if;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new Ccase());
        }
        RadioButton radioButton3 = this.f12641for;
        if (radioButton3 != null) {
            radioButton3.setOnClickListener(new Celse());
        }
        RadioButton radioButton4 = this.f12645new;
        if (radioButton4 != null) {
            radioButton4.setOnClickListener(new Cgoto());
        }
        RadioButton radioButton5 = this.f12646try;
        if (radioButton5 != null) {
            radioButton5.setOnClickListener(new Cthis());
        }
        RadioButton radioButton6 = this.f12635case;
        if (radioButton6 != null) {
            radioButton6.setOnClickListener(new Cbreak());
        }
        RadioButton radioButton7 = this.f12640else;
        if (radioButton7 != null) {
            radioButton7.setOnClickListener(new Ccatch());
        }
        RadioButton radioButton8 = this.f12642goto;
        if (radioButton8 != null) {
            radioButton8.setOnClickListener(new Cdo());
        }
        EditText editText = this.f12637do;
        if (editText != null) {
            editText.setOnClickListener(new Cif());
        }
        Activity activity = getActivity();
        if (activity != null && this.f12638do != null && this.f12644if != null && this.f12641for != null && this.f12645new != null && this.f12646try != null && this.f12635case != null && this.f12640else != null) {
            if (f12634do == null) {
                ArrayList<Integer> arrayList = new ArrayList<>(Arrays.asList(1, 2, 3, 4, 5, 6, 7));
                f12634do = arrayList;
                Collections.shuffle(arrayList);
            }
            this.f12638do.setText(m6538new(activity, f12634do.get(0).intValue()));
            this.f12644if.setText(m6538new(activity, f12634do.get(1).intValue()));
            this.f12641for.setText(m6538new(activity, f12634do.get(2).intValue()));
            this.f12645new.setText(m6538new(activity, f12634do.get(3).intValue()));
            this.f12646try.setText(m6538new(activity, f12634do.get(4).intValue()));
            this.f12635case.setText(m6538new(activity, f12634do.get(5).intValue()));
            this.f12640else.setText(m6538new(activity, f12634do.get(6).intValue()));
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onDestroyView() {
        this.f12639do = null;
        this.f12636do = null;
        this.f12643if = null;
        this.f12638do = null;
        this.f12644if = null;
        this.f12641for = null;
        this.f12645new = null;
        this.f12646try = null;
        this.f12635case = null;
        this.f12640else = null;
        this.f12642goto = null;
        this.f12637do = null;
        super.onDestroyView();
    }
}
