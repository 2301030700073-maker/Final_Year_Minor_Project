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

/* renamed from: fG, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class DialogFragmentC2741fG extends DialogFragment {

    /* renamed from: do, reason: not valid java name */
    public static ArrayList<Integer> f12868do;

    /* renamed from: case, reason: not valid java name */
    public RadioButton f12869case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Button f12870do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EditText f12871do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RadioButton f12872do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f12873do;

    /* renamed from: else, reason: not valid java name */
    public RadioButton f12874else;

    /* renamed from: for, reason: not valid java name */
    public RadioButton f12875for;

    /* renamed from: goto, reason: not valid java name */
    public RadioButton f12876goto;

    /* renamed from: if, reason: not valid java name */
    public Button f12877if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public RadioButton f12878if;

    /* renamed from: new, reason: not valid java name */
    public RadioButton f12879new;

    /* renamed from: try, reason: not valid java name */
    public RadioButton f12880try;

    /* renamed from: fG$break, reason: invalid class name */
    public class Cbreak implements View.OnClickListener {
        public Cbreak() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: fG$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: fG$catch, reason: invalid class name */
    public class Ccatch implements View.OnClickListener {
        public Ccatch() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: fG$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            EditText editText = dialogFragmentC2741fG.f12871do;
            dialogFragmentC2741fG.getClass();
            if (editText != null) {
                editText.setVisibility(0);
                editText.requestFocus();
                if (dialogFragmentC2741fG.getActivity() != null) {
                    ((InputMethodManager) dialogFragmentC2741fG.getActivity().getSystemService("input_method")).showSoftInput(editText, 2);
                }
            }
        }
    }

    /* renamed from: fG$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: fG$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            if (dialogFragmentC2741fG.getActivity() == null) {
                return;
            }
            DialogFragmentC2741fG.m6646do(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
            try {
                if (!DialogFragmentC2741fG.m6648if(dialogFragmentC2741fG).isEmpty() && dialogFragmentC2741fG.getActivity() != null) {
                    Activity activity = dialogFragmentC2741fG.getActivity();
                    Activity activity2 = dialogFragmentC2741fG.getActivity();
                    String m6648if = DialogFragmentC2741fG.m6648if(dialogFragmentC2741fG);
                    if (m6648if.equalsIgnoreCase(activity2.getString(R.string.vrSurveyWhyRootOptionIncSpeed))) {
                        m6648if = activity2.getString(R.string.vrSurveyWhyRootOptionIncSpeedAnalytics);
                    }
                    DialogFragmentC2741fG.m6650try(activity, m6648if);
                } else if (dialogFragmentC2741fG.getActivity() != null) {
                    VJ.m2574instanceof(dialogFragmentC2741fG.getActivity(), dialogFragmentC2741fG.getActivity().getString(R.string.vrSurveySelectError));
                }
            } catch (NullPointerException e) {
                C0766bi.m4854do().m4855for(e);
            }
            if (DialogFragmentC2741fG.m6648if(dialogFragmentC2741fG).isEmpty()) {
                return;
            }
            VJ.m2567final(dialogFragmentC2741fG.getActivity(), "SWRDialog");
        }
    }

    /* renamed from: fG$goto, reason: invalid class name */
    public class Cgoto implements View.OnClickListener {
        public Cgoto() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: fG$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            RadioButton radioButton = dialogFragmentC2741fG.f12876goto;
            if (radioButton != null) {
                radioButton.setChecked(true);
            }
            if (dialogFragmentC2741fG.getActivity() != null) {
                ((InputMethodManager) dialogFragmentC2741fG.getActivity().getSystemService("input_method")).showSoftInput(dialogFragmentC2741fG.f12871do, 2);
            }
        }
    }

    /* renamed from: fG$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            if (dialogFragmentC2741fG.getActivity() == null) {
                return;
            }
            DialogFragmentC2741fG.m6646do(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
            VJ.m2567final(dialogFragmentC2741fG.getActivity(), "SWRDialog");
        }
    }

    /* renamed from: fG$this, reason: invalid class name */
    public class Cthis implements View.OnClickListener {
        public Cthis() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: fG$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2741fG dialogFragmentC2741fG = DialogFragmentC2741fG.this;
            DialogFragmentC2741fG.m6647for(dialogFragmentC2741fG, dialogFragmentC2741fG.f12871do);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6646do(DialogFragmentC2741fG dialogFragmentC2741fG, EditText editText) {
        InputMethodManager inputMethodManager;
        if (editText == null) {
            dialogFragmentC2741fG.getClass();
        } else {
            if (dialogFragmentC2741fG.getActivity() == null || (inputMethodManager = (InputMethodManager) dialogFragmentC2741fG.getActivity().getSystemService("input_method")) == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m6647for(DialogFragmentC2741fG dialogFragmentC2741fG, EditText editText) {
        dialogFragmentC2741fG.getClass();
        if (editText != null) {
            editText.setVisibility(8);
            if (dialogFragmentC2741fG.getActivity() != null) {
                ((InputMethodManager) dialogFragmentC2741fG.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m6648if(DialogFragmentC2741fG dialogFragmentC2741fG) {
        EditText editText;
        RadioButton radioButton = dialogFragmentC2741fG.f12872do;
        if (radioButton != null && radioButton.isChecked()) {
            return dialogFragmentC2741fG.f12872do.getText().toString();
        }
        RadioButton radioButton2 = dialogFragmentC2741fG.f12878if;
        if (radioButton2 != null && radioButton2.isChecked()) {
            return dialogFragmentC2741fG.f12878if.getText().toString();
        }
        RadioButton radioButton3 = dialogFragmentC2741fG.f12875for;
        if (radioButton3 != null && radioButton3.isChecked()) {
            return dialogFragmentC2741fG.f12875for.getText().toString();
        }
        RadioButton radioButton4 = dialogFragmentC2741fG.f12879new;
        if (radioButton4 != null && radioButton4.isChecked()) {
            return dialogFragmentC2741fG.f12879new.getText().toString();
        }
        RadioButton radioButton5 = dialogFragmentC2741fG.f12880try;
        if (radioButton5 != null && radioButton5.isChecked()) {
            return dialogFragmentC2741fG.f12880try.getText().toString();
        }
        RadioButton radioButton6 = dialogFragmentC2741fG.f12869case;
        if (radioButton6 != null && radioButton6.isChecked()) {
            return dialogFragmentC2741fG.f12869case.getText().toString();
        }
        RadioButton radioButton7 = dialogFragmentC2741fG.f12874else;
        if (radioButton7 != null && radioButton7.isChecked()) {
            return dialogFragmentC2741fG.f12874else.getText().toString();
        }
        RadioButton radioButton8 = dialogFragmentC2741fG.f12876goto;
        return (radioButton8 == null || !radioButton8.isChecked() || (editText = dialogFragmentC2741fG.f12871do) == null || editText.getText().toString().isEmpty()) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : dialogFragmentC2741fG.f12871do.getText().toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6649new(Activity activity, int i) {
        return i == 1 ? activity.getString(R.string.vrSurveyWhyRootOptionIncSpeed) : i == 2 ? activity.getString(R.string.vrSurveyWhyRootOptionCustomTheme) : i == 3 ? activity.getString(R.string.vrSurveyWhyRootOptionWifiTether) : i == 4 ? activity.getString(R.string.vrSurveyWhyRootOptionBloatware) : i == 5 ? activity.getString(R.string.vrSurveyWhyRootOptionExtBattery) : i == 6 ? activity.getString(R.string.vrSurveyWhyRootOptionLatestOS) : i == 7 ? activity.getString(R.string.vrSurveyWhyRootOptionRemoveAds) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m6650try(Activity activity, String str) {
        MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
        if (mobileAnalyticsManager != null) {
            try {
                DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                EventConstraintDecorator m5101for = defaultEventClient.m5101for("SurveyWhyRootInstalled");
                m5101for.mo5062else("WhyRootInstalled", str);
                defaultEventClient.m5099case(m5101for.f8929do);
                C4012y0.f16658do.f8800do.m5100else();
            } catch (Exception unused) {
            }
        }
        String str2 = Build.MODEL;
        String str3 = str2 != null ? str2 : "Displayed";
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putString("survey_why_rooted_reason_displayed", str3).apply();
        }
        if (str2 == null) {
            str2 = "Displayed";
        }
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putString("survey_why_rooted_reason_submitted", str2 + "," + str).apply();
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
        View inflate = View.inflate(getActivity(), R.layout.swr_dialog, null);
        this.f12873do = (TextView) inflate.findViewById(R.id.dialog_md_title);
        this.f12870do = (Button) inflate.findViewById(R.id.dialog_md_confirm);
        this.f12877if = (Button) inflate.findViewById(R.id.dialog_md_cancel);
        this.f12872do = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption1);
        this.f12878if = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption2);
        this.f12875for = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption3);
        this.f12879new = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption4);
        this.f12880try = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption5);
        this.f12869case = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption6);
        this.f12874else = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOption7);
        this.f12876goto = (RadioButton) inflate.findViewById(R.id.vrSurveyWhyRootedOptionOther);
        this.f12871do = (EditText) inflate.findViewById(R.id.vrSurveyWhyRootedOptionOtherDetails);
        TextView textView = this.f12873do;
        if (textView != null) {
            textView.setText(getString(R.string.vrSurveyWhyRootedDescription));
        }
        Button button = this.f12870do;
        if (button != null) {
            button.setAllCaps(true);
            this.f12870do.setOnClickListener(new Cfor());
        }
        Button button2 = this.f12877if;
        if (button2 != null) {
            button2.setAllCaps(true);
            this.f12877if.setOnClickListener(new Cnew());
        }
        RadioButton radioButton = this.f12872do;
        if (radioButton != null) {
            radioButton.setOnClickListener(new Ctry());
        }
        RadioButton radioButton2 = this.f12878if;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new Ccase());
        }
        RadioButton radioButton3 = this.f12875for;
        if (radioButton3 != null) {
            radioButton3.setOnClickListener(new Celse());
        }
        RadioButton radioButton4 = this.f12879new;
        if (radioButton4 != null) {
            radioButton4.setOnClickListener(new Cgoto());
        }
        RadioButton radioButton5 = this.f12880try;
        if (radioButton5 != null) {
            radioButton5.setOnClickListener(new Cthis());
        }
        RadioButton radioButton6 = this.f12869case;
        if (radioButton6 != null) {
            radioButton6.setOnClickListener(new Cbreak());
        }
        RadioButton radioButton7 = this.f12874else;
        if (radioButton7 != null) {
            radioButton7.setOnClickListener(new Ccatch());
        }
        RadioButton radioButton8 = this.f12876goto;
        if (radioButton8 != null) {
            radioButton8.setOnClickListener(new Cdo());
        }
        EditText editText = this.f12871do;
        if (editText != null) {
            editText.setOnClickListener(new Cif());
        }
        Activity activity = getActivity();
        if (activity != null && this.f12872do != null && this.f12878if != null && this.f12875for != null && this.f12879new != null && this.f12880try != null && this.f12869case != null && this.f12874else != null) {
            if (f12868do == null) {
                ArrayList<Integer> arrayList = new ArrayList<>(Arrays.asList(1, 2, 3, 4, 5, 6, 7));
                f12868do = arrayList;
                Collections.shuffle(arrayList);
            }
            this.f12872do.setText(m6649new(activity, f12868do.get(0).intValue()));
            this.f12878if.setText(m6649new(activity, f12868do.get(1).intValue()));
            this.f12875for.setText(m6649new(activity, f12868do.get(2).intValue()));
            this.f12879new.setText(m6649new(activity, f12868do.get(3).intValue()));
            this.f12880try.setText(m6649new(activity, f12868do.get(4).intValue()));
            this.f12869case.setText(m6649new(activity, f12868do.get(5).intValue()));
            this.f12874else.setText(m6649new(activity, f12868do.get(6).intValue()));
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onDestroyView() {
        this.f12873do = null;
        this.f12870do = null;
        this.f12877if = null;
        this.f12872do = null;
        this.f12878if = null;
        this.f12875for = null;
        this.f12879new = null;
        this.f12880try = null;
        this.f12869case = null;
        this.f12874else = null;
        this.f12876goto = null;
        this.f12871do = null;
        super.onDestroyView();
    }
}
