package org.schabi.newpipe.extractor.playlist;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.JavaScript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistInfo extends ListInfo {
    private List<Image> banners;
    private Description description;
    private PlaylistType playlistType;
    private long streamCount;
    private List<Image> subChannelAvatars;
    private String subChannelName;
    private String subChannelUrl;
    private List<Image> thumbnails;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private String uploaderUrl;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PlaylistType {
        public static final /* synthetic */ PlaylistType[] $VALUES;
        public static final PlaylistType MIX_GENRE;
        public static final PlaylistType MIX_MUSIC;
        public static final PlaylistType MIX_STREAM;
        public static final PlaylistType NORMAL;

        static {
            PlaylistType playlistType = new PlaylistType("NORMAL", 0);
            NORMAL = playlistType;
            PlaylistType playlistType2 = new PlaylistType("MIX_STREAM", 1);
            MIX_STREAM = playlistType2;
            PlaylistType playlistType3 = new PlaylistType("MIX_MUSIC", 2);
            MIX_MUSIC = playlistType3;
            PlaylistType playlistType4 = new PlaylistType("MIX_CHANNEL", 3);
            PlaylistType playlistType5 = new PlaylistType("MIX_GENRE", 4);
            MIX_GENRE = playlistType5;
            $VALUES = new PlaylistType[]{playlistType, playlistType2, playlistType3, playlistType4, playlistType5};
        }

        public static PlaylistType valueOf(String str) {
            return (PlaylistType) Enum.valueOf(PlaylistType.class, str);
        }

        public static PlaylistType[] values() {
            return (PlaylistType[]) $VALUES.clone();
        }
    }

    public static PlaylistInfo getInfo(StreamingService streamingService, String str) {
        SearchExtractor playlistExtractor = streamingService.getPlaylistExtractor(streamingService.getPlaylistLHFactory().fromUrl(str));
        playlistExtractor.fetchPage();
        int i = playlistExtractor.service.serviceId;
        LinkHandler linkHandler = playlistExtractor.linkHandler;
        PlaylistInfo playlistInfo = new PlaylistInfo(i, (ListLinkHandler) linkHandler, playlistExtractor.getName());
        playlistInfo.uploaderUrl = "";
        playlistInfo.uploaderName = "";
        List<Image> list = Collections.EMPTY_LIST;
        playlistInfo.banners = list;
        playlistInfo.subChannelAvatars = list;
        playlistInfo.thumbnails = list;
        playlistInfo.uploaderAvatars = list;
        ArrayList arrayList = new ArrayList();
        try {
            playlistInfo.setOriginalUrl(linkHandler.getOriginalUrl());
        } catch (Exception e) {
            playlistInfo.addError(e);
        }
        try {
            playlistInfo.streamCount = playlistExtractor.getStreamCount();
        } catch (Exception e2) {
            playlistInfo.addError(e2);
        }
        try {
            playlistInfo.description = playlistExtractor.mo861getDescription();
        } catch (Exception e3) {
            playlistInfo.addError(e3);
        }
        try {
            playlistInfo.thumbnails = playlistExtractor.getThumbnails();
        } catch (Exception e4) {
            playlistInfo.addError(e4);
        }
        try {
            playlistInfo.uploaderUrl = playlistExtractor.getUploaderUrl();
        } catch (Exception e5) {
            arrayList.add(e5);
        }
        try {
            playlistInfo.uploaderName = playlistExtractor.getUploaderName();
        } catch (Exception e6) {
            arrayList.add(e6);
        }
        try {
            playlistInfo.uploaderAvatars = playlistExtractor.getUploaderAvatars();
        } catch (Exception e7) {
            arrayList.add(e7);
        }
        try {
            playlistInfo.subChannelUrl = playlistExtractor.getSubChannelUrl();
        } catch (Exception e8) {
            arrayList.add(e8);
        }
        try {
            playlistInfo.subChannelName = playlistExtractor.getSubChannelName();
        } catch (Exception e9) {
            arrayList.add(e9);
        }
        try {
            playlistInfo.subChannelAvatars = playlistExtractor.getSubChannelAvatars();
        } catch (Exception e10) {
            arrayList.add(e10);
        }
        try {
            playlistInfo.banners = Collections.EMPTY_LIST;
        } catch (Exception e11) {
            playlistInfo.addError(e11);
        }
        try {
            playlistInfo.playlistType = playlistExtractor.getPlaylistType();
        } catch (Exception e12) {
            playlistInfo.addError(e12);
        }
        if (!arrayList.isEmpty() && (!playlistInfo.getErrors().isEmpty() || arrayList.size() < 3)) {
            playlistInfo.addAllErrors(arrayList);
        }
        ListExtractor.InfoItemsPage itemsPageOrLogError = JavaScript.getItemsPageOrLogError(playlistInfo, playlistExtractor);
        playlistInfo.setRelatedItems(itemsPageOrLogError.itemsList);
        playlistInfo.setNextPage(itemsPageOrLogError.nextPage);
        return playlistInfo;
    }

    public final Description getDescription() {
        return this.description;
    }

    public final long getStreamCount() {
        return this.streamCount;
    }

    public final List getThumbnails() {
        return this.thumbnails;
    }

    public final List getUploaderAvatars() {
        return this.uploaderAvatars;
    }

    public final String getUploaderName() {
        return this.uploaderName;
    }

    public final String getUploaderUrl() {
        return this.uploaderUrl;
    }
}
