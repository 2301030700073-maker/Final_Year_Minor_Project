package org.schabi.newpipe.fragments.list.playlist;

import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlaylistFragment$$ExternalSyntheticLambda11 implements Consumer, Action {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistFragment f$0;

    public /* synthetic */ PlaylistFragment$$ExternalSyntheticLambda11(PlaylistFragment playlistFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        UserAction userAction = UserAction.REQUESTED_BOOKMARK;
        PlaylistFragment playlistFragment = this.f$0;
        Throwable th = (Throwable) obj;
        switch (i) {
            case 0:
                int i2 = PlaylistFragment.$r8$clinit;
                playlistFragment.showError(new ErrorInfo(th, userAction, "Adding playlist bookmark"));
                break;
            default:
                int i3 = PlaylistFragment.$r8$clinit;
                playlistFragment.showError(new ErrorInfo(th, userAction, "Deleting playlist bookmark"));
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        this.f$0.playlistEntity = null;
    }
}
