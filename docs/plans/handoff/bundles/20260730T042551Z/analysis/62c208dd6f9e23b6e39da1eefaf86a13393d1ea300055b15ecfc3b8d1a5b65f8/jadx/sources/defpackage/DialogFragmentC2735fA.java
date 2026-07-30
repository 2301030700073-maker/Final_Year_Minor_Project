package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.joeykrim.rootcheck.R;

/* renamed from: fA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class DialogFragmentC2735fA extends DialogFragment {

    /* renamed from: fA$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2735fA dialogFragmentC2735fA = DialogFragmentC2735fA.this;
            if (dialogFragmentC2735fA.getActivity() == null) {
                return;
            }
            VJ.m2567final(dialogFragmentC2735fA.getActivity(), "RewardedAdUpgradeDialog");
        }
    }

    /* renamed from: fA$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogFragmentC2735fA dialogFragmentC2735fA = DialogFragmentC2735fA.this;
            if (dialogFragmentC2735fA.getActivity() == null) {
                return;
            }
            VJ.m2567final(dialogFragmentC2735fA.getActivity(), "RewardedAdUpgradeDialog");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m6643do(int r7) {
        /*
            r6 = this;
            Ai r0 = defpackage.O4.f2532do
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L19
            r0.m91for()
            Ai r0 = defpackage.O4.f2532do
            java.lang.String r0 = r0.m91for()
            java.lang.String r3 = "variation_1"
            boolean r0 = r0.equalsIgnoreCase(r3)
            if (r0 == 0) goto L19
            r0 = 1
            goto L1a
        L19:
            r0 = 0
        L1a:
            r3 = 2131821210(0x7f11029a, float:1.9275157E38)
            if (r0 == 0) goto L28
            android.app.Activity r7 = r6.getActivity()
            java.lang.String r7 = r7.getString(r3)
            return r7
        L28:
            Ai r0 = defpackage.O4.f2532do
            if (r0 == 0) goto L3f
            r0.m91for()
            Ai r0 = defpackage.O4.f2532do
            java.lang.String r0 = r0.m91for()
            java.lang.String r4 = "variation_2"
            boolean r0 = r0.equalsIgnoreCase(r4)
            if (r0 == 0) goto L3f
            r0 = 1
            goto L40
        L3f:
            r0 = 0
        L40:
            r4 = 2131821172(0x7f110274, float:1.927508E38)
            if (r0 == 0) goto L4e
            android.app.Activity r7 = r6.getActivity()
            java.lang.String r7 = r7.getString(r4)
            return r7
        L4e:
            Ai r0 = defpackage.O4.f2532do
            if (r0 == 0) goto L64
            r0.m91for()
            Ai r0 = defpackage.O4.f2532do
            java.lang.String r0 = r0.m91for()
            java.lang.String r5 = "variation_3"
            boolean r0 = r0.equalsIgnoreCase(r5)
            if (r0 == 0) goto L64
            r1 = 1
        L64:
            r0 = 2131821192(0x7f110288, float:1.927512E38)
            if (r1 == 0) goto L72
            android.app.Activity r7 = r6.getActivity()
            java.lang.String r7 = r7.getString(r0)
            return r7
        L72:
            boolean r1 = defpackage.O4.m1615native()
            if (r1 == 0) goto L83
            if (r7 != r2) goto L83
            android.app.Activity r7 = r6.getActivity()
            java.lang.String r7 = r7.getString(r3)
            return r7
        L83:
            boolean r1 = defpackage.O4.m1615native()
            if (r1 == 0) goto L95
            r1 = 2
            if (r7 != r1) goto L95
            android.app.Activity r7 = r6.getActivity()
            java.lang.String r7 = r7.getString(r4)
            return r7
        L95:
            boolean r1 = defpackage.O4.m1615native()
            if (r1 == 0) goto La7
            r1 = 3
            if (r7 != r1) goto La7
            android.app.Activity r7 = r6.getActivity()
            java.lang.String r7 = r7.getString(r0)
            return r7
        La7:
            java.lang.String r7 = ""
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.DialogFragmentC2735fA.m6643do(int):java.lang.String");
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        View inflate = View.inflate(getActivity(), R.layout.mddialog, null);
        TextView textView = (TextView) inflate.findViewById(R.id.dialog_md_title);
        Object[] objArr = new Object[1];
        objArr[0] = m6643do(getArguments() != null ? getArguments().getInt("ComboAdUnitID") : -1);
        textView.setText(getString(R.string.rewardedAdsDialogTitle, objArr));
        TextView textView2 = (TextView) inflate.findViewById(R.id.dialog_md_content);
        Activity activity = getActivity();
        Object[] objArr2 = new Object[1];
        objArr2[0] = m6643do(getArguments() != null ? getArguments().getInt("ComboAdUnitID") : -1);
        textView2.setText(activity.getString(R.string.rewardedAdDialogMessage, objArr2));
        inflate.findViewById(R.id.dialog_md_alongside_buttons).setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.dialog_md_confirm);
        button.setAllCaps(true);
        button.setTextColor(getResources().getColor(R.color.colorPrimary));
        button.setText(R.string.upgradeCTAWatchAd);
        button.setVisibility(0);
        button.setOnClickListener(new Cdo());
        Button button2 = (Button) inflate.findViewById(R.id.dialog_md_cancel);
        button2.setAllCaps(true);
        button2.setVisibility(0);
        button2.setText(R.string.universalBtnCancel);
        button2.setTextColor(getResources().getColor(R.color.grey400));
        button2.setOnClickListener(new Cif());
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(inflate);
        return builder.create();
    }
}
