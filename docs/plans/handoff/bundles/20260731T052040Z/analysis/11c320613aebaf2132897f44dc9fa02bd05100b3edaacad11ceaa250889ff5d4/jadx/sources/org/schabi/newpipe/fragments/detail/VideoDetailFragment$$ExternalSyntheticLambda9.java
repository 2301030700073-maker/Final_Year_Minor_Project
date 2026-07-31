package org.schabi.newpipe.fragments.detail;

import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.LinkedList;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda9 implements Consumer, Action {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoDetailFragment f$0;

    public /* synthetic */ VideoDetailFragment$$ExternalSyntheticLambda9(VideoDetailFragment videoDetailFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = videoDetailFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        VideoDetailFragment videoDetailFragment = this.f$0;
        switch (i) {
            case 0:
                Throwable th = (Throwable) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                String str = videoDetailFragment.url;
                if (str == null) {
                    str = "no url";
                }
                videoDetailFragment.showError(new ErrorInfo(th, UserAction.REQUESTED_STREAM, str, Integer.valueOf(videoDetailFragment.serviceId), videoDetailFragment.url));
                break;
            case 1:
            default:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                videoDetailFragment.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.PLAY_STREAM, "Got an error when modifying history on viewed"));
                break;
            case 2:
                LinkedList linkedList3 = VideoDetailFragment.stack;
                videoDetailFragment.updateOverlayPlayQueueButtonVisibility();
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        VideoDetailFragment videoDetailFragment = this.f$0;
        videoDetailFragment.binding.positionView.setVisibility(8);
        videoDetailFragment.binding.detailPositionView.setVisibility(8);
    }
}
