package org.schabi.newpipe.fragments.detail;

import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import j$.time.OffsetDateTime;
import j$.time.ZoneId;
import j$.time.format.DateTimeFormatter;
import j$.time.format.FormatStyle;
import java.util.List;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DescriptionFragment extends BaseDescriptionFragment {
    StreamInfo streamInfo;

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final Description getDescription() {
        return this.streamInfo.getDescription();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final StreamingService getService() {
        return this.streamInfo.getService();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final int getServiceId() {
        return this.streamInfo.getServiceId();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final String getStreamUrl() {
        return this.streamInfo.getUrl();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final List getTags() {
        return this.streamInfo.getTags();
    }

    @Override // org.schabi.newpipe.fragments.detail.BaseDescriptionFragment
    public final void setupMetadata(LayoutInflater layoutInflater, LinearLayout linearLayout) {
        StreamInfo streamInfo = this.streamInfo;
        int i = 0;
        if (streamInfo == null || streamInfo.getUploadDate() == null) {
            ((NewPipeTextView) this.binding.optionRegistry).setVisibility(8);
        } else {
            NewPipeTextView newPipeTextView = (NewPipeTextView) this.binding.optionRegistry;
            AppCompatActivity appCompatActivity = this.activity;
            OffsetDateTime offsetDateTime = this.streamInfo.getUploadDate().offsetDateTime();
            String str = Localization.TAG;
            newPipeTextView.setText(appCompatActivity.getString(R.string.upload_date_text, DateTimeFormatter.ofLocalizedDate(FormatStyle.MEDIUM).withLocale(Localization.getAppLocale()).format(offsetDateTime.atZoneSameInstant(ZoneId.systemDefault()))));
        }
        StreamInfo streamInfo2 = this.streamInfo;
        if (streamInfo2 == null) {
            return;
        }
        addMetadataItem(layoutInflater, linearLayout, false, R.string.metadata_category, streamInfo2.getCategory());
        addMetadataItem(layoutInflater, linearLayout, false, R.string.metadata_licence, this.streamInfo.getLicence());
        if (this.streamInfo.getPrivacy() != null) {
            int ordinal = this.streamInfo.getPrivacy().ordinal();
            if (ordinal == 0) {
                i = R.string.metadata_privacy_public;
            } else if (ordinal == 1) {
                i = R.string.metadata_privacy_unlisted;
            } else if (ordinal == 2) {
                i = R.string.metadata_privacy_private;
            } else if (ordinal == 3) {
                i = R.string.metadata_privacy_internal;
            }
            if (i != 0) {
                addMetadataItem(layoutInflater, linearLayout, false, R.string.metadata_privacy, getString(i));
            }
        }
        if (this.streamInfo.getAgeLimit() != 0) {
            addMetadataItem(layoutInflater, linearLayout, false, R.string.metadata_age_limit, String.valueOf(this.streamInfo.getAgeLimit()));
        }
        if (this.streamInfo.getLanguageInfo() != null) {
            addMetadataItem(layoutInflater, linearLayout, false, R.string.metadata_language, this.streamInfo.getLanguageInfo().getDisplayLanguage(Localization.getAppLocale()));
        }
        addMetadataItem(layoutInflater, linearLayout, true, R.string.metadata_support, this.streamInfo.getSupportInfo());
        addMetadataItem(layoutInflater, linearLayout, true, R.string.metadata_host, this.streamInfo.getHost());
        addImagesMetadataItem(layoutInflater, linearLayout, R.string.metadata_thumbnails, this.streamInfo.getThumbnails());
        addImagesMetadataItem(layoutInflater, linearLayout, R.string.metadata_uploader_avatars, this.streamInfo.getUploaderAvatars());
        addImagesMetadataItem(layoutInflater, linearLayout, R.string.metadata_subchannel_avatars, this.streamInfo.getSubChannelAvatars());
    }
}
