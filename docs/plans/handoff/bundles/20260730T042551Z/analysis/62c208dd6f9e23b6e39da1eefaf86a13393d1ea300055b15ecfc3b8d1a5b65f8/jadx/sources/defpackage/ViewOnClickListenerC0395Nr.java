package defpackage;

import android.view.View;
import com.google.android.material.datepicker.Cfor;

/* renamed from: Nr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC0395Nr implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cfor f2443do;

    public ViewOnClickListenerC0395Nr(Cfor cfor) {
        this.f2443do = cfor;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Cfor cfor = this.f2443do;
        int i = cfor.f11000new;
        if (i == 2) {
            cfor.m5803case(1);
        } else if (i == 1) {
            cfor.m5803case(2);
        }
    }
}
