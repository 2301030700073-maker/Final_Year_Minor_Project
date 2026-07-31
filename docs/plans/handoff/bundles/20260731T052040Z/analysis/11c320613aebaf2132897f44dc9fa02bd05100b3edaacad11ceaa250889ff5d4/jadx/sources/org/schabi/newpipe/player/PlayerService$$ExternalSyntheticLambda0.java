package org.schabi.newpipe.player;

import androidx.core.app.ActivityRecreator;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;
import coil3.ComponentRegistry;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlayerService$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlayerService f$0;

    public /* synthetic */ PlayerService$$ExternalSyntheticLambda0(PlayerService playerService, int i) {
        this.$r8$classId = i;
        this.f$0 = playerService;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        PlayerService playerService = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                if (str == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("parentId cannot be null in notifyChildrenChanged");
                    break;
                } else {
                    ComponentRegistry.Builder builder = playerService.mImpl;
                    ((MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23) builder.mappers).notifyChildrenChanged(str);
                    ((MediaBrowserServiceCompat) builder.lazyFetcherFactories).mHandler.post(new ActivityRecreator.AnonymousClass1(6, builder, str, false));
                    break;
                }
            default:
                Player player = playerService.player;
                if (player != null && !player.exoPlayerIsNull()) {
                    player.simpleExoPlayer.prepare();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
