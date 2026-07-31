package org.schabi.newpipe.player.mediasession;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import java.lang.ref.WeakReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.notification.NotificationActionData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SessionConnectorActionProvider implements MediaSessionConnector.CustomActionProvider {
    public final WeakReference context;
    public final NotificationActionData data;

    public SessionConnectorActionProvider(NotificationActionData notificationActionData, PlayerService playerService) {
        this.data = notificationActionData;
        this.context = new WeakReference(playerService);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.CustomActionProvider
    public final PlaybackStateCompat.CustomAction getCustomAction(Player player) {
        NotificationActionData notificationActionData = this.data;
        String str = notificationActionData.action;
        String str2 = notificationActionData.name;
        int i = notificationActionData.icon;
        if (TextUtils.isEmpty(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("You must specify an action to build a CustomAction");
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("You must specify a name to build a CustomAction");
            return null;
        }
        if (i != 0) {
            return new PlaybackStateCompat.CustomAction(str, str2, i, null);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("You must specify an icon resource id to build a CustomAction");
        return null;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.CustomActionProvider
    public final void onCustomAction(Player player, String str, Bundle bundle) {
        Context context = (Context) this.context.get();
        if (context != null) {
            context.sendBroadcast(new Intent(str));
        }
    }
}
