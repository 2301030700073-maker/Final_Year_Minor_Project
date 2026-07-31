package com.google.android.exoplayer2.ext.mediasession;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class RepeatModeActionProvider implements MediaSessionConnector.CustomActionProvider {
    private static final String ACTION_REPEAT_MODE = "ACTION_EXO_REPEAT_MODE";
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 3;
    private final CharSequence repeatAllDescription;
    private final CharSequence repeatOffDescription;
    private final CharSequence repeatOneDescription;
    private final int repeatToggleModes;

    public RepeatModeActionProvider(Context context, int i) {
        this.repeatToggleModes = i;
        this.repeatAllDescription = context.getString(R.string.exo_media_action_repeat_all_description);
        this.repeatOneDescription = context.getString(R.string.exo_media_action_repeat_one_description);
        this.repeatOffDescription = context.getString(R.string.exo_media_action_repeat_off_description);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.CustomActionProvider
    public PlaybackStateCompat.CustomAction getCustomAction(Player player) {
        CharSequence charSequence;
        int i;
        int repeatMode = player.getRepeatMode();
        if (repeatMode == 1) {
            charSequence = this.repeatOneDescription;
            i = R.drawable.exo_media_action_repeat_one;
        } else if (repeatMode != 2) {
            charSequence = this.repeatOffDescription;
            i = R.drawable.exo_media_action_repeat_off;
        } else {
            charSequence = this.repeatAllDescription;
            i = R.drawable.exo_media_action_repeat_all;
        }
        if (TextUtils.isEmpty(ACTION_REPEAT_MODE)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("You must specify an action to build a CustomAction");
            return null;
        }
        if (TextUtils.isEmpty(charSequence)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("You must specify a name to build a CustomAction");
            return null;
        }
        if (i != 0) {
            return new PlaybackStateCompat.CustomAction(ACTION_REPEAT_MODE, charSequence, i, null);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("You must specify an icon resource id to build a CustomAction");
        return null;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.CustomActionProvider
    public void onCustomAction(Player player, String str, Bundle bundle) {
        int repeatMode = player.getRepeatMode();
        int nextRepeatMode = RepeatModeUtil.getNextRepeatMode(repeatMode, this.repeatToggleModes);
        if (repeatMode != nextRepeatMode) {
            player.setRepeatMode(nextRepeatMode);
        }
    }

    public RepeatModeActionProvider(Context context) {
        this(context, 3);
    }
}
