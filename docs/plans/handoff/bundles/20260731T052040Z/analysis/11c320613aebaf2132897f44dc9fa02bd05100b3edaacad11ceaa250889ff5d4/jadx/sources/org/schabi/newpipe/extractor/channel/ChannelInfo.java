package org.schabi.newpipe.extractor.channel;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChannelInfo extends Info {
    private List<Image> avatars;
    private List<Image> banners;
    private String description;
    private String[] donationLinks;
    private String feedUrl;
    private List<Image> parentChannelAvatars;
    private String parentChannelName;
    private String parentChannelUrl;
    private long subscriberCount;
    private List<ListLinkHandler> tabs;
    private List<String> tags;
    private boolean verified;

    public static ChannelInfo getInfo(StreamingService streamingService, String str) {
        ListExtractor channelExtractor = streamingService.getChannelExtractor(streamingService.getChannelLHFactory().fromUrl(str));
        channelExtractor.fetchPage();
        ChannelInfo channelInfo = new ChannelInfo(channelExtractor.service.serviceId, channelExtractor.getId(), channelExtractor.getUrl(), channelExtractor.linkHandler.getOriginalUrl(), channelExtractor.getName());
        channelInfo.subscriberCount = -1L;
        List list = Collections.EMPTY_LIST;
        channelInfo.avatars = list;
        channelInfo.banners = list;
        channelInfo.parentChannelAvatars = list;
        channelInfo.tabs = list;
        channelInfo.tags = list;
        try {
            channelInfo.avatars = channelExtractor.getAvatars();
        } catch (Exception e) {
            channelInfo.addError(e);
        }
        try {
            channelInfo.banners = channelExtractor.getBanners();
        } catch (Exception e2) {
            channelInfo.addError(e2);
        }
        try {
            channelInfo.feedUrl = channelExtractor.getFeedUrl();
        } catch (Exception e3) {
            channelInfo.addError(e3);
        }
        try {
            channelInfo.subscriberCount = channelExtractor.getSubscriberCount();
        } catch (Exception e4) {
            channelInfo.addError(e4);
        }
        try {
            channelInfo.description = channelExtractor.getDescription();
        } catch (Exception e5) {
            channelInfo.addError(e5);
        }
        try {
            channelInfo.parentChannelName = channelExtractor.getParentChannelName();
        } catch (Exception e6) {
            channelInfo.addError(e6);
        }
        try {
            channelInfo.parentChannelUrl = channelExtractor.getParentChannelUrl();
        } catch (Exception e7) {
            channelInfo.addError(e7);
        }
        try {
            channelInfo.parentChannelAvatars = channelExtractor.getParentChannelAvatars();
        } catch (Exception e8) {
            channelInfo.addError(e8);
        }
        try {
            channelInfo.verified = channelExtractor.isVerified();
        } catch (Exception e9) {
            channelInfo.addError(e9);
        }
        try {
            channelInfo.tabs = channelExtractor.getTabs();
        } catch (Exception e10) {
            channelInfo.addError(e10);
        }
        try {
            channelInfo.tags = channelExtractor.getTags();
        } catch (Exception e11) {
            channelInfo.addError(e11);
        }
        return channelInfo;
    }

    public final List getAvatars() {
        return this.avatars;
    }

    public final List getBanners() {
        return this.banners;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getFeedUrl() {
        return this.feedUrl;
    }

    public final List getParentChannelAvatars() {
        return this.parentChannelAvatars;
    }

    public final String getParentChannelName() {
        return this.parentChannelName;
    }

    public final String getParentChannelUrl() {
        return this.parentChannelUrl;
    }

    public final long getSubscriberCount() {
        return this.subscriberCount;
    }

    public final List getTabs() {
        return this.tabs;
    }

    public final List getTags() {
        return this.tags;
    }
}
