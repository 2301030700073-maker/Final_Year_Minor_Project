package org.schabi.newpipe.local.feed;

import android.content.Context;
import android.provider.Settings;
import android.widget.Button;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.util.DeviceUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFragment$$ExternalSyntheticLambda13 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedFragment f$0;

    public /* synthetic */ FeedFragment$$ExternalSyntheticLambda13(FeedFragment feedFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = feedFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        FeedFragment feedFragment = this.f$0;
        switch (i) {
            case 0:
                FeedFragment.Companion companion = FeedFragment.Companion;
                Button tryGetNewItemsLoadedButton = feedFragment.tryGetNewItemsLoadedButton();
                if (tryGetNewItemsLoadedButton != null) {
                    tryGetNewItemsLoadedButton.setVisibility(8);
                    break;
                }
                break;
            default:
                FeedFragment.Companion companion2 = FeedFragment.Companion;
                Context context = feedFragment.getContext();
                if (context != null) {
                    boolean z = DeviceUtils.SAMSUNG;
                    if (Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f) {
                        feedFragment.hideNewItemsLoaded(10000L, true);
                        break;
                    }
                }
                break;
        }
    }
}
