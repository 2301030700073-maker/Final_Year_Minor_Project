package org.schabi.newpipe.settings;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AlertDialog;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.views.NewPipeEditText;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class SettingsActivity$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SettingsActivity$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                int i2 = SettingsActivity.$r8$clinit;
                ((SettingsActivity) obj).searchEditText.setText("");
                break;
            case 1:
                PeertubeInstanceListFragment peertubeInstanceListFragment = (PeertubeInstanceListFragment) obj;
                Context requireContext = peertubeInstanceListFragment.requireContext();
                TokenData inflate = TokenData.inflate(peertubeInstanceListFragment.getLayoutInflater());
                NewPipeEditText newPipeEditText = (NewPipeEditText) inflate.builder;
                newPipeEditText.setInputType(17);
                newPipeEditText.setHint(R.string.peertube_instance_add_help);
                AlertDialog.Builder builder = new AlertDialog.Builder(requireContext);
                builder.setTitle(R.string.peertube_instance_add_title);
                builder.P.mIconId = R.drawable.ic_placeholder_peertube;
                builder.setView((RelativeLayout) inflate.value).setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new FeedFragment$$ExternalSyntheticLambda9(peertubeInstanceListFragment, inflate, 10)).show();
                break;
            default:
                int i3 = VideoAudioSettingsFragment.$r8$clinit;
                Utility.checkSystemAlertWindowPermission(((VideoAudioSettingsFragment) obj).getContext());
                break;
        }
    }
}
