package org.schabi.newpipe.player;

import android.os.Handler;
import android.os.Looper;
import android.view.Window;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlayer;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.player.event.PlayerServiceEventListener;
import org.schabi.newpipe.player.notification.NotificationPlayerUi;
import org.schabi.newpipe.player.notification.NotificationUtil;
import org.schabi.newpipe.player.ui.PlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.util.text.LongPressLinkMovementMethod;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda3 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Player$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((PlayerUi) obj).onBuffering();
                break;
            case 1:
                ((PlayerUi) obj).destroyPlayer();
                break;
            case 2:
                ((PlayerUi) obj).onPlaying();
                break;
            case 3:
                ((PlayerUi) obj).smoothStopForImmediateReusing();
                break;
            case 4:
                ((PlayerUi) obj).onPlayQueueEdited();
                break;
            case 5:
                ((PlayerUi) obj).initPlayback();
                break;
            case 6:
                ((PlayerUi) obj).initPlayer();
                break;
            case 7:
                ((PlayerUi) obj).onPrepared();
                break;
            case 8:
                NotificationUtil notificationUtil = ((NotificationPlayerUi) obj).notificationUtil;
                if (notificationUtil.notificationBuilder == null) {
                    notificationUtil.notificationBuilder = notificationUtil.createNotification();
                }
                notificationUtil.updateNotification();
                NotificationUtil.startForeground(notificationUtil.player.service, notificationUtil.notificationBuilder.build());
                break;
            case 9:
                ((VideoPlayerUi) obj).hideControls(0L, 0L);
                break;
            case 10:
                ((PlayerServiceEventListener) obj).onMoreOptionsLongClicked();
                break;
            case 11:
                Window window = (Window) obj;
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
                window.getDecorView().setSystemUiVisibility(1792);
                window.clearFlags(1024);
                break;
            case 12:
                ((PlayerServiceEventListener) obj).hideSystemUiIfNeeded();
                break;
            case 13:
                ((PlayerServiceEventListener) obj).onScreenRotationButtonClicked();
                break;
            case 14:
                ((PlayerServiceEventListener) obj).onViewCreated();
                break;
            case 15:
                PlayerUi playerUi = (PlayerUi) obj;
                playerUi.destroyPlayer();
                playerUi.destroy();
                break;
            case 16:
                ((ExoPlayer) obj).clearVideoSurface();
                break;
            default:
                TextView textView = (TextView) obj;
                if (LongPressLinkMovementMethod.instance == null) {
                    LongPressLinkMovementMethod longPressLinkMovementMethod = new LongPressLinkMovementMethod();
                    longPressLinkMovementMethod.isLongPressed = false;
                    LongPressLinkMovementMethod.instance = longPressLinkMovementMethod;
                    longPressLinkMovementMethod.longClickHandler = new Handler(Looper.myLooper());
                }
                textView.setMovementMethod(LongPressLinkMovementMethod.instance);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
