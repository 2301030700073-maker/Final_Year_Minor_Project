package org.schabi.newpipe.info_list.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import coil3.ComponentRegistry;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.util.Localization;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class StreamInfoItemHolder extends StreamMiniInfoItemHolder {
    public final TextView itemAdditionalDetails;

    public StreamInfoItemHolder(ComponentRegistry.Builder builder, int i, ViewGroup viewGroup) {
        super(builder, i, viewGroup);
        this.itemAdditionalDetails = (TextView) this.itemView.findViewById(R.id.itemAdditionalDetails);
    }

    @Override // org.schabi.newpipe.info_list.holder.StreamMiniInfoItemHolder, org.schabi.newpipe.info_list.holder.InfoItemHolder
    public final void updateFromItem(InfoItem infoItem, PlaylistHeaderBinding playlistHeaderBinding) {
        String str;
        super.updateFromItem(infoItem, playlistHeaderBinding);
        if (infoItem instanceof StreamInfoItem) {
            StreamInfoItem streamInfoItem = (StreamInfoItem) infoItem;
            long viewCount = streamInfoItem.getViewCount();
            ComponentRegistry.Builder builder = this.itemBuilder;
            if (viewCount < 0) {
                str = "";
            } else if (streamInfoItem.getStreamType().equals(StreamType.AUDIO_LIVE_STREAM)) {
                Context context = (Context) builder.interceptors;
                long viewCount2 = streamInfoItem.getViewCount();
                str = Localization.getQuantity(context, R.plurals.listening, R.string.no_one_listening, viewCount2, Localization.shortCount(context, viewCount2));
            } else if (streamInfoItem.getStreamType().equals(StreamType.LIVE_STREAM)) {
                Context context2 = (Context) builder.interceptors;
                long viewCount3 = streamInfoItem.getViewCount();
                str = Localization.getQuantity(context2, R.plurals.watching, R.string.no_one_watching, viewCount3, Localization.shortCount(context2, viewCount3));
            } else {
                Context context3 = (Context) builder.interceptors;
                long viewCount4 = streamInfoItem.getViewCount();
                str = Localization.getQuantity(context3, R.plurals.views, R.string.no_views, viewCount4, Localization.shortCount(context3, viewCount4));
            }
            Object obj = builder.interceptors;
            DateWrapper uploadDate = streamInfoItem.getUploadDate();
            String textualUploadDate = streamInfoItem.getTextualUploadDate();
            String str2 = Localization.TAG;
            if (uploadDate != null) {
                int i = MainActivity.$r8$clinit;
                textualUploadDate = Localization.prettyTime.formatUnrounded(uploadDate.offsetDateTime());
            }
            if (!TextUtils.isEmpty(textualUploadDate)) {
                str = str.isEmpty() ? textualUploadDate : Localization.concatenateStrings(str, textualUploadDate);
            }
            this.itemAdditionalDetails.setText(str);
        }
    }
}
