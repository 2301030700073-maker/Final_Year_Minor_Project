package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: dM, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class DialogFragmentC2630dM extends DialogFragment {

    /* renamed from: dM$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2630dM dialogFragmentC2630dM = DialogFragmentC2630dM.this;
            if (dialogFragmentC2630dM.getActivity() == null) {
                return;
            }
            VJ.m2567final(dialogFragmentC2630dM.getActivity(), "WhatsNewDialog");
            if (VJ.m2594while()) {
                VJ.m2591transient(dialogFragmentC2630dM.getActivity(), VJ.m2584strictfp("WhatsNewDialog"));
            }
        }
    }

    /* renamed from: dM$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2630dM dialogFragmentC2630dM = DialogFragmentC2630dM.this;
            if (dialogFragmentC2630dM.getActivity() == null) {
                return;
            }
            VJ.m2567final(dialogFragmentC2630dM.getActivity(), "WhatsNewDialog");
            VJ.m2563default(dialogFragmentC2630dM.getActivity());
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        boolean z;
        if (getActivity() == null) {
            return null;
        }
        Activity activity = getActivity();
        Trace trace = VJ.f4080do;
        try {
            activity.getPackageManager().getPackageInfo("com.twitter.android", 0);
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        View inflate = View.inflate(getActivity(), R.layout.mddialog, null);
        ((TextView) inflate.findViewById(R.id.dialog_md_title)).setText(getString(R.string.whatsNewTitle) + " - v" + MainActivity.f12230break);
        if (C0420Ou.m1688case() || C0420Ou.m1693else()) {
            ((TextView) inflate.findViewById(R.id.dialog_md_content)).setText(getActivity().getResources().getString(R.string.whatsNew) + getActivity().getResources().getString(R.string.whatsNewUpgraded));
        } else {
            ((TextView) inflate.findViewById(R.id.dialog_md_content)).setText(R.string.whatsNew);
        }
        inflate.findViewById(R.id.dialog_md_stacked_buttons).setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.dialog_md_confirm_stacked);
        button.setAllCaps(true);
        button.setTextColor(getResources().getColor(R.color.colorPrimary));
        button.setText(R.string.universalBtnOkay);
        button.setVisibility(0);
        button.setOnClickListener(new Cdo());
        if (valueOf.booleanValue()) {
            Button button2 = (Button) inflate.findViewById(R.id.dialog_md_cancel_stacked);
            button2.setAllCaps(true);
            button2.setVisibility(0);
            button2.setText(R.string.universalBtnFollowTwitter);
            button2.setTextColor(getResources().getColor(R.color.holo_blue));
            button2.setOnClickListener(new Cif());
        }
        try {
            C3210kN.m7250for("TwitterInstalled", valueOf.toString());
        } catch (Exception unused2) {
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }
}
