package org.wikipedia.feed;

import android.content.Intent;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import kotlin.jvm.functions.Function0;
import org.wikipedia.activitytab.ActivityTabCustomizationActivity;
import org.wikipedia.activitytab.ActivityTabFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda75 implements LinkInteractionListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda75(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void onClick(LinkAnnotation linkAnnotation) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                linkAnnotation.getClass();
                ((Function0) obj).invoke();
                break;
            default:
                ActivityTabFragment activityTabFragment = (ActivityTabFragment) obj;
                linkAnnotation.getClass();
                int i2 = ActivityTabCustomizationActivity.$r8$clinit;
                activityTabFragment.startActivity(new Intent(activityTabFragment.requireContext(), (Class<?>) ActivityTabCustomizationActivity.class), null);
                break;
        }
    }
}
