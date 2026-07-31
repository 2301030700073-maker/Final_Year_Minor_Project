package org.wikipedia.util;

import android.view.View;
import com.google.android.material.snackbar.Snackbar;
import org.wikipedia.page.PageFragment;
import org.wikipedia.places.PlacesFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedbackUtil$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Snackbar f$0;

    public /* synthetic */ FeedbackUtil$$ExternalSyntheticLambda1(Snackbar snackbar, int i) {
        this.$r8$classId = i;
        this.f$0 = snackbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Snackbar snackbar = this.f$0;
        switch (i) {
            case 0:
                snackbar.dispatchDismiss(3);
                break;
            case 1:
                int i2 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                snackbar.dispatchDismiss(3);
                break;
            default:
                String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                snackbar.dispatchDismiss(3);
                break;
        }
    }
}
