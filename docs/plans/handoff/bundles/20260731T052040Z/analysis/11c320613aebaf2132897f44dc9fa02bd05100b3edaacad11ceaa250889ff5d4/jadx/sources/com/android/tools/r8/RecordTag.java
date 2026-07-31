package com.android.tools.r8;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.graphics.Bitmap;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.compose.ui.Modifier;
import androidx.sqlite.SQLite;
import coil3.size.Dimension;
import coil3.size.RealViewSizeResolver;
import coil3.size.Size;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.DefaultDashChunkSource;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.util.Util;
import com.grack.nanojson.JsonObject;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.Optional;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import org.jetbrains.compose.resources.LanguageQualifier;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeVisitor;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.CreationException;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.YoutubeOtfDashManifestCreator;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.YoutubePostLiveStreamDvrDashManifestCreator;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.YoutubeProgressiveDashManifestCreator;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.datasource.NonUriHlsDataSourceFactory;
import org.schabi.newpipe.player.helper.CacheFactory;
import org.schabi.newpipe.player.helper.PlayerDataSource;
import org.schabi.newpipe.player.helper.PlayerDataSource$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.helper.YoutubeDashLiveManifestParser;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediaitem.StreamInfoTag;
import org.schabi.newpipe.player.resolver.PlaybackResolver$ResolverException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class RecordTag {
    public static MediaItem $default$asMediaItem(MediaItemTag mediaItemTag) {
        String thumbnailUrl = mediaItemTag.getThumbnailUrl();
        return MediaItem.fromUri(mediaItemTag.getStreamUrl()).buildUpon().setMediaId(mediaItemTag.makeMediaId()).setMediaMetadata(new MediaMetadata.Builder().setArtworkUri(thumbnailUrl == null ? null : Uri.parse(thumbnailUrl)).setArtist(mediaItemTag.getUploaderName()).setDescription(mediaItemTag.getTitle()).setDisplayTitle(mediaItemTag.getTitle()).setTitle(mediaItemTag.getTitle()).build()).setRequestMetadata(new MediaItem.RequestMetadata.Builder().setMediaUri(Uri.parse(mediaItemTag.getStreamUrl())).build()).setTag(mediaItemTag).build();
    }

    public static String $default$makeMediaId(MediaItemTag mediaItemTag) {
        return UUID.randomUUID().toString() + "[" + mediaItemTag.getTitle() + "]";
    }

    public static boolean $default$sameAs(MediaMetadataCompat mediaMetadataCompat, MediaMetadataCompat mediaMetadataCompat2) {
        if (mediaMetadataCompat == mediaMetadataCompat2) {
            return true;
        }
        Bundle bundle = mediaMetadataCompat.mBundle;
        Bundle bundle2 = mediaMetadataCompat.mBundle;
        if (bundle.size() != mediaMetadataCompat2.mBundle.size()) {
            return false;
        }
        Set<String> keySet = bundle2.keySet();
        Bundle bundle3 = new Bundle(bundle2);
        Bundle bundle4 = new Bundle(mediaMetadataCompat2.mBundle);
        for (String str : keySet) {
            Object obj = bundle3.get(str);
            Object obj2 = bundle4.get(str);
            if (obj != obj2) {
                if ((obj instanceof Bitmap) && (obj2 instanceof Bitmap)) {
                    if (!((Bitmap) obj).sameAs((Bitmap) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof RatingCompat) && (obj2 instanceof RatingCompat)) {
                    RatingCompat ratingCompat = (RatingCompat) obj;
                    RatingCompat ratingCompat2 = (RatingCompat) obj2;
                    if (ratingCompat.hasHeart() != ratingCompat2.hasHeart() || ratingCompat.isRated() != ratingCompat2.isRated() || ratingCompat.isThumbUp() != ratingCompat2.isThumbUp() || ratingCompat.getPercentRating() != ratingCompat2.getPercentRating() || ratingCompat.getStarRating() != ratingCompat2.getStarRating() || ratingCompat.mRatingStyle != ratingCompat2.mRatingStyle) {
                        return false;
                    }
                } else if (!Util.areEqual(obj, obj2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void $default$traverse(NodeVisitor nodeVisitor, Node node) {
        SQLite.notNull(node);
        Node nextSibling = node.nextSibling();
        boolean z = false;
        int i = 0;
        while (true) {
            if (z) {
                if (!z || node.childNodeSize() <= 0) {
                    nodeVisitor.tail(node, i);
                    Node nextSibling2 = node.nextSibling();
                    if (i == 0) {
                        if (nextSibling2 == null || nextSibling2 == nextSibling) {
                            return;
                        }
                    } else if (nextSibling2 == null) {
                        node = node.parentNode;
                        i--;
                        z = 2;
                    }
                    node = nextSibling2;
                } else {
                    node = node.childNode(0);
                    i++;
                }
                z = false;
            } else {
                Element element = node.parentNode;
                Node nextSibling3 = node.nextSibling();
                int siblingIndex = element != null ? node.siblingIndex() : 0;
                nodeVisitor.head(node, i);
                if (element != null && node.parentNode != element) {
                    node = siblingIndex < element.childNodes.size() ? element.childNode(siblingIndex) : null;
                    Node node2 = i == 0 ? nextSibling : nextSibling3;
                    if (node == null || node == node2) {
                        if (i == 0) {
                            return;
                        }
                        if (nextSibling3 == null || nextSibling3.parentNode != element) {
                            i--;
                            z = 2;
                            node = element;
                        } else {
                            node = nextSibling3;
                        }
                    }
                }
                z = true;
            }
        }
    }

    public static Dimension $private$getDimension(int i, int i2, int i3) {
        if (i == -2) {
            return Dimension.Undefined.INSTANCE;
        }
        int i4 = i - i3;
        if (i4 > 0) {
            if (i4 > 0) {
                return new Dimension.Pixels(i4);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("px must be > 0.");
            return null;
        }
        int i5 = i2 - i3;
        if (i5 > 0) {
            if (i5 > 0) {
                return new Dimension.Pixels(i5);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("px must be > 0.");
        }
        return null;
    }

    public static Size $private$getSize(RealViewSizeResolver realViewSizeResolver) {
        View view = realViewSizeResolver.view;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Dimension $private$getDimension = $private$getDimension(layoutParams != null ? layoutParams.width : -1, view.getWidth(), view.getPaddingRight() + view.getPaddingLeft());
        if ($private$getDimension == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        Dimension $private$getDimension2 = $private$getDimension(layoutParams2 != null ? layoutParams2.height : -1, view.getHeight(), view.getPaddingBottom() + view.getPaddingTop());
        if ($private$getDimension2 == null) {
            return null;
        }
        return new Size($private$getDimension, $private$getDimension2);
    }

    public static MediaSource buildLiveMediaSource(PlayerDataSource playerDataSource, String str, int i, StreamInfoTag streamInfoTag) {
        MediaSource.Factory manifestParser;
        DefaultDataSource.Factory factory = playerDataSource.cachelessDataSourceFactory;
        if (i == 0) {
            manifestParser = streamInfoTag.streamInfo.getServiceId() == ServiceList.YouTube.serviceId ? new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(factory), factory).setManifestParser(new YoutubeDashLiveManifestParser()) : new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(factory), factory);
        } else if (i == 1) {
            manifestParser = new SsMediaSource.Factory(new DefaultSsChunkSource.Factory(factory), factory).setLivePresentationDelayMs(10000L);
        } else {
            if (i != 2) {
                throw new PlaybackResolver$ResolverException(Modifier.CC.m(i, "Unsupported type: "));
            }
            manifestParser = new HlsMediaSource.Factory(factory).setAllowChunklessPreparation(true).setPlaylistTrackerFactory(new PlayerDataSource$$ExternalSyntheticLambda0(0));
        }
        return manifestParser.createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(str)).setLiveConfiguration(new MediaItem.LiveConfiguration.Builder().setTargetOffsetMs(10000L).build()).build());
    }

    public static BaseMediaSource buildMediaSource(PlayerDataSource playerDataSource, Stream stream, StreamInfo streamInfo, String str, StreamInfoTag streamInfoTag) {
        if (streamInfo.getService() == ServiceList.YouTube) {
            boolean z = stream instanceof AudioStream;
            if (!z && !(stream instanceof VideoStream)) {
                throw new PlaybackResolver$ResolverException("Generation of YouTube DASH manifest for " + stream.getClass().getSimpleName() + " is not supported");
            }
            StreamType streamType = streamInfo.getStreamType();
            if (streamType != StreamType.VIDEO_STREAM) {
                if (streamType != StreamType.POST_LIVE_STREAM) {
                    throw new PlaybackResolver$ResolverException("DASH manifest generation of YouTube livestreams is not supported");
                }
                try {
                    ItagItem itagItem = stream.getItagItem();
                    Objects.requireNonNull(itagItem);
                    return buildYoutubeManualDashMediaSource(playerDataSource, createDashManifest(YoutubePostLiveStreamDvrDashManifestCreator.fromPostLiveStreamDvrStreamingUrl(stream.getContent(), itagItem, itagItem.getTargetDurationSec(), streamInfo.getDuration()), stream), stream, str, streamInfoTag);
                } catch (IOException | NullPointerException | CreationException e) {
                    throw new PlaybackResolver$ResolverException("Error when generating the DASH manifest of YouTube ended live stream", e);
                }
            }
            DeliveryMethod deliveryMethod = stream.getDeliveryMethod();
            int ordinal = deliveryMethod.ordinal();
            if (ordinal == 0) {
                if ((!(stream instanceof VideoStream) || !((VideoStream) stream).isVideoOnly) && !z) {
                    return buildYoutubeProgressiveMediaSource(playerDataSource, stream, str, streamInfoTag);
                }
                try {
                    String content = stream.getContent();
                    ItagItem itagItem2 = stream.getItagItem();
                    Objects.requireNonNull(itagItem2);
                    return buildYoutubeManualDashMediaSource(playerDataSource, createDashManifest(YoutubeProgressiveDashManifestCreator.fromProgressiveStreamingUrl(content, itagItem2, streamInfo.getDuration()), stream), stream, str, streamInfoTag);
                } catch (IOException | NullPointerException | CreationException e2) {
                    Log.w("PlaybackResolver", "Error when generating or parsing DASH manifest of YouTube progressive stream, falling back to a ProgressiveMediaSource.", e2);
                    return buildYoutubeProgressiveMediaSource(playerDataSource, stream, str, streamInfoTag);
                }
            }
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return new HlsMediaSource.Factory(playerDataSource.ytHlsCacheDataSourceFactory).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
                }
                throw new PlaybackResolver$ResolverException("Unsupported delivery method for YouTube contents: " + deliveryMethod);
            }
            try {
                String content2 = stream.getContent();
                ItagItem itagItem3 = stream.getItagItem();
                Objects.requireNonNull(itagItem3);
                return buildYoutubeManualDashMediaSource(playerDataSource, createDashManifest(YoutubeOtfDashManifestCreator.fromOtfStreamingUrl(content2, itagItem3, streamInfo.getDuration()), stream), stream, str, streamInfoTag);
            } catch (IOException | NullPointerException | CreationException e3) {
                Log.e("PlaybackResolver", "Error when generating the DASH manifest of YouTube OTF stream", e3);
                throw new PlaybackResolver$ResolverException("Error when generating the DASH manifest of YouTube OTF stream", e3);
            }
        }
        DeliveryMethod deliveryMethod2 = stream.getDeliveryMethod();
        int ordinal2 = deliveryMethod2.ordinal();
        if (ordinal2 == 0) {
            if (!stream.isUrl()) {
                throw new PlaybackResolver$ResolverException("Non URI progressive contents are not supported");
            }
            throwResolverExceptionIfUrlNullOrEmpty(stream.getContent());
            return new ProgressiveMediaSource.Factory(playerDataSource.cacheDataSourceFactory).setContinueLoadingCheckIntervalBytes(playerDataSource.progressiveLoadIntervalBytes).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
        }
        if (ordinal2 == 1) {
            if (stream.isUrl()) {
                throwResolverExceptionIfUrlNullOrEmpty(stream.getContent());
                CacheFactory cacheFactory = playerDataSource.cacheDataSourceFactory;
                return new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(cacheFactory), cacheFactory).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
            }
            try {
                CacheFactory cacheFactory2 = playerDataSource.cacheDataSourceFactory;
                return new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(cacheFactory2), cacheFactory2).createMediaSource(createDashManifest(stream.getContent(), stream), new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse((String) Objects.requireNonNullElse(stream.getManifestUrl(), ""))).setCustomCacheKey(str).build());
            } catch (IOException e4) {
                throw new PlaybackResolver$ResolverException("Could not create a DASH media source/manifest from the manifest text", e4);
            }
        }
        if (ordinal2 == 2) {
            if (stream.isUrl()) {
                throwResolverExceptionIfUrlNullOrEmpty(stream.getContent());
                return new HlsMediaSource.Factory(playerDataSource.cacheDataSourceFactory).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
            }
            String content3 = stream.getContent();
            CacheFactory cacheFactory3 = playerDataSource.cacheDataSourceFactory;
            if (cacheFactory3 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No DataSource.Factory valid instance has been specified.");
                return null;
            }
            if (!Utils.isNullOrEmpty(content3)) {
                return new HlsMediaSource.Factory(new NonUriHlsDataSourceFactory(cacheFactory3, content3.getBytes(StandardCharsets.UTF_8))).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse((String) Objects.requireNonNullElse(stream.getManifestUrl(), ""))).setCustomCacheKey(str).build());
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No HLS valid playlist has been specified.");
            return null;
        }
        if (ordinal2 != 3) {
            throw new PlaybackResolver$ResolverException("Unsupported delivery type: " + deliveryMethod2);
        }
        if (stream.isUrl()) {
            throwResolverExceptionIfUrlNullOrEmpty(stream.getContent());
            DefaultDataSource.Factory factory = playerDataSource.cachelessDataSourceFactory;
            return new SsMediaSource.Factory(new DefaultSsChunkSource.Factory(factory), factory).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
        }
        Uri parse = Uri.parse((String) Objects.requireNonNullElse(stream.getManifestUrl(), ""));
        try {
            SsManifest parse2 = new SsManifestParser().parse(parse, (InputStream) new ByteArrayInputStream(stream.getContent().getBytes(StandardCharsets.UTF_8)));
            DefaultDataSource.Factory factory2 = playerDataSource.cachelessDataSourceFactory;
            return new SsMediaSource.Factory(new DefaultSsChunkSource.Factory(factory2), factory2).createMediaSource(parse2, new MediaItem.Builder().setTag(streamInfoTag).setUri(parse).setCustomCacheKey(str).build());
        } catch (IOException e5) {
            throw new PlaybackResolver$ResolverException("Error when parsing manual SS manifest", e5);
        }
    }

    public static DashMediaSource buildYoutubeManualDashMediaSource(PlayerDataSource playerDataSource, DashManifest dashManifest, Stream stream, String str, StreamInfoTag streamInfoTag) {
        CacheFactory cacheFactory = playerDataSource.ytDashCacheDataSourceFactory;
        return new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(cacheFactory), cacheFactory).createMediaSource(dashManifest, new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
    }

    public static ProgressiveMediaSource buildYoutubeProgressiveMediaSource(PlayerDataSource playerDataSource, Stream stream, String str, StreamInfoTag streamInfoTag) {
        return new ProgressiveMediaSource.Factory(playerDataSource.ytProgressiveDashCacheDataSourceFactory).setContinueLoadingCheckIntervalBytes(playerDataSource.progressiveLoadIntervalBytes).createMediaSource(new MediaItem.Builder().setTag(streamInfoTag).setUri(Uri.parse(stream.getContent())).setCustomCacheKey(str).build());
    }

    public static String cacheKeyOf(StreamInfo streamInfo, AudioStream audioStream) {
        boolean z = audioStream.getAverageBitrate() == -1;
        StringBuilder commonCacheKeyOf = commonCacheKeyOf(streamInfo, audioStream, z);
        if (!z) {
            commonCacheKeyOf.append(" ");
            commonCacheKeyOf.append(audioStream.getAverageBitrate());
        }
        if (audioStream.getAudioTrackId() != null) {
            commonCacheKeyOf.append(" ");
            commonCacheKeyOf.append(audioStream.getAudioTrackId());
        }
        if (audioStream.getAudioLocale() != null) {
            commonCacheKeyOf.append(" ");
            commonCacheKeyOf.append(audioStream.getAudioLocale().getISO3Language());
        }
        return commonCacheKeyOf.toString();
    }

    public static StringBuilder commonCacheKeyOf(StreamInfo streamInfo, Stream stream, boolean z) {
        StringBuilder sb = new StringBuilder(streamInfo.getServiceId());
        sb.append(" ");
        sb.append(streamInfo.getId());
        sb.append(" ");
        sb.append(stream.getId());
        MediaFormat format = stream.getFormat();
        if (format != null) {
            sb.append(" ");
            sb.append(format.name);
        }
        if (z && format == null) {
            sb.append(" ");
            sb.append(Objects.hash(stream.getContent(), stream.getManifestUrl()));
        }
        return sb;
    }

    public static int create(int i, int i2, int i3) {
        return i | i2 | i3 | 128;
    }

    public static DashManifest createDashManifest(String str, Stream stream) {
        return new DashManifestParser().parse(Uri.parse((String) Objects.requireNonNullElse(stream.getManifestUrl(), "")), (InputStream) new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8)));
    }

    public static Optional from(MediaItem mediaItem) {
        return Optional.ofNullable(mediaItem).map(new Player$$ExternalSyntheticLambda28(23)).map(new Player$$ExternalSyntheticLambda28(24)).filter(new Player$$ExternalSyntheticLambda48(8)).map(new Player$$ExternalSyntheticLambda28(25));
    }

    public static /* synthetic */ void m(Object obj) {
        if (obj instanceof AutoCloseable) {
            ((AutoCloseable) obj).close();
            return;
        }
        if (obj instanceof ExecutorService) {
            OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) obj);
            return;
        }
        if (obj instanceof TypedArray) {
            ((TypedArray) obj).recycle();
            return;
        }
        if (obj instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) obj).release();
            return;
        }
        if (obj instanceof MediaDrm) {
            ((MediaDrm) obj).release();
            return;
        }
        if (obj instanceof DrmManagerClient) {
            ((DrmManagerClient) obj).release();
        } else if (obj instanceof ContentProviderClient) {
            ((ContentProviderClient) obj).release();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        }
    }

    public static /* synthetic */ Map m$1(List list) {
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("User-Agent", list)};
        HashMap hashMap = new HashMap(1);
        Map.Entry entry = entryArr[0];
        Object key = entry.getKey();
        Objects.requireNonNull(key);
        Object value = entry.getValue();
        Objects.requireNonNull(value);
        if (hashMap.put(key, value) == null) {
            return DesugarCollections.unmodifiableMap(hashMap);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
        return null;
    }

    public static MediaSource maybeBuildLiveMediaSource(PlayerDataSource playerDataSource, StreamInfo streamInfo) {
        if (Okio.isLiveStream(streamInfo.getStreamType())) {
            try {
                StreamInfoTag streamInfoTag = new StreamInfoTag(streamInfo, null, null, null);
                if (!streamInfo.getDashMpdUrl().isEmpty()) {
                    return buildLiveMediaSource(playerDataSource, streamInfo.getDashMpdUrl(), 0, streamInfoTag);
                }
                if (!streamInfo.getHlsUrl().isEmpty()) {
                    return buildLiveMediaSource(playerDataSource, streamInfo.getHlsUrl(), 2, streamInfoTag);
                }
            } catch (Exception e) {
                Log.w("PlaybackResolver", "Error when generating live media source, falling back to standard sources", e);
                return null;
            }
        }
        return null;
    }

    public static void replaceSession(DrmSession drmSession, DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.acquire(null);
        }
        if (drmSession != null) {
            drmSession.release(null);
        }
    }

    public static /* synthetic */ String stringValueOf(int i) {
        switch (i) {
            case 1:
                return "Doctype";
            case 2:
                return "StartTag";
            case 3:
                return "EndTag";
            case 4:
                return "Comment";
            case 5:
                return "Character";
            case 6:
                return "XmlDecl";
            case 7:
                return "EOF";
            default:
                return "null";
        }
    }

    public static void throwResolverExceptionIfUrlNullOrEmpty(String str) {
        if (str == null) {
            throw new PlaybackResolver$ResolverException("Null stream URL");
        }
        if (str.isEmpty()) {
            throw new PlaybackResolver$ResolverException("Empty stream URL");
        }
    }

    public static void m$1(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(Integer.valueOf(i), str);
        hashMap.put(Integer.valueOf(i2), str2);
    }

    public static String cacheKeyOf(StreamInfo streamInfo, VideoStream videoStream) {
        boolean equals = videoStream.resolution.equals("");
        StringBuilder commonCacheKeyOf = commonCacheKeyOf(streamInfo, videoStream, equals);
        if (!equals) {
            commonCacheKeyOf.append(" ");
            commonCacheKeyOf.append(videoStream.resolution);
        }
        commonCacheKeyOf.append(" ");
        commonCacheKeyOf.append(videoStream.isVideoOnly);
        return commonCacheKeyOf.toString();
    }

    public static JsonObject m(JsonObject jsonObject, String str, String str2, String str3, String str4) {
        return jsonObject.getObject(str).getObject(str2).getObject(str3).getObject(str4);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static String m480m(JsonObject jsonObject, String str, String str2, String str3, String str4) {
        return jsonObject.getObject(str).getObject(str2).getString(str3, str4);
    }

    public static /* synthetic */ Map m(List list) {
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("Range", list)};
        HashMap hashMap = new HashMap(1);
        Map.Entry entry = entryArr[0];
        Object key = entry.getKey();
        Objects.requireNonNull(key);
        Object value = entry.getValue();
        Objects.requireNonNull(value);
        if (hashMap.put(key, value) == null) {
            return DesugarCollections.unmodifiableMap(hashMap);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
        return null;
    }

    public static Set m(String str) {
        return SQLite.setOf(new LanguageQualifier(str));
    }

    public static void m(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
    }

    public static int m(Object obj, ArrayList arrayList, Object obj2, int i, int i2) {
        Objects.requireNonNull(obj);
        arrayList.add(obj2);
        return i + i2;
    }

    public static void m(String str, int i, String str2) {
        com.google.android.exoplayer2.util.Log.w(str2, str + i);
    }

    public static void m(String str, String str2, String str3) {
        com.google.android.exoplayer2.util.Log.w(str3, str + str2);
    }

    public static int m(int i, int i2, int i3, int i4, int i5) {
        return Math.max(((i * i2) / i3) + i4, i5);
    }
}
