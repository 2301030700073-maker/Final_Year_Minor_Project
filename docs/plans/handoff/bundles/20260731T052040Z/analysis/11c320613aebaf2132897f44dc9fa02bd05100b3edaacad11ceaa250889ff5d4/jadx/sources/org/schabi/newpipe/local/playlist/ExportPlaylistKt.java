package org.schabi.newpipe.local.playlist;

import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ExportPlaylistKt {
    public static final YoutubeStreamLinkHandlerFactory linkHandler;

    static {
        YoutubeStreamLinkHandlerFactory youtubeStreamLinkHandlerFactory = YoutubeStreamLinkHandlerFactory.INSTANCE;
        youtubeStreamLinkHandlerFactory.getClass();
        linkHandler = youtubeStreamLinkHandlerFactory;
    }
}
