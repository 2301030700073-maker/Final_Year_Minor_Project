package org.schabi.newpipe;

import androidx.fragment.app.FragmentManager;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.local.dialog.PlaylistDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class QueueItemMenuUtil$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FragmentManager f$0;

    public /* synthetic */ QueueItemMenuUtil$$ExternalSyntheticLambda1(FragmentManager fragmentManager, int i) {
        this.$r8$classId = i;
        this.f$0 = fragmentManager;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        PlaylistDialog playlistDialog = (PlaylistDialog) obj;
        switch (this.$r8$classId) {
            case 0:
                playlistDialog.show(this.f$0, "QueueItemMenuUtil@append_playlist");
                break;
            default:
                playlistDialog.show(this.f$0, "PlaylistDialog");
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
