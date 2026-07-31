package androidx.appcompat.widget;

import android.widget.PopupWindow;
import androidx.appcompat.view.menu.MenuPopupHelper;
import coil3.ComponentRegistry;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda32;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PopupMenu$2 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ PopupMenu$2(Object obj, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                PopupMenu$OnDismissListener popupMenu$OnDismissListener = (PopupMenu$OnDismissListener) ((ComponentRegistry.Builder) obj).lazyDecoderFactories;
                if (popupMenu$OnDismissListener != null) {
                    VideoPlayerUi videoPlayerUi = (VideoPlayerUi) popupMenu$OnDismissListener;
                    int i2 = MainActivity.$r8$clinit;
                    videoPlayerUi.isSomePopupMenuVisible = false;
                    Player player = videoPlayerUi.player;
                    player.getSelectedVideoStream().ifPresent(new VideoPlayerUi$$ExternalSyntheticLambda32(videoPlayerUi, 0));
                    if (player.isPlaying()) {
                        videoPlayerUi.hideControls(300L, 0L);
                        videoPlayerUi.hideSystemUIIfNeeded();
                        break;
                    }
                }
                break;
            default:
                ((MenuPopupHelper) obj).onDismiss();
                break;
        }
    }
}
