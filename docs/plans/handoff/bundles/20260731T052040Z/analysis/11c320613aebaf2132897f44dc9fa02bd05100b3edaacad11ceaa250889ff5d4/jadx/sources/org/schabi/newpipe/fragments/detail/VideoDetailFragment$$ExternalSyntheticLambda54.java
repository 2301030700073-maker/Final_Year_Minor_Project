package org.schabi.newpipe.fragments.detail;

import android.content.DialogInterface;
import androidx.transition.Transition;
import java.util.LinkedList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda54 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ VideoDetailFragment$$ExternalSyntheticLambda54(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i2) {
            case 0:
                VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                Transition.Impl26.openUrlInBrowser(videoDetailFragment.requireActivity(), videoDetailFragment.url);
                break;
            case 1:
                VideoDetailFragment videoDetailFragment2 = (VideoDetailFragment) obj;
                LinkedList linkedList2 = VideoDetailFragment.stack;
                Transition.Impl26.openUrlInBrowser(videoDetailFragment2.requireActivity(), videoDetailFragment2.url);
                break;
            default:
                LinkedList linkedList3 = VideoDetailFragment.stack;
                ((Runnable) obj).run();
                dialogInterface.dismiss();
                break;
        }
    }
}
