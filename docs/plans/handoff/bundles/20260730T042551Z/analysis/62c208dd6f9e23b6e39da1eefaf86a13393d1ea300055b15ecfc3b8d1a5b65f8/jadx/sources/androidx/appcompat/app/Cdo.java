package androidx.appcompat.app;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* renamed from: androidx.appcompat.app.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements AdapterView.OnItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AlertController.Cif f5337do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AlertController f5338do;

    public Cdo(AlertController.Cif cif, AlertController alertController) {
        this.f5337do = cif;
        this.f5338do = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        AlertController.Cif cif = this.f5337do;
        DialogInterface.OnClickListener onClickListener = cif.f5199do;
        AlertController alertController = this.f5338do;
        onClickListener.onClick(alertController.f5171do, i);
        if (cif.f5206do) {
            return;
        }
        alertController.f5171do.dismiss();
    }
}
