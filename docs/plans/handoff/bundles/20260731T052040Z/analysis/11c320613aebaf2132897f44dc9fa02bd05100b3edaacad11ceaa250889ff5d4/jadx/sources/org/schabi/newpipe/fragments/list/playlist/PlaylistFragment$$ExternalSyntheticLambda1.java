package org.schabi.newpipe.fragments.list.playlist;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlaylistFragment$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistFragment f$0;

    public /* synthetic */ PlaylistFragment$$ExternalSyntheticLambda1(PlaylistFragment playlistFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistFragment;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        PlaylistFragment playlistFragment = this.f$0;
        switch (i) {
            case 0:
                ((NewPipeTextView) playlistFragment.headerBinding.playlistDescriptionReadMore).setText(Boolean.TRUE.equals((Boolean) obj) ? R.string.show_more : R.string.show_less);
                break;
            default:
                int i2 = PlaylistFragment.$r8$clinit;
                ((PlaylistDialog) obj).show(playlistFragment.getFM(), playlistFragment.TAG);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
