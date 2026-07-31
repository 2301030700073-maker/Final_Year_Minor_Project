package org.schabi.newpipe.extractor.services.soundcloud.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.app.NotificationCompat$Style;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.subscription.SubscriptionExtractor$InvalidSourceException;
import org.schabi.newpipe.extractor.subscription.SubscriptionItem;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudSubscriptionExtractor extends NotificationCompat$Style {
    @Override // androidx.core.app.NotificationCompat$Style
    public final List fromChannelUrl(String str) {
        StreamingService streamingService = (StreamingService) this.mBigContentTitle;
        if (str == null) {
            throw new SubscriptionExtractor$InvalidSourceException("Channel url is null", null);
        }
        try {
            ListLinkHandlerFactory channelLHFactory = streamingService.getChannelLHFactory();
            String replaceHttpWithHttps = Utils.replaceHttpWithHttps(str);
            if (!replaceHttpWithHttps.startsWith("https://")) {
                str = !replaceHttpWithHttps.contains("soundcloud.com/") ? "https://soundcloud.com/".concat(replaceHttpWithHttps) : "https://".concat(replaceHttpWithHttps);
            }
            String m = Owner.CC.m("https://api-v2.soundcloud.com/users/", channelLHFactory.fromUrl(str).getId(), "/followings?client_id=", SoundcloudParsingHelper.clientId(), "&limit=200");
            StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 1);
            for (String usersFromApi = SoundcloudParsingHelper.getUsersFromApi(streamInfoItemsCollector, m); !usersFromApi.isEmpty() && streamInfoItemsCollector.getItems().size() < 2500; usersFromApi = SoundcloudParsingHelper.getUsersFromApi(streamInfoItemsCollector, usersFromApi)) {
            }
            List<ChannelInfoItem> items = streamInfoItemsCollector.getItems();
            ArrayList arrayList = new ArrayList(items.size());
            for (ChannelInfoItem channelInfoItem : items) {
                arrayList.add(new SubscriptionItem(channelInfoItem.getUrl(), channelInfoItem.getServiceId(), channelInfoItem.getName()));
            }
            return arrayList;
        } catch (ExtractionException e) {
            throw new SubscriptionExtractor$InvalidSourceException(null, e);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getRelatedUrl() {
        return "https://soundcloud.com/you";
    }
}
