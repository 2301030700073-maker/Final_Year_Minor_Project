package b.l;

import android.view.View;
import androidx.preference.Preference;

/* renamed from: b.l.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewOnClickListenerC0153n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Preference f1066a;

    public ViewOnClickListenerC0153n(Preference preference) {
        this.f1066a = preference;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1066a.performClick(view);
    }
}
