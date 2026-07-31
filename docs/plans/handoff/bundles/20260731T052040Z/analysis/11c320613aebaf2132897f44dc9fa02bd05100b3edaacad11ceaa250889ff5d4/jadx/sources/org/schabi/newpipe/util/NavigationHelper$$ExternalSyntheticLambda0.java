package org.schabi.newpipe.util;

import android.content.Intent;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import us.shandian.giga.ui.common.ProgressDrawable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class NavigationHelper$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NavigationHelper$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((VideoDetailFragment) obj).requireActivity().sendBroadcast(new Intent("org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"));
                break;
            default:
                ((ProgressDrawable) obj).invalidateSelf();
                break;
        }
    }
}
