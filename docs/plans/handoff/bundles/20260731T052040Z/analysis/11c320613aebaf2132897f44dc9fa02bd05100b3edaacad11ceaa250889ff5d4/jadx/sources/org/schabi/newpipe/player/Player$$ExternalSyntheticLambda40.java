package org.schabi.newpipe.player;

import android.content.Intent;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import androidx.media.session.MediaButtonReceiver;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi;
import org.schabi.newpipe.player.ui.PlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda40 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Intent f$0;

    public /* synthetic */ Player$$ExternalSyntheticLambda40(Intent intent, int i) {
        this.$r8$classId = i;
        this.f$0 = intent;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        Intent intent = this.f$0;
        switch (i) {
            case 0:
                ((PlayerUi) obj).onBroadcastReceived(intent);
                break;
            default:
                int i2 = PlayerService.$r8$clinit;
                MediaSessionCompat mediaSessionCompat = ((MediaSessionPlayerUi) obj).mediaSession;
                int i3 = MediaButtonReceiver.$r8$clinit;
                if (mediaSessionCompat != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
                    KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                    MediaControllerCompat mediaControllerCompat = mediaSessionCompat.mController;
                    if (keyEvent == null) {
                        mediaControllerCompat.getClass();
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("KeyEvent may not be null");
                        break;
                    } else {
                        mediaControllerCompat.mImpl.mControllerFwk.dispatchMediaButtonEvent(keyEvent);
                        break;
                    }
                }
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
