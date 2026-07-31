package org.schabi.newpipe.extractor.stream;

import java.util.Comparator;
import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItem;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamInfoItemsCollector extends InfoItemsCollector {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StreamInfoItemsCollector(int i, Comparator comparator, int i2) {
        super(i, comparator);
        this.$r8$classId = i2;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemsCollector
    public /* bridge */ /* synthetic */ void commit(InfoItemExtractor infoItemExtractor) {
        switch (this.$r8$classId) {
            case 0:
                commit((StreamInfoItemExtractor) infoItemExtractor);
                break;
            case 1:
            default:
                super.commit(infoItemExtractor);
                break;
            case 2:
                commit((CommentsInfoItemExtractor) infoItemExtractor);
                break;
        }
    }

    public CommentsInfoItem extract(CommentsInfoItemExtractor commentsInfoItemExtractor) {
        CommentsInfoItem commentsInfoItem = new CommentsInfoItem(commentsInfoItemExtractor.getUrl(), this.serviceId, commentsInfoItemExtractor.getName());
        try {
            commentsInfoItem.setCommentId(commentsInfoItemExtractor.getCommentId());
        } catch (Exception e) {
            addError(e);
        }
        try {
            commentsInfoItem.setCommentText(commentsInfoItemExtractor.getCommentText());
        } catch (Exception e2) {
            addError(e2);
        }
        try {
            commentsInfoItem.setUploaderName(commentsInfoItemExtractor.getUploaderName());
        } catch (Exception e3) {
            addError(e3);
        }
        try {
            commentsInfoItem.setUploaderAvatars(commentsInfoItemExtractor.getUploaderAvatars());
        } catch (Exception e4) {
            addError(e4);
        }
        try {
            commentsInfoItem.setUploaderUrl(commentsInfoItemExtractor.getUploaderUrl());
        } catch (Exception e5) {
            addError(e5);
        }
        try {
            commentsInfoItem.setTextualUploadDate(commentsInfoItemExtractor.getTextualUploadDate());
        } catch (Exception e6) {
            addError(e6);
        }
        try {
            commentsInfoItem.setUploadDate(commentsInfoItemExtractor.getUploadDate());
        } catch (Exception e7) {
            addError(e7);
        }
        try {
            commentsInfoItem.setLikeCount(commentsInfoItemExtractor.getLikeCount());
        } catch (Exception e8) {
            addError(e8);
        }
        try {
            commentsInfoItem.setTextualLikeCount(commentsInfoItemExtractor.getTextualLikeCount());
        } catch (Exception e9) {
            addError(e9);
        }
        try {
            commentsInfoItem.setThumbnails(commentsInfoItemExtractor.getThumbnails());
        } catch (Exception e10) {
            addError(e10);
        }
        try {
            commentsInfoItem.setHeartedByUploader(commentsInfoItemExtractor.isHeartedByUploader());
        } catch (Exception e11) {
            addError(e11);
        }
        try {
            commentsInfoItem.setPinned(commentsInfoItemExtractor.isPinned());
        } catch (Exception e12) {
            addError(e12);
        }
        try {
            commentsInfoItem.setStreamPosition(commentsInfoItemExtractor.getStreamPosition());
        } catch (Exception e13) {
            addError(e13);
        }
        try {
            commentsInfoItem.setReplyCount(commentsInfoItemExtractor.getReplyCount());
        } catch (Exception e14) {
            addError(e14);
        }
        try {
            commentsInfoItem.setReplies(commentsInfoItemExtractor.getReplies());
        } catch (Exception e15) {
            addError(e15);
        }
        try {
            commentsInfoItem.setChannelOwner(commentsInfoItemExtractor.isChannelOwner());
        } catch (Exception e16) {
            addError(e16);
        }
        try {
            commentsInfoItem.setCreatorReply(commentsInfoItemExtractor.hasCreatorReply());
        } catch (Exception e17) {
            addError(e17);
        }
        try {
            commentsInfoItem.setEdited(commentsInfoItemExtractor.isEdited());
        } catch (Exception e18) {
            addError(e18);
        }
        return commentsInfoItem;
    }

    public void commit(StreamInfoItemExtractor streamInfoItemExtractor) {
        try {
            this.itemList.add(extract(streamInfoItemExtractor));
        } catch (FoundAdException unused) {
        } catch (Exception e) {
            addError(e);
        }
    }

    public void commit(CommentsInfoItemExtractor commentsInfoItemExtractor) {
        try {
            this.itemList.add(extract(commentsInfoItemExtractor));
        } catch (Exception e) {
            addError(e);
        }
    }

    public PlaylistInfoItem extract(PlaylistInfoItemExtractor playlistInfoItemExtractor) {
        PlaylistInfoItem playlistInfoItem = new PlaylistInfoItem(playlistInfoItemExtractor.getUrl(), this.serviceId, playlistInfoItemExtractor.getName());
        try {
            playlistInfoItem.setUploaderName(playlistInfoItemExtractor.getUploaderName());
        } catch (Exception e) {
            addError(e);
        }
        try {
            playlistInfoItem.setUploaderUrl(playlistInfoItemExtractor.getUploaderUrl());
        } catch (Exception e2) {
            addError(e2);
        }
        try {
            playlistInfoItem.setUploaderVerified(playlistInfoItemExtractor.isUploaderVerified());
        } catch (Exception e3) {
            addError(e3);
        }
        try {
            playlistInfoItem.setThumbnails(playlistInfoItemExtractor.getThumbnails());
        } catch (Exception e4) {
            addError(e4);
        }
        try {
            playlistInfoItem.setStreamCount(playlistInfoItemExtractor.getStreamCount());
        } catch (Exception e5) {
            addError(e5);
        }
        try {
            playlistInfoItem.setDescription(playlistInfoItemExtractor.getDescription());
        } catch (Exception e6) {
            addError(e6);
        }
        try {
            playlistInfoItem.setPlaylistType(playlistInfoItemExtractor.getPlaylistType());
        } catch (Exception e7) {
            addError(e7);
        }
        return playlistInfoItem;
    }

    @Override // org.schabi.newpipe.extractor.Collector
    public final /* bridge */ /* synthetic */ Object extract(InfoItemExtractor infoItemExtractor) {
        switch (this.$r8$classId) {
            case 0:
                return extract((StreamInfoItemExtractor) infoItemExtractor);
            case 1:
                return extract((ChannelInfoItemExtractor) infoItemExtractor);
            case 2:
                return extract((CommentsInfoItemExtractor) infoItemExtractor);
            default:
                return extract((PlaylistInfoItemExtractor) infoItemExtractor);
        }
    }

    public ChannelInfoItem extract(ChannelInfoItemExtractor channelInfoItemExtractor) {
        ChannelInfoItem channelInfoItem = new ChannelInfoItem(channelInfoItemExtractor.getUrl(), this.serviceId, channelInfoItemExtractor.getName());
        try {
            channelInfoItem.setSubscriberCount(channelInfoItemExtractor.getSubscriberCount());
        } catch (Exception e) {
            addError(e);
        }
        try {
            channelInfoItem.setStreamCount(channelInfoItemExtractor.getStreamCount());
        } catch (Exception e2) {
            addError(e2);
        }
        try {
            channelInfoItem.setThumbnails(channelInfoItemExtractor.getThumbnails());
        } catch (Exception e3) {
            addError(e3);
        }
        try {
            channelInfoItem.setDescription(channelInfoItemExtractor.getDescription());
        } catch (Exception e4) {
            addError(e4);
        }
        try {
            channelInfoItem.setVerified(channelInfoItemExtractor.isVerified());
        } catch (Exception e5) {
            addError(e5);
        }
        return channelInfoItem;
    }

    public StreamInfoItem extract(StreamInfoItemExtractor streamInfoItemExtractor) {
        if (!streamInfoItemExtractor.isAd()) {
            StreamInfoItem streamInfoItem = new StreamInfoItem(this.serviceId, streamInfoItemExtractor.getUrl(), streamInfoItemExtractor.getName(), streamInfoItemExtractor.getStreamType());
            try {
                streamInfoItem.setDuration(streamInfoItemExtractor.getDuration());
            } catch (Exception e) {
                addError(e);
            }
            try {
                streamInfoItem.setUploaderName(streamInfoItemExtractor.getUploaderName());
            } catch (Exception e2) {
                addError(e2);
            }
            try {
                streamInfoItem.setTextualUploadDate(streamInfoItemExtractor.getTextualUploadDate());
            } catch (Exception e3) {
                addError(e3);
            }
            try {
                streamInfoItem.setUploadDate(streamInfoItemExtractor.getUploadDate());
            } catch (ParsingException e4) {
                addError(e4);
            }
            try {
                streamInfoItem.setViewCount(streamInfoItemExtractor.getViewCount());
            } catch (Exception e5) {
                addError(e5);
            }
            try {
                streamInfoItem.setThumbnails(streamInfoItemExtractor.getThumbnails());
            } catch (Exception e6) {
                addError(e6);
            }
            try {
                streamInfoItem.setUploaderUrl(streamInfoItemExtractor.getUploaderUrl());
            } catch (Exception e7) {
                addError(e7);
            }
            try {
                streamInfoItem.setUploaderAvatars(streamInfoItemExtractor.getUploaderAvatars());
            } catch (Exception e8) {
                addError(e8);
            }
            try {
                streamInfoItem.setUploaderVerified(streamInfoItemExtractor.isUploaderVerified());
            } catch (Exception e9) {
                addError(e9);
            }
            try {
                streamInfoItem.setShortDescription(streamInfoItemExtractor.getShortDescription());
            } catch (Exception e10) {
                addError(e10);
            }
            try {
                streamInfoItem.setShortFormContent(streamInfoItemExtractor.isShortFormContent());
            } catch (Exception e11) {
                addError(e11);
            }
            try {
                streamInfoItem.setContentAvailability(streamInfoItemExtractor.getContentAvailability());
            } catch (Exception e12) {
                addError(e12);
            }
            return streamInfoItem;
        }
        throw new FoundAdException("Found ad");
    }
}
