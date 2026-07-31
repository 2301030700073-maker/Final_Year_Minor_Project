package org.schabi.newpipe.fragments.list.channel;

import android.text.TextUtils;
import android.view.View;
import androidx.sqlite.SQLite;
import org.schabi.newpipe.error.ErrorUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChannelFragment$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ChannelFragment f$0;

    public /* synthetic */ ChannelFragment$$ExternalSyntheticLambda2(ChannelFragment channelFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = channelFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        ChannelFragment channelFragment = this.f$0;
        switch (i) {
            case 0:
                if (!TextUtils.isEmpty(channelFragment.currentInfo.getParentChannelUrl())) {
                    try {
                        SQLite.openChannelFragment(channelFragment.getFM(), channelFragment.currentInfo.getServiceId(), channelFragment.currentInfo.getParentChannelUrl(), channelFragment.currentInfo.getParentChannelName());
                        break;
                    } catch (Exception e) {
                        ErrorUtil.showUiErrorSnackbar(channelFragment, "Opening channel fragment", e);
                        return;
                    }
                }
                break;
            default:
                int i2 = ChannelFragment.$r8$clinit;
                channelFragment.setNotify(true);
                break;
        }
    }
}
