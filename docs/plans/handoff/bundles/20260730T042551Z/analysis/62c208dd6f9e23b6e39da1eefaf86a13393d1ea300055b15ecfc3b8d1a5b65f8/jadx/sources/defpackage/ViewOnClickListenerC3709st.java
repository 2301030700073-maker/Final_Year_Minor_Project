package defpackage;

import android.app.Activity;
import android.view.View;
import android.widget.Toast;
import com.joeykrim.rootcheck.R;

/* renamed from: st, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC3709st implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f15539do;

    public ViewOnClickListenerC3709st(Activity activity) {
        this.f15539do = activity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Activity activity = this.f15539do;
        try {
            activity.startActivity(C3827ut.m8397do(activity, 3));
        } catch (Exception unused) {
            if (activity != null) {
                Toast.makeText(activity, activity.getString(R.string.notFoundBrowser), 1).show();
            }
        }
    }
}
