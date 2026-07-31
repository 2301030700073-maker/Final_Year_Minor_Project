package org.schabi.newpipe.player.ui;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.sqlite.SQLite;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.helper.PlaybackParameterDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MainPlayerUi$$ExternalSyntheticLambda16 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MainPlayerUi f$0;

    public /* synthetic */ MainPlayerUi$$ExternalSyntheticLambda16(MainPlayerUi mainPlayerUi, int i) {
        this.$r8$classId = i;
        this.f$0 = mainPlayerUi;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        MainPlayerUi mainPlayerUi = this.f$0;
        switch (i) {
            case 0:
                Player player = mainPlayerUi.player;
                player.setRecovery();
                SQLite.playOnPopupPlayer((AppCompatActivity) obj, player.playQueue, true);
                break;
            case 1:
                final Player player2 = mainPlayerUi.player;
                PlaybackParameterDialog.newInstance(player2.getPlaybackParameters().speed, player2.getPlaybackParameters().pitch, player2.getPlaybackSkipSilence(), new PlaybackParameterDialog.Callback() { // from class: org.schabi.newpipe.player.ui.MainPlayerUi$$ExternalSyntheticLambda26
                    @Override // org.schabi.newpipe.player.helper.PlaybackParameterDialog.Callback
                    public final void onPlaybackParameterChanged(float f, float f2, boolean z) {
                        Player.this.setPlaybackParameters(f, f2, z);
                    }
                }).show(((AppCompatActivity) obj).getSupportFragmentManager(), null);
                break;
            default:
                PlaylistDialog.showForPlayQueue(mainPlayerUi.player, (FragmentManager) obj);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
