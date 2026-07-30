package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Settings;
import com.joeykrim.rootcheck.WelcomeScreens;

/* renamed from: ye, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class DialogFragmentC4048ye extends DialogFragment {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f16803do;

    /* renamed from: ye$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4048ye dialogFragmentC4048ye = DialogFragmentC4048ye.this;
            if (dialogFragmentC4048ye.getActivity() == null) {
                return;
            }
            if (C3772tx.m8330do() != null) {
                SharedPreferences.Editor m8330do = C3772tx.m8330do();
                C3772tx.f15824if = true;
                m8330do.putBoolean("disclaimerAccepted", true);
                C3772tx.m8330do().apply();
            }
            try {
                C3210kN.m7250for("DisclaimerDialog", "DisclaimerAgree");
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            Activity activity = dialogFragmentC4048ye.getActivity();
            String[] strArr = DialogFragmentC4048ye.f16803do;
            VJ.m2567final(activity, VJ.m2570goto(strArr[0]));
            if (C3772tx.m8339native() == 1 && !Settings.f12246do) {
                dialogFragmentC4048ye.getActivity().startActivityForResult(new Intent(dialogFragmentC4048ye.getActivity(), (Class<?>) WelcomeScreens.class), 153);
            } else if (VJ.e()) {
                VJ.m2587synchronized(dialogFragmentC4048ye.getActivity());
            }
            if (C3772tx.m8339native() == 1 || VJ.e() || !VJ.m2594while()) {
                return;
            }
            VJ.m2591transient(dialogFragmentC4048ye.getActivity(), VJ.m2584strictfp(VJ.m2570goto(strArr[0])));
        }
    }

    /* renamed from: ye$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC4048ye dialogFragmentC4048ye = DialogFragmentC4048ye.this;
            if (dialogFragmentC4048ye.getActivity() == null) {
                return;
            }
            if (C3772tx.m8330do() != null) {
                SharedPreferences.Editor m8330do = C3772tx.m8330do();
                C3772tx.f15824if = false;
                m8330do.putBoolean("disclaimerAccepted", false);
                C3772tx.m8330do().apply();
            }
            try {
                C3210kN.m7250for("DisclaimerDialog", "DisclaimerDisagree");
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            Activity activity = dialogFragmentC4048ye.getActivity();
            String[] strArr = DialogFragmentC4048ye.f16803do;
            VJ.m2567final(activity, VJ.m2570goto(strArr[0]));
            if (C3772tx.m8339native() == 1 && !Settings.f12246do) {
                dialogFragmentC4048ye.getActivity().startActivityForResult(new Intent(dialogFragmentC4048ye.getActivity(), (Class<?>) WelcomeScreens.class), 153);
            } else if (VJ.e()) {
                VJ.m2587synchronized(dialogFragmentC4048ye.getActivity());
            }
            if (C3772tx.m8339native() == 1 || VJ.e() || !VJ.m2594while()) {
                return;
            }
            VJ.m2591transient(dialogFragmentC4048ye.getActivity(), VJ.m2584strictfp(VJ.m2570goto(strArr[0])));
        }
    }

    static {
        String[] strArr = {"GqWmqrwgCnHl7NDIKdwIJg==:Fqg8A87EdKr+hbzT1SwL4D68uh6KqXOeXblQo8admZ0=:X0fdiXSA9EqnctugFb3oLvkhVCGZ5pdbFUwVy33k8Hs=", "K85862qtH42PdnlCZtO3Kw==:bxAw4fv3agm2J85LhtTxErF8GjSSJvl6T3owE2itE0k=:b+8zNJMcgmtsJ5FLVZPMaA==", "o8eQFpXTwmC0wKVy9djWyQ==:5AlZJo0jVzUAhIERXjlJSvLkrUM1rpAJlxQikSLPZ2o=:GqFql9BFmx6EV5VM2n4vFYM7tElM8KnoRGxxYiRpP8s="};
        f16803do = strArr;
        VJ.m2570goto(strArr[0]);
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        View inflate = View.inflate(getActivity(), R.layout.mddialog, null);
        ((TextView) inflate.findViewById(R.id.dialog_md_title)).setText(getString(R.string.menuDisclaimer));
        ((TextView) inflate.findViewById(R.id.dialog_md_content)).setText(R.string.disclaimerDialogMessagev3);
        inflate.findViewById(R.id.dialog_md_alongside_buttons).setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.dialog_md_confirm);
        button.setAllCaps(true);
        button.setTextColor(getResources().getColor(R.color.colorPrimary));
        button.setText(R.string.disclaimerBtnPositive);
        button.setVisibility(0);
        button.setOnClickListener(new Cdo());
        Button button2 = (Button) inflate.findViewById(R.id.dialog_md_cancel);
        button2.setAllCaps(true);
        button2.setVisibility(0);
        button2.setText(R.string.disclaimerBtnNegative);
        button2.setTextColor(getResources().getColor(R.color.grey400));
        button2.setOnClickListener(new Cif());
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }
}
