package org.jsoup.parser;

import android.view.View;
import j$.util.function.Consumer$CC;
import java.util.LinkedList;
import java.util.function.Consumer;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.PlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class TagSet$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TagSet$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((Tag) obj).set(4);
                break;
            case 1:
                ((Tag) obj).set(128);
                break;
            case 2:
                ((Tag) obj).set(256);
                break;
            case 3:
                ((Tag) obj).set(512);
                break;
            case 4:
                ((Tag) obj).set(1024);
                break;
            case 5:
                ((Tag) obj).set(4);
                break;
            case 6:
                ((Tag) obj).set(0);
                break;
            case 7:
                ((Tag) obj).set(4);
                break;
            case 8:
                ((Tag) obj).set(0);
                break;
            case 9:
                ((Tag) obj).set(256);
                break;
            case 10:
                ((Tag) obj).set(0);
                break;
            case 11:
                ((Tag) obj).set(8);
                break;
            case 12:
                ((Tag) obj).set(2);
                break;
            case 13:
                ((Tag) obj).set(64);
                break;
            case 14:
                ((LocalPlaylistFragment) obj).saveImmediate();
                break;
            case 15:
                ((VideoPlayerUi) obj).removeViewFromParent();
                break;
            case 16:
                MainPlayerUi mainPlayerUi = (MainPlayerUi) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                if (mainPlayerUi.isFullscreen) {
                    mainPlayerUi.toggleFullscreen();
                    break;
                }
                break;
            case 17:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                ((View) obj).setVisibility(8);
                break;
            case 18:
                ((MainPlayerUi) obj).toggleFullscreen();
                break;
            case 19:
                LinkedList linkedList3 = VideoDetailFragment.stack;
                ((VideoPlayerUi) obj).hideControls(0L, 0L);
                break;
            case 20:
                ((MainPlayerUi) obj).checkLandscape();
                break;
            case 21:
                ((MainPlayerUi) obj).closeItemsList();
                break;
            case 22:
                MainPlayerUi mainPlayerUi2 = (MainPlayerUi) obj;
                if (mainPlayerUi2.isControlsVisible()) {
                    mainPlayerUi2.hideControls(0L, 0L);
                    break;
                }
                break;
            case 23:
                ((PlayerUi) obj).onPausedSeek();
                break;
            case 24:
                ((PlayerUi) obj).onFragmentListenerSet();
                break;
            case 25:
                ((PlayerUi) obj).onBlocked();
                break;
            case 26:
                ((PlayerUi) obj).setupAfterIntent();
                break;
            case 27:
                ((PlayerUi) obj).onRenderedFirstFrame();
                break;
            case 28:
                ((PlayerUi) obj).onCompleted();
                break;
            default:
                ((PlayerUi) obj).onPaused();
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
