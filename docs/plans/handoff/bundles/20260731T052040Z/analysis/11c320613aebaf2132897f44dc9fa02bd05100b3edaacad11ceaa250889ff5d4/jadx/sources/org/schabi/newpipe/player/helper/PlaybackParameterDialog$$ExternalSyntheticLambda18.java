package org.schabi.newpipe.player.helper;

import android.widget.CompoundButton;
import android.widget.RadioButton;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.settings.PeertubeInstanceListFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlaybackParameterDialog$$ExternalSyntheticLambda18 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ PlaybackParameterDialog$$ExternalSyntheticLambda18(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = obj2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                PlaybackParameterDialog playbackParameterDialog = (PlaybackParameterDialog) obj2;
                PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog.requireContext()).edit().putBoolean(playbackParameterDialog.getString(R.string.playback_unhook_key), z).apply();
                ((PlayerHolder$$ExternalSyntheticLambda0) obj).s(Boolean.valueOf(z));
                break;
            default:
                PeertubeInstanceListFragment.InstanceListAdapter.TabViewHolder tabViewHolder = (PeertubeInstanceListFragment.InstanceListAdapter.TabViewHolder) obj2;
                PeertubeInstance peertubeInstance = (PeertubeInstance) obj;
                DrawerHeaderBinding drawerHeaderBinding = tabViewHolder.itemBinding;
                PeertubeInstanceListFragment.InstanceListAdapter instanceListAdapter = PeertubeInstanceListFragment.InstanceListAdapter.this;
                if (z) {
                    PeertubeInstanceListFragment peertubeInstanceListFragment = PeertubeInstanceListFragment.this;
                    Room.selectInstance(peertubeInstance, peertubeInstanceListFragment.requireContext());
                    peertubeInstanceListFragment.selectedInstance = peertubeInstance;
                    peertubeInstanceListFragment.sharedPreferences.edit().putBoolean("key_main_page_change", true).apply();
                    RadioButton radioButton = instanceListAdapter.lastChecked;
                    if (radioButton != null && radioButton != ((RadioButton) drawerHeaderBinding.drawerHeaderServiceView)) {
                        radioButton.setChecked(false);
                    }
                    instanceListAdapter.lastChecked = (RadioButton) drawerHeaderBinding.drawerHeaderServiceView;
                    break;
                }
                break;
        }
    }
}
