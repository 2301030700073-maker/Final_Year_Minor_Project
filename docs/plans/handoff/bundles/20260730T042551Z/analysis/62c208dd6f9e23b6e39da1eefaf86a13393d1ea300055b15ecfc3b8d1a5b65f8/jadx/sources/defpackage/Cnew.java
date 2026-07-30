package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends DialogFragment {

    /* renamed from: new$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Cnew cnew = Cnew.this;
            if (cnew.getActivity() == null) {
                return;
            }
            VJ.m2567final(cnew.getActivity(), "AboutDialog");
            if (VJ.m2594while()) {
                VJ.m2591transient(cnew.getActivity(), VJ.m2584strictfp("AboutDialog"));
            }
        }
    }

    /* renamed from: new$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Cnew cnew = Cnew.this;
            if (cnew.getActivity() == null) {
                return;
            }
            VJ.m2567final(cnew.getActivity(), "AboutDialog");
            try {
                cnew.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.joeykrim.com")));
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                if (cnew.getActivity() != null) {
                    VJ.m2574instanceof(cnew.getActivity(), cnew.getActivity().getString(R.string.notFoundBrowser));
                }
            }
        }
    }

    /* renamed from: new$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Cnew cnew = Cnew.this;
            if (cnew.getActivity() == null) {
                return;
            }
            VJ.m2567final(cnew.getActivity(), "AboutDialog");
            VJ.m2563default(cnew.getActivity());
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        boolean z;
        Activity activity = getActivity();
        Trace trace = VJ.f4080do;
        try {
            activity.getPackageManager().getPackageInfo("com.twitter.android", 0);
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        if (getActivity() == null) {
            return null;
        }
        View inflate = View.inflate(getActivity(), R.layout.about_dialog, null);
        ((TextView) inflate.findViewById(R.id.dialog_md_title)).setText(getString(R.string.menuAboutCredits));
        ((TextView) inflate.findViewById(R.id.dialog_md_content)).setText(getString(R.string.aboutVersionInfo, MainActivity.f12230break) + System.getProperty("line.separator") + System.getProperty("line.separator") + getString(R.string.aboutDialogMsg) + System.getProperty("line.separator") + System.getProperty("line.separator") + getString(R.string.aboutDialogLicenses));
        inflate.findViewById(R.id.dialog_md_stacked_buttons).setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.dialog_md_confirm_stacked);
        button.setAllCaps(true);
        button.setTextColor(getResources().getColor(R.color.colorPrimary));
        button.setText(R.string.universalBtnOkay);
        button.setVisibility(0);
        button.setOnClickListener(new Cdo());
        if (z) {
            Button button2 = (Button) inflate.findViewById(R.id.dialog_md_cancel_stacked);
            button2.setAllCaps(true);
            button2.setVisibility(0);
            button2.setText(R.string.universalBtnFollowTwitter);
            button2.setTextColor(getResources().getColor(R.color.holo_blue));
            button2.setOnClickListener(new Cif());
        } else {
            Button button3 = (Button) inflate.findViewById(R.id.dialog_md_cancel_stacked);
            button3.setAllCaps(true);
            button3.setVisibility(0);
            button3.setText(R.string.aboutBtnVisitWebSite);
            button3.setTextColor(getResources().getColor(R.color.colorPrimaryDark));
            button3.setOnClickListener(new Cfor());
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }
}
