package org.schabi.newpipe.extractor.stream;

import androidx.compose.ui.Modifier;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamInfo extends Info {
    private int ageLimit;
    private List<AudioStream> audioStreams;
    private String category;
    private ContentAvailability contentAvailability;
    private String dashMpdUrl;
    private Description description;
    private long dislikeCount;
    private long duration;
    private String hlsUrl;
    private String host;
    private Locale language;
    private String licence;
    private long likeCount;
    private List<MetaInfo> metaInfo;
    private List<Frameset> previewFrames;
    private StreamExtractor$Privacy privacy;
    private List<InfoItem> relatedItems;
    private boolean shortFormContent;
    private long startPosition;
    private List<StreamSegment> streamSegments;
    private StreamType streamType;
    private List<Image> subChannelAvatars;
    private String subChannelName;
    private String subChannelUrl;
    private List<SubtitlesStream> subtitles;
    private String supportInfo;
    private List<String> tags;
    private String textualUploadDate;
    private List<Image> thumbnails;
    private DateWrapper uploadDate;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private long uploaderSubscriberCount;
    private String uploaderUrl;
    private boolean uploaderVerified;
    private List<VideoStream> videoOnlyStreams;
    private List<VideoStream> videoStreams;
    private long viewCount;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StreamExtractException extends ExtractionException {
    }

    public static StreamInfo extractImportantData(ListExtractor listExtractor) {
        String url = listExtractor.getUrl();
        StreamType streamType = listExtractor.getStreamType();
        String id = listExtractor.getId();
        String name = listExtractor.getName();
        int ageLimit = listExtractor.getAgeLimit();
        if (streamType == StreamType.NONE || Utils.isNullOrEmpty(url) || Utils.isNullOrEmpty(id) || name == null || ageLimit == -1) {
            throw new ExtractionException("Some important stream information was not given.");
        }
        StreamInfo streamInfo = new StreamInfo(listExtractor.service.serviceId, id, url, listExtractor.getOriginalUrl(), name);
        List list = Collections.EMPTY_LIST;
        streamInfo.thumbnails = list;
        streamInfo.duration = -1L;
        streamInfo.viewCount = -1L;
        streamInfo.likeCount = -1L;
        streamInfo.dislikeCount = -1L;
        streamInfo.uploaderName = "";
        streamInfo.uploaderUrl = "";
        streamInfo.uploaderAvatars = list;
        streamInfo.uploaderVerified = false;
        streamInfo.uploaderSubscriberCount = -1L;
        streamInfo.subChannelName = "";
        streamInfo.subChannelUrl = "";
        streamInfo.subChannelAvatars = list;
        streamInfo.videoStreams = list;
        streamInfo.audioStreams = list;
        streamInfo.videoOnlyStreams = list;
        streamInfo.dashMpdUrl = "";
        streamInfo.hlsUrl = "";
        streamInfo.relatedItems = list;
        streamInfo.startPosition = 0L;
        streamInfo.subtitles = list;
        streamInfo.host = "";
        streamInfo.category = "";
        streamInfo.licence = "";
        streamInfo.supportInfo = "";
        streamInfo.language = null;
        streamInfo.tags = list;
        streamInfo.streamSegments = list;
        streamInfo.metaInfo = list;
        streamInfo.shortFormContent = false;
        streamInfo.contentAvailability = ContentAvailability.AVAILABLE;
        streamInfo.previewFrames = list;
        streamInfo.streamType = streamType;
        streamInfo.ageLimit = ageLimit;
        JavaScript.d("Created {}", streamInfo);
        return streamInfo;
    }

    public static void extractOptionalData(StreamInfo streamInfo, ListExtractor listExtractor) {
        List<InfoItem> list;
        try {
            streamInfo.thumbnails = listExtractor.getThumbnails();
        } catch (Exception e) {
            streamInfo.addError(e);
        }
        try {
            streamInfo.duration = listExtractor.getLength();
        } catch (Exception e2) {
            streamInfo.addError(e2);
        }
        try {
            streamInfo.uploaderName = listExtractor.getUploaderName();
        } catch (Exception e3) {
            streamInfo.addError(e3);
        }
        try {
            streamInfo.uploaderUrl = listExtractor.getUploaderUrl();
        } catch (Exception e4) {
            streamInfo.addError(e4);
        }
        try {
            streamInfo.uploaderAvatars = listExtractor.getUploaderAvatars();
        } catch (Exception e5) {
            streamInfo.addError(e5);
        }
        try {
            streamInfo.uploaderVerified = listExtractor.isUploaderVerified();
        } catch (Exception e6) {
            streamInfo.addError(e6);
        }
        try {
            streamInfo.uploaderSubscriberCount = listExtractor.getUploaderSubscriberCount();
        } catch (Exception e7) {
            streamInfo.addError(e7);
        }
        try {
            streamInfo.subChannelName = listExtractor.getSubChannelName();
        } catch (Exception e8) {
            streamInfo.addError(e8);
        }
        try {
            streamInfo.subChannelUrl = listExtractor.getSubChannelUrl();
        } catch (Exception e9) {
            streamInfo.addError(e9);
        }
        try {
            streamInfo.subChannelAvatars = listExtractor.getSubChannelAvatars();
        } catch (Exception e10) {
            streamInfo.addError(e10);
        }
        try {
            streamInfo.description = listExtractor.mo861getDescription();
        } catch (Exception e11) {
            streamInfo.addError(e11);
        }
        try {
            streamInfo.viewCount = listExtractor.getViewCount();
        } catch (Exception e12) {
            streamInfo.addError(e12);
        }
        try {
            streamInfo.textualUploadDate = listExtractor.getTextualUploadDate();
        } catch (Exception e13) {
            streamInfo.addError(e13);
        }
        try {
            streamInfo.uploadDate = listExtractor.getUploadDate();
        } catch (Exception e14) {
            streamInfo.addError(e14);
        }
        try {
            streamInfo.startPosition = listExtractor.getTimeStamp();
        } catch (Exception e15) {
            streamInfo.addError(e15);
        }
        try {
            streamInfo.likeCount = listExtractor.getLikeCount();
        } catch (Exception e16) {
            streamInfo.addError(e16);
        }
        try {
            streamInfo.dislikeCount = listExtractor.getDislikeCount();
        } catch (Exception e17) {
            streamInfo.addError(e17);
        }
        try {
            streamInfo.subtitles = listExtractor.getSubtitlesDefault();
        } catch (Exception e18) {
            streamInfo.addError(e18);
        }
        try {
            streamInfo.host = listExtractor.getHost();
        } catch (Exception e19) {
            streamInfo.addError(e19);
        }
        try {
            streamInfo.privacy = listExtractor.getPrivacy();
        } catch (Exception e20) {
            streamInfo.addError(e20);
        }
        try {
            streamInfo.category = listExtractor.getCategory();
        } catch (Exception e21) {
            streamInfo.addError(e21);
        }
        try {
            streamInfo.licence = listExtractor.getLicence();
        } catch (Exception e22) {
            streamInfo.addError(e22);
        }
        try {
            streamInfo.language = listExtractor.getLanguageInfo();
        } catch (Exception e23) {
            streamInfo.addError(e23);
        }
        try {
            streamInfo.tags = listExtractor.getTags();
        } catch (Exception e24) {
            streamInfo.addError(e24);
        }
        try {
            streamInfo.supportInfo = listExtractor.getSupportInfo();
        } catch (Exception e25) {
            streamInfo.addError(e25);
        }
        try {
            streamInfo.streamSegments = listExtractor.getStreamSegments();
        } catch (Exception e26) {
            streamInfo.addError(e26);
        }
        try {
            streamInfo.metaInfo = listExtractor.getMetaInfo();
        } catch (Exception e27) {
            streamInfo.addError(e27);
        }
        try {
            streamInfo.previewFrames = listExtractor.getFrames();
        } catch (Exception e28) {
            streamInfo.addError(e28);
        }
        try {
            streamInfo.shortFormContent = false;
        } catch (Exception e29) {
            streamInfo.addError(e29);
        }
        try {
            streamInfo.contentAvailability = ContentAvailability.UNKNOWN;
        } catch (Exception e30) {
            streamInfo.addError(e30);
        }
        try {
            InfoItemsCollector relatedItems = listExtractor.getRelatedItems();
            if (relatedItems == null) {
                list = Collections.EMPTY_LIST;
            } else {
                streamInfo.addAllErrors(relatedItems.getErrors());
                list = relatedItems.getItems();
            }
        } catch (Exception e31) {
            streamInfo.addError(e31);
            list = Collections.EMPTY_LIST;
        }
        streamInfo.relatedItems = list;
    }

    public static void extractStreams(StreamInfo streamInfo, ListExtractor listExtractor) {
        try {
            streamInfo.dashMpdUrl = listExtractor.getDashMpdUrl();
        } catch (Exception e) {
            streamInfo.addError(new ExtractionException("Couldn't get DASH manifest", e));
        }
        try {
            streamInfo.hlsUrl = listExtractor.getHlsUrl();
        } catch (Exception e2) {
            streamInfo.addError(new ExtractionException("Couldn't get HLS manifest", e2));
        }
        try {
            streamInfo.audioStreams = listExtractor.getAudioStreams();
        } catch (ContentNotSupportedException e3) {
            throw e3;
        } catch (Exception e4) {
            streamInfo.addError(new ExtractionException("Couldn't get audio streams", e4));
        }
        try {
            streamInfo.videoStreams = listExtractor.getVideoStreams();
        } catch (Exception e5) {
            streamInfo.addError(new ExtractionException("Couldn't get video streams", e5));
        }
        try {
            streamInfo.videoOnlyStreams = listExtractor.getVideoOnlyStreams();
        } catch (Exception e6) {
            streamInfo.addError(new ExtractionException("Couldn't get video only streams", e6));
        }
        if (streamInfo.videoStreams.isEmpty() && streamInfo.audioStreams.isEmpty() && Utils.isNullOrEmpty(streamInfo.dashMpdUrl) && Utils.isNullOrEmpty(streamInfo.hlsUrl)) {
            throw new StreamExtractException("Could not get any stream. See error variable to get further details.");
        }
    }

    public final int getAgeLimit() {
        return this.ageLimit;
    }

    public final List getAudioStreams() {
        return this.audioStreams;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getDashMpdUrl() {
        return this.dashMpdUrl;
    }

    public final Description getDescription() {
        return this.description;
    }

    public final long getDislikeCount() {
        return this.dislikeCount;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final String getHlsUrl() {
        return this.hlsUrl;
    }

    public final String getHost() {
        return this.host;
    }

    public final Locale getLanguageInfo() {
        return this.language;
    }

    public final String getLicence() {
        return this.licence;
    }

    public final long getLikeCount() {
        return this.likeCount;
    }

    public final List getMetaInfo() {
        return this.metaInfo;
    }

    public final List getPreviewFrames() {
        return this.previewFrames;
    }

    public final StreamExtractor$Privacy getPrivacy() {
        return this.privacy;
    }

    public final List getRelatedItems() {
        return this.relatedItems;
    }

    public final long getStartPosition() {
        return this.startPosition;
    }

    public final List getStreamSegments() {
        return this.streamSegments;
    }

    public final StreamType getStreamType() {
        return this.streamType;
    }

    public final List getSubChannelAvatars() {
        return this.subChannelAvatars;
    }

    public final String getSubChannelName() {
        return this.subChannelName;
    }

    public final String getSubChannelUrl() {
        return this.subChannelUrl;
    }

    public final List getSubtitles() {
        return this.subtitles;
    }

    public final String getSupportInfo() {
        return this.supportInfo;
    }

    public final List getTags() {
        return this.tags;
    }

    public final String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public final List getThumbnails() {
        return this.thumbnails;
    }

    public final DateWrapper getUploadDate() {
        return this.uploadDate;
    }

    public final List getUploaderAvatars() {
        return this.uploaderAvatars;
    }

    public final String getUploaderName() {
        return this.uploaderName;
    }

    public final long getUploaderSubscriberCount() {
        return this.uploaderSubscriberCount;
    }

    public final String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public final List getVideoOnlyStreams() {
        return this.videoOnlyStreams;
    }

    public final List getVideoStreams() {
        return this.videoStreams;
    }

    public final long getViewCount() {
        return this.viewCount;
    }

    public final void setStartPosition(long j) {
        this.startPosition = j;
    }

    @Override // org.schabi.newpipe.extractor.Info
    public final String toString() {
        int serviceId = getServiceId();
        String url = getUrl();
        String originalUrl = getOriginalUrl();
        String id = getId();
        String name = getName();
        StreamType streamType = this.streamType;
        int i = this.ageLimit;
        StringBuilder sb = new StringBuilder("StreamInfo[serviceId=");
        sb.append(serviceId);
        sb.append(", url='");
        sb.append(url);
        sb.append("', originalUrl='");
        sb.append(originalUrl);
        sb.append("', id='");
        sb.append(id);
        sb.append("', name='");
        sb.append(name);
        sb.append("', streamType=");
        sb.append(streamType);
        sb.append(", ageLimit=");
        return Modifier.CC.m(sb, i, "]");
    }
}
