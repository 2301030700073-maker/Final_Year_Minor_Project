package org.schabi.newpipe.extractor.search;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SearchExtractor extends ListExtractor {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NothingFoundException extends ExtractionException {
    }

    public /* synthetic */ SearchExtractor(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler, 0);
    }

    public int getCommentsCount() {
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public abstract Description mo861getDescription();

    public SearchQueryHandler getLinkHandler() {
        return (SearchQueryHandler) ((ListLinkHandler) this.linkHandler);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public abstract List getMetaInfo();

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getName() {
        return (String) ((ListLinkHandler) this.linkHandler).getContentFilters().get(0);
    }

    public PlaylistInfo.PlaylistType getPlaylistType() {
        return PlaylistInfo.PlaylistType.NORMAL;
    }

    public abstract String getSearchSuggestion();

    public abstract long getStreamCount();

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public List getSubChannelAvatars() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getSubChannelName() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getSubChannelUrl() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public abstract List getThumbnails();

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public abstract List getUploaderAvatars();

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public abstract String getUploaderName();

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public abstract String getUploaderUrl();

    public boolean isCommentsDisabled() {
        return false;
    }

    public abstract boolean isCorrectedSearch();
}
