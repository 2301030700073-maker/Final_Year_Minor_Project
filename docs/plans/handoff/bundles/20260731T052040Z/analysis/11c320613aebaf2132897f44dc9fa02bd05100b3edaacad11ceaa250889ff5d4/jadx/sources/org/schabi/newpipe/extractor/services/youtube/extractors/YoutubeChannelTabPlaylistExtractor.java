package org.schabi.newpipe.extractor.services.youtube.extractors;

import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.search.SearchExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeChannelTabPlaylistExtractor extends SearchExtractor {
    public boolean playlistExisting;
    public final YoutubePlaylistExtractor playlistExtractorInstance;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0041, code lost:
    
        if (r2.equals("livestreams") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public YoutubeChannelTabPlaylistExtractor(org.schabi.newpipe.extractor.StreamingService r9, org.schabi.newpipe.extractor.linkhandler.ListLinkHandler r10) {
        /*
            r8 = this;
            java.lang.String r0 = "https://www.youtube.com/playlist?list="
            r1 = 0
            r8.<init>(r9, r10, r1)
            java.util.List r2 = r10.getContentFilters()
            boolean r3 = r2.isEmpty()
            r4 = 0
            if (r3 != 0) goto La5
            java.lang.String r10 = r10.getId()
            boolean r3 = org.schabi.newpipe.extractor.utils.Utils.isNullOrEmpty(r10)
            if (r3 != 0) goto L9f
            java.lang.String r3 = "UC"
            boolean r3 = r10.startsWith(r3)
            if (r3 == 0) goto L9f
            r3 = 2
            java.lang.String r10 = r10.substring(r3)
            java.lang.Object r2 = r2.get(r1)
            java.lang.String r2 = (java.lang.String) r2
            r2.getClass()
            int r5 = r2.hashCode()
            r6 = -1
            switch(r5) {
                case -903148681: goto L50;
                case -816678056: goto L44;
                case -439267705: goto L3b;
                default: goto L39;
            }
        L39:
            r3 = r6
            goto L5b
        L3b:
            java.lang.String r5 = "livestreams"
            boolean r2 = r2.equals(r5)
            if (r2 != 0) goto L5b
            goto L39
        L44:
            java.lang.String r3 = "videos"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L4e
            goto L39
        L4e:
            r3 = 1
            goto L5b
        L50:
            java.lang.String r3 = "shorts"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L5a
            goto L39
        L5a:
            r3 = r1
        L5b:
            switch(r3) {
                case 0: goto L73;
                case 1: goto L6c;
                case 2: goto L64;
                default: goto L5e;
            }
        L5e:
            java.lang.String r8 = "Only Videos, Shorts and Livestreams tabs can extracted as playlists"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r8)
            throw r4
        L64:
            java.lang.String r2 = "UULV"
            java.lang.String r10 = r2.concat(r10)
        L6a:
            r5 = r10
            goto L7a
        L6c:
            java.lang.String r2 = "UULF"
            java.lang.String r10 = r2.concat(r10)
            goto L6a
        L73:
            java.lang.String r2 = "UUSH"
            java.lang.String r10 = r2.concat(r10)
            goto L6a
        L7a:
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L95
            r10.<init>(r1)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L95
            java.lang.String r3 = r0.concat(r5)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L95
            org.schabi.newpipe.extractor.linkhandler.ListLinkHandler r2 = new org.schabi.newpipe.extractor.linkhandler.ListLinkHandler     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L95
            java.util.List r6 = java.util.Collections.EMPTY_LIST     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L95
            java.lang.String r7 = ""
            r4 = r3
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L95
            org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistExtractor r10 = new org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistExtractor
            r10.<init>(r9, r2, r1)
            r8.playlistExtractorInstance = r10
            return
        L95:
            r0 = move-exception
            r8 = r0
            org.jsoup.SerializationException r9 = new org.jsoup.SerializationException
            java.lang.String r10 = "Could not create a YouTube playlist from a valid playlist ID"
            r9.<init>(r10, r8)
            throw r9
        L9f:
            java.lang.String r8 = "Invalid channel ID"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r8)
            throw r4
        La5:
            java.lang.String r8 = "A content filter is required"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r8)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabPlaylistExtractor.<init>(org.schabi.newpipe.extractor.StreamingService, org.schabi.newpipe.extractor.linkhandler.ListLinkHandler):void");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return !this.playlistExisting ? ListExtractor.InfoItemsPage.EMPTY : this.playlistExtractorInstance.getInitialPage();
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        return !this.playlistExisting ? ListExtractor.InfoItemsPage.EMPTY : this.playlistExtractorInstance.getPage(page);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        try {
            this.playlistExtractorInstance.onFetchPage(closeableKt);
            if (this.playlistExisting) {
                return;
            }
            this.playlistExisting = true;
        } catch (ContentNotAvailableException unused) {
        }
    }
}
