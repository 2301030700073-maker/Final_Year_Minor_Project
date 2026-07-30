package defpackage;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;

/* loaded from: classes3.dex */
public final class Ny extends DialogFragment {

    /* renamed from: do, reason: not valid java name */
    public static long f2451do = -1;

    /* renamed from: Ny$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Ny ny = Ny.this;
            if (ny.getActivity() == null) {
                return;
            }
            try {
                C3210kN.m7250for("RateDialog", "Y-" + (ny.getArguments() != null ? ny.getArguments().getString("rateDialogTrigger") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            C3772tx.m8342private(true);
            VJ.m2567final(ny.getActivity(), "RateDialog");
            try {
                ny.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(VJ.m2586switch(ny.getActivity()) ? "http://www.amazon.com/gp/mas/dl/android?p=com.joeykrim.rootcheck&amp;referrer=utm_source%3Drootcheckb%26utm_content%3Drate-dialog" : "https://play.google.com/store/apps/details?id=com.joeykrim.rootcheck&amp;referrer=utm_source%3Drootcheckb%26utm_content%3Drate-dialog")));
            } catch (Exception unused) {
                Toast.makeText(ny.getActivity(), ny.getString(R.string.notFoundBrowser), 1).show();
            }
        }
    }

    /* renamed from: Ny$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Ny ny = Ny.this;
            if (ny.getActivity() == null) {
                return;
            }
            try {
                C3210kN.m7250for("RateDialog", "N-" + (ny.getArguments() != null ? ny.getArguments().getString("rateDialogTrigger") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            C3772tx.m8342private(false);
            VJ.m2567final(ny.getActivity(), "RateDialog");
        }
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        try {
            C3210kN.m7250for("RateDialog", "C-" + (getArguments() != null ? getArguments().getString("rateDialogTrigger") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        C3772tx.m8342private(false);
        super.onCancel(dialogInterface);
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        View inflate = View.inflate(getActivity(), R.layout.mddialog, null);
        ((TextView) inflate.findViewById(R.id.dialog_md_title)).setText(getString(R.string.rateDialogTitle));
        ((TextView) inflate.findViewById(R.id.dialog_md_content)).setText(R.string.rateDialogMessagev2);
        inflate.findViewById(R.id.dialog_md_alongside_buttons).setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.dialog_md_confirm);
        button.setAllCaps(true);
        button.setTextColor(getResources().getColor(R.color.colorPrimary));
        button.setText(R.string.rateBtnPositive);
        button.setVisibility(0);
        button.setOnClickListener(new Cdo());
        Button button2 = (Button) inflate.findViewById(R.id.dialog_md_cancel);
        button2.setAllCaps(true);
        button2.setVisibility(0);
        button2.setText(R.string.rateBtnNegative);
        button2.setTextColor(getResources().getColor(R.color.grey400));
        button2.setOnClickListener(new Cif());
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }
}
