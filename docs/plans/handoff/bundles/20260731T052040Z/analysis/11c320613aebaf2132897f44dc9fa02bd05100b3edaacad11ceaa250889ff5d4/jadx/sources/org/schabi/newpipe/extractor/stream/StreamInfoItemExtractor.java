package org.schabi.newpipe.extractor.stream;

import java.util.List;
import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.localization.DateWrapper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface StreamInfoItemExtractor extends InfoItemExtractor {
    ContentAvailability getContentAvailability();

    long getDuration();

    String getShortDescription();

    StreamType getStreamType();

    String getTextualUploadDate();

    DateWrapper getUploadDate();

    List getUploaderAvatars();

    String getUploaderName();

    String getUploaderUrl();

    long getViewCount();

    boolean isAd();

    boolean isShortFormContent();

    boolean isUploaderVerified();
}
