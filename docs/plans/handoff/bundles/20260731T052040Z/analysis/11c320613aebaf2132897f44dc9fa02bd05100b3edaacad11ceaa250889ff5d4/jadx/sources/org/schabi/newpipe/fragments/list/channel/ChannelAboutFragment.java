package org.schabi.newpipe.fragments.list.channel;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.List;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.fragments.detail.BaseDescriptionFragment;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ChannelAboutFragment extends BaseDescriptionFragment {
    protected ChannelInfo channelInfo;

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final Description getDescription() {
        return new Description(this.channelInfo.getDescription(), 3);
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final StreamingService getService() {
        return this.channelInfo.getService();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final int getServiceId() {
        return this.channelInfo.getServiceId();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final String getStreamUrl() {
        return null;
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final List getTags() {
        return this.channelInfo.getTags();
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        ((ConstraintLayout) this.binding.resolver).setPadding(0, DeviceUtils.dpToPx(requireContext(), 8), 0, 0);
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final void setupMetadata(LayoutInflater layoutInflater, LinearLayout linearLayout) {
        ChannelAboutFragment channelAboutFragment;
        LayoutInflater layoutInflater2;
        LinearLayout linearLayout2;
        ((NewPipeTextView) this.binding.optionRegistry).setVisibility(8);
        ChannelInfo channelInfo = this.channelInfo;
        if (channelInfo == null) {
            return;
        }
        if (channelInfo.getSubscriberCount() != -1) {
            channelAboutFragment = this;
            layoutInflater2 = layoutInflater;
            linearLayout2 = linearLayout;
            channelAboutFragment.addMetadataItem(layoutInflater2, linearLayout2, false, R.string.metadata_subscribers, Localization.localizeNumber(this.channelInfo.getSubscriberCount()));
        } else {
            channelAboutFragment = this;
            layoutInflater2 = layoutInflater;
            linearLayout2 = linearLayout;
        }
        channelAboutFragment.addImagesMetadataItem(layoutInflater2, linearLayout2, R.string.metadata_avatars, channelAboutFragment.channelInfo.getAvatars());
        channelAboutFragment.addImagesMetadataItem(layoutInflater2, linearLayout2, R.string.metadata_banners, channelAboutFragment.channelInfo.getBanners());
    }
}
