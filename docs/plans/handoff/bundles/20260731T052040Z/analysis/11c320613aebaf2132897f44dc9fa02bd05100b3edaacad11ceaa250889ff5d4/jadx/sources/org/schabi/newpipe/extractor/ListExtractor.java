package org.schabi.newpipe.extractor;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import j$.util.Objects;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamExtractor$Privacy;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.JavaScript;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListExtractor {
    public final /* synthetic */ int $r8$classId;
    public final CloseableKt downloader;
    public final LinkHandler linkHandler;
    public boolean pageFetched;
    public final StreamingService service;

    public ListExtractor(StreamingService streamingService, LinkHandler linkHandler, int i) {
        this.$r8$classId = i;
        String simpleName = getClass().getSimpleName();
        int hashCode = hashCode();
        StringBuilder sb = new StringBuilder();
        sb.append(simpleName);
        sb.append("@");
        sb.append(hashCode);
        this.pageFetched = false;
        Objects.requireNonNull(streamingService, "service is null");
        this.service = streamingService;
        Objects.requireNonNull(linkHandler, "LinkHandler is null");
        this.linkHandler = linkHandler;
        DownloaderImpl downloaderImpl = Utility.downloader;
        Objects.requireNonNull(downloaderImpl, "downloader is null");
        this.downloader = downloaderImpl;
    }

    public final void assertPageFetched() {
        if (this.pageFetched) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Page is not fetched. Make sure you call fetchPage()");
    }

    public final void fetchPage() {
        ByteString.Companion companion = JavaScript.logger;
        ByteString.Companion companion2 = JavaScript.EMPTY_LOGGER;
        if (companion != companion2) {
            SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(1);
        }
        if (!this.pageFetched) {
            onFetchPage(this.downloader);
            this.pageFetched = true;
        } else {
            if (companion == companion2) {
                return;
            }
            SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(1);
        }
    }

    public int getAgeLimit() {
        return 0;
    }

    public abstract List getAudioStreams();

    public abstract List getAvatars();

    public abstract List getBanners();

    public String getCategory() {
        return "";
    }

    public String getDashMpdUrl() {
        return "";
    }

    public abstract String getDescription();

    /* renamed from: getDescription, reason: collision with other method in class */
    public abstract Description mo861getDescription();

    public long getDislikeCount() {
        return -1L;
    }

    public String getErrorMessage() {
        return null;
    }

    public abstract String getFeedUrl();

    public List getFrames() {
        return Collections.EMPTY_LIST;
    }

    public String getHlsUrl() {
        return "";
    }

    public String getHost() {
        return "";
    }

    public String getId() {
        return this.linkHandler.getId();
    }

    public abstract InfoItemsPage getInitialPage();

    public Locale getLanguageInfo() {
        return null;
    }

    public long getLength() {
        return 0L;
    }

    public String getLicence() {
        return "";
    }

    public long getLikeCount() {
        return -1L;
    }

    public List getMetaInfo() {
        return Collections.EMPTY_LIST;
    }

    public abstract String getName();

    public String getOriginalUrl() {
        return this.linkHandler.getOriginalUrl();
    }

    public abstract InfoItemsPage getPage(Page page);

    public abstract List getParentChannelAvatars();

    public abstract String getParentChannelName();

    public abstract String getParentChannelUrl();

    public StreamExtractor$Privacy getPrivacy() {
        return StreamExtractor$Privacy.PUBLIC;
    }

    public InfoItemsCollector getRelatedItems() {
        return null;
    }

    public List getStreamSegments() {
        return Collections.EMPTY_LIST;
    }

    public abstract StreamType getStreamType();

    public List getSubChannelAvatars() {
        return Collections.EMPTY_LIST;
    }

    public String getSubChannelName() {
        return "";
    }

    public String getSubChannelUrl() {
        return "";
    }

    public abstract long getSubscriberCount();

    public List getSubtitles(MediaFormat mediaFormat) {
        return Collections.EMPTY_LIST;
    }

    public List getSubtitlesDefault() {
        return Collections.EMPTY_LIST;
    }

    public String getSupportInfo() {
        return "";
    }

    public abstract List getTabs();

    public List getTags() {
        switch (this.$r8$classId) {
        }
        return Collections.EMPTY_LIST;
    }

    public String getTextualUploadDate() {
        return null;
    }

    public abstract List getThumbnails();

    public final TimeAgoParser getTimeAgoParser() {
        TimeAgoParser timeAgoParserFor;
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        streamingService.getClass();
        TimeAgoParser timeAgoParserFor2 = MathKt.getTimeAgoParserFor(localization);
        if (timeAgoParserFor2 != null) {
            return timeAgoParserFor2;
        }
        if (!localization.getCountryCode().isEmpty() && (timeAgoParserFor = MathKt.getTimeAgoParserFor(new Localization(localization.getLanguageCode(), null))) != null) {
            return timeAgoParserFor;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m$2(localization, "\")", "Localization is not supported (\"");
        return null;
    }

    public long getTimeStamp() {
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060 A[Catch: ParsingException -> 0x003e, TRY_LEAVE, TryCatch #0 {ParsingException -> 0x003e, blocks: (B:15:0x0040, B:18:0x004d, B:21:0x0059, B:26:0x0060, B:31:0x0055, B:32:0x0049, B:36:0x002a, B:38:0x0030, B:40:0x0036), top: B:35:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0055 A[Catch: ParsingException -> 0x003e, TryCatch #0 {ParsingException -> 0x003e, blocks: (B:15:0x0040, B:18:0x004d, B:21:0x0059, B:26:0x0060, B:31:0x0055, B:32:0x0049, B:36:0x002a, B:38:0x0030, B:40:0x0036), top: B:35:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0049 A[Catch: ParsingException -> 0x003e, TryCatch #0 {ParsingException -> 0x003e, blocks: (B:15:0x0040, B:18:0x004d, B:21:0x0059, B:26:0x0060, B:31:0x0055, B:32:0x0049, B:36:0x002a, B:38:0x0030, B:40:0x0036), top: B:35:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getTimestampSeconds(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = ""
            java.lang.String r6 = r6.getOriginalUrl()     // Catch: org.schabi.newpipe.extractor.utils.Parser.RegexException -> L76
            r1 = 1
            java.lang.String r6 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r7, r1, r6)     // Catch: org.schabi.newpipe.extractor.utils.Parser.RegexException -> L76
            boolean r7 = r6.isEmpty()
            r2 = 0
            if (r7 != 0) goto L75
            java.lang.String r7 = "(\\d+)s"
            java.lang.String r7 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r7, r1, r6)     // Catch: java.lang.Exception -> L28
            java.lang.String r4 = "(\\d+)m"
            java.lang.String r4 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r4, r1, r6)     // Catch: java.lang.Exception -> L26
            java.lang.String r5 = "(\\d+)h"
            java.lang.String r0 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r5, r1, r6)     // Catch: java.lang.Exception -> L2a
            goto L40
        L26:
            r4 = r0
            goto L2a
        L28:
            r7 = r0
            r4 = r7
        L2a:
            boolean r5 = r7.isEmpty()     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
            if (r5 == 0) goto L40
            boolean r5 = r4.isEmpty()     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
            if (r5 == 0) goto L40
            java.lang.String r7 = "t=(\\d+)"
            java.lang.String r7 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r7, r1, r6)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
            goto L40
        L3e:
            r6 = move-exception
            goto L70
        L40:
            boolean r6 = r7.isEmpty()     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
            r1 = 0
            if (r6 == 0) goto L49
            r6 = r1
            goto L4d
        L49:
            int r6 = java.lang.Integer.parseInt(r7)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
        L4d:
            boolean r7 = r4.isEmpty()     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
            if (r7 == 0) goto L55
            r7 = r1
            goto L59
        L55:
            int r7 = java.lang.Integer.parseInt(r4)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
        L59:
            boolean r4 = r0.isEmpty()     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
            if (r4 == 0) goto L60
            goto L64
        L60:
            int r1 = java.lang.Integer.parseInt(r0)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L3e
        L64:
            long r2 = (long) r6
            r4 = 60
            long r6 = (long) r7
            long r6 = r6 * r4
            long r6 = r6 + r2
            r2 = 3600(0xe10, double:1.7786E-320)
            long r0 = (long) r1
            long r0 = r0 * r2
            long r0 = r0 + r6
            return r0
        L70:
            java.lang.String r7 = "Could not get timestamp."
            org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m(r7, r6)
        L75:
            return r2
        L76:
            r6 = -2
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.ListExtractor.getTimestampSeconds(java.lang.String):long");
    }

    public DateWrapper getUploadDate() {
        return null;
    }

    public List getUploaderAvatars() {
        return Collections.EMPTY_LIST;
    }

    public abstract String getUploaderName();

    public long getUploaderSubscriberCount() {
        return -1L;
    }

    public abstract String getUploaderUrl();

    public String getUrl() {
        return this.linkHandler.getUrl();
    }

    public abstract List getVideoOnlyStreams();

    public abstract List getVideoStreams();

    public long getViewCount() {
        return -1L;
    }

    public boolean isUploaderVerified() {
        return false;
    }

    public abstract boolean isVerified();

    public abstract void onFetchPage(CloseableKt closeableKt);

    public final String toString() {
        return getClass().getSimpleName();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InfoItemsPage {
        public static final InfoItemsPage EMPTY;
        public final List errors;
        public final List itemsList;
        public final Page nextPage;

        static {
            List list = Collections.EMPTY_LIST;
            EMPTY = new InfoItemsPage(list, null, list);
        }

        public InfoItemsPage(InfoItemsCollector infoItemsCollector, Page page) {
            this(infoItemsCollector.getItems(), page, infoItemsCollector.getErrors());
        }

        public InfoItemsPage(List list, Page page, List list2) {
            this.itemsList = list;
            this.nextPage = page;
            this.errors = list2;
        }
    }
}
