package defpackage;

import android.content.Context;
import androidx.appcompat.app.Cnew;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.google.android.material.datepicker.Cdo;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0324Kl;
import java.util.Date;

/* renamed from: g2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC2786g2 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f13030do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13031for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f13032if;

    public /* synthetic */ RunnableC2786g2(int i, Object obj, Object obj2) {
        this.f13031for = i;
        this.f13030do = obj;
        this.f13032if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f13031for;
        Object obj = this.f13032if;
        Object obj2 = this.f13030do;
        switch (i) {
            case 0:
                Cnew.Cdo cdo = (Cnew.Cdo) obj2;
                Runnable runnable = (Runnable) obj;
                cdo.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    cdo.m3302do();
                }
            case 1:
                C0324Kl.Cdo cdo2 = (C0324Kl.Cdo) obj2;
                int i2 = Vx.f4267for;
                C0173Do.m401try(cdo2, "$callback");
                C0173Do.m401try((Vx) obj, "this$0");
                ((C0324Kl.Cif) cdo2).m1206do();
                return;
            case 2:
                ((FetchedAppSettingsManager.FetchedAppSettingsCallback) obj2).onSuccess((FetchedAppSettings) obj);
                return;
            default:
                Cdo cdo3 = (Cdo) obj2;
                TextInputLayout textInputLayout = cdo3.f10951do;
                Context context = textInputLayout.getContext();
                textInputLayout.m5981final(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), ((String) obj).replace(' ', (char) 160)) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), cdo3.f10953do.format(new Date(NJ.m1518goto().getTimeInMillis())).replace(' ', (char) 160)));
                cdo3.mo1229do();
                return;
        }
    }
}
