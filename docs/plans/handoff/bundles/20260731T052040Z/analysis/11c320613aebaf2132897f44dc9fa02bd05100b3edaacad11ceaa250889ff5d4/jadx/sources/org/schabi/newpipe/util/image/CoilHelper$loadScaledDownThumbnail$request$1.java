package org.schabi.newpipe.util.image;

import android.content.Context;
import androidx.compose.ui.node.Owner;
import kotlin.jvm.internal.Reflection;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CoilHelper$loadScaledDownThumbnail$request$1 {
    public final /* synthetic */ Context $context;

    public CoilHelper$loadScaledDownThumbnail$request$1(PlayerService playerService) {
        this.$context = playerService;
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof CoilHelper$loadScaledDownThumbnail$request$1);
    }

    public final int hashCode() {
        return -1777082038;
    }

    public final String toString() {
        return Owner.CC.m$1(Reflection.getOrCreateKotlinClass(CoilHelper$loadScaledDownThumbnail$request$1.class).getSimpleName(), "(cacheKey=COIL_PLAYER_THUMBNAIL_TRANSFORMATION_KEY)");
    }
}
