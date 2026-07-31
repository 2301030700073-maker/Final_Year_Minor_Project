package org.schabi.newpipe.player.ui;

import android.view.MenuItem;
import androidx.appcompat.app.AlertDialog;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import us.shandian.giga.ui.fragment.MissionsFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda40 implements MenuItem.OnMenuItemClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda40(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                VideoPlayerUi videoPlayerUi = (VideoPlayerUi) obj;
                Player player = videoPlayerUi.player;
                int captionRendererIndex = player.getCaptionRendererIndex();
                if (captionRendererIndex != -1) {
                    DefaultTrackSelector defaultTrackSelector = player.trackSelector;
                    defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().setRendererDisabled(captionRendererIndex, true));
                }
                player.prefs.edit().remove(videoPlayerUi.context.getString(R.string.caption_user_set_key)).apply();
                break;
            default:
                ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) obj;
                AlertDialog.Builder builder = new AlertDialog.Builder(chooseTabsFragment.requireContext());
                builder.setTitle(R.string.restore_defaults);
                builder.setMessage(R.string.restore_defaults_confirmation);
                builder.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new MissionsFragment$$ExternalSyntheticLambda1(chooseTabsFragment, 3)).show();
                break;
        }
        return true;
    }
}
