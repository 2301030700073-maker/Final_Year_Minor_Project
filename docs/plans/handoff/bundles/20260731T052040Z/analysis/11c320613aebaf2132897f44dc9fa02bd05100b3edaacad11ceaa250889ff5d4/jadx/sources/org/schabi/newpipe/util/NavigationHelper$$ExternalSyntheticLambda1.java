package org.schabi.newpipe.util;

import android.content.Context;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationHelper$$ExternalSyntheticLambda1 {
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ PlayerType f$3;
    public final /* synthetic */ Context f$4;
    public final /* synthetic */ int f$5;
    public final /* synthetic */ String f$6;
    public final /* synthetic */ PlayQueue f$7;

    public /* synthetic */ NavigationHelper$$ExternalSyntheticLambda1(boolean z, boolean z2, String str, PlayerType playerType, Context context, int i, String str2, PlayQueue playQueue) {
        this.f$0 = z;
        this.f$1 = z2;
        this.f$2 = str;
        this.f$3 = playerType;
        this.f$4 = context;
        this.f$5 = i;
        this.f$6 = str2;
        this.f$7 = playQueue;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003c, code lost:
    
        if (androidx.preference.PreferenceManager.getDefaultSharedPreferences(r6).getBoolean(r6.getString(org.schabi.newpipe.R.string.start_main_player_fullscreen_key), false) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run(org.schabi.newpipe.fragments.detail.VideoDetailFragment r7) {
        /*
            r6 = this;
            androidx.fragment.app.FragmentActivity r0 = r7.requireActivity()
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r2 = "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"
            r1.<init>(r2)
            r0.sendBroadcast(r1)
            boolean r0 = r6.f$0
            r7.setAutoPlay(r0)
            org.schabi.newpipe.player.PlayerType r0 = org.schabi.newpipe.player.PlayerType.POPUP
            boolean r1 = r6.f$1
            java.lang.String r2 = r6.f$2
            org.schabi.newpipe.player.PlayerType r3 = r6.f$3
            r4 = 1
            if (r1 == 0) goto L43
            java.lang.String r5 = r7.getUrl()
            boolean r5 = android.text.TextUtils.equals(r5, r2)
            if (r5 == 0) goto L43
            if (r3 == r0) goto L3e
            android.content.Context r6 = r6.f$4
            android.content.SharedPreferences r0 = androidx.preference.PreferenceManager.getDefaultSharedPreferences(r6)
            r1 = 2131952834(0x7f1304c2, float:1.9542122E38)
            java.lang.String r6 = r6.getString(r1)
            r1 = 0
            boolean r6 = r0.getBoolean(r6, r1)
            if (r6 == 0) goto L3f
        L3e:
            r1 = r4
        L3f:
            r7.openVideoPlayer(r1)
            goto L52
        L43:
            if (r1 == 0) goto L49
            if (r3 != r0) goto L49
            r7.forceFullscreen = r4
        L49:
            int r0 = r6.f$5
            java.lang.String r1 = r6.f$6
            org.schabi.newpipe.player.playqueue.PlayQueue r6 = r6.f$7
            r7.selectAndLoadVideo(r0, r2, r1, r6)
        L52:
            org.schabi.newpipe.databinding.FragmentVideoDetailBinding r6 = r7.binding
            com.google.android.material.appbar.AppBarLayout r6 = r6.appBarLayout
            r6.setExpanded(r4, r4, r4)
            r7.updateTabLayoutVisibility()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda1.run(org.schabi.newpipe.fragments.detail.VideoDetailFragment):void");
    }
}
