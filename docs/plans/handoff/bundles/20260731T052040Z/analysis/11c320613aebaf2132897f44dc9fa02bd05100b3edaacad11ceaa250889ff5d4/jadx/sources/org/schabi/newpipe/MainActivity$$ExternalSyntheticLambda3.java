package org.schabi.newpipe;

import android.view.View;
import androidx.transition.Transition;
import org.schabi.newpipe.views.FocusAwareDrawerLayout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MainActivity f$0;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda3(MainActivity mainActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        MainActivity mainActivity = this.f$0;
        switch (i) {
            case 0:
                int i2 = MainActivity.$r8$clinit;
                Transition.Impl26.openUrlInBrowser(mainActivity, "https://github.com/woheller69/FreeDroidWarn#solutions");
                break;
            case 1:
                ((FocusAwareDrawerLayout) mainActivity.mainBinding.root).openDrawer$1();
                break;
            case 2:
                int i3 = MainActivity.$r8$clinit;
                mainActivity.onHomeButtonPressed();
                break;
            default:
                int i4 = MainActivity.$r8$clinit;
                mainActivity.toggleServices();
                break;
        }
    }
}
