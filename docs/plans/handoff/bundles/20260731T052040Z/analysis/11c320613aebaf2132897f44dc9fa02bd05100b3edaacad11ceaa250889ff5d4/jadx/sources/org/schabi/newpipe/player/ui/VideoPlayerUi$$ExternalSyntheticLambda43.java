package org.schabi.newpipe.player.ui;

import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import org.schabi.newpipe.fragments.list.BaseListFragment;
import org.schabi.newpipe.info_list.InfoListAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda43 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda43(int i, Object obj, boolean z) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        boolean z = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                VideoPlayerUi videoPlayerUi = (VideoPlayerUi) obj;
                if (z) {
                    videoPlayerUi.binding.secondaryControls.setVisibility(4);
                    break;
                }
                break;
            case 1:
                ((AudioRendererEventListener.EventDispatcher) obj).lambda$skipSilenceEnabledChanged$7(z);
                break;
            default:
                BaseListFragment baseListFragment = (BaseListFragment) obj;
                InfoListAdapter infoListAdapter = baseListFragment.infoListAdapter;
                if (infoListAdapter != null && baseListFragment.itemsList != null && z != infoListAdapter.showFooter) {
                    infoListAdapter.showFooter = z;
                    if (!z) {
                        infoListAdapter.notifyItemRemoved(infoListAdapter.sizeConsideringHeaderOffset());
                        break;
                    } else {
                        infoListAdapter.notifyItemInserted(infoListAdapter.sizeConsideringHeaderOffset());
                        break;
                    }
                }
                break;
        }
    }
}
