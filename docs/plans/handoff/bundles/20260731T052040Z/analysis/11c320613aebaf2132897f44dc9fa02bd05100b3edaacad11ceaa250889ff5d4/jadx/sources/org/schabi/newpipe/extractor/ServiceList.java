package org.schabi.newpipe.extractor;

import com.android.tools.r8.RecordTag;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.bandcamp.BandcampService;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.extractor.services.peertube.PeertubeService;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ServiceList {
    public static final BandcampService MediaCCC;
    public static final PeertubeService PeerTube;
    public static final List SERVICES;
    public static final BandcampService SoundCloud;
    public static final YoutubeService YouTube;

    static {
        StreamingService.ServiceInfo.MediaCapability mediaCapability = StreamingService.ServiceInfo.MediaCapability.AUDIO;
        StreamingService.ServiceInfo.MediaCapability mediaCapability2 = StreamingService.ServiceInfo.MediaCapability.VIDEO;
        StreamingService.ServiceInfo.MediaCapability mediaCapability3 = StreamingService.ServiceInfo.MediaCapability.LIVE;
        StreamingService.ServiceInfo.MediaCapability mediaCapability4 = StreamingService.ServiceInfo.MediaCapability.COMMENTS;
        int i = 0;
        YoutubeService youtubeService = new YoutubeService(0, "YouTube", EnumSet.of(mediaCapability, mediaCapability2, mediaCapability3, mediaCapability4));
        YouTube = youtubeService;
        int i2 = 1;
        int i3 = 2;
        BandcampService bandcampService = new BandcampService(i2, "SoundCloud", EnumSet.of(mediaCapability, mediaCapability4), i3);
        SoundCloud = bandcampService;
        BandcampService bandcampService2 = new BandcampService(i3, "media.ccc.de", EnumSet.of(mediaCapability, mediaCapability2), i2);
        MediaCCC = bandcampService2;
        PeertubeService peertubeService = new PeertubeService(3, "PeerTube", EnumSet.of(mediaCapability2, mediaCapability4));
        peertubeService.instance = PeertubeInstance.DEFAULT_INSTANCE;
        PeerTube = peertubeService;
        Object[] objArr = {youtubeService, bandcampService, bandcampService2, peertubeService, new BandcampService(4, "Bandcamp", EnumSet.of(mediaCapability, mediaCapability4), i)};
        ArrayList arrayList = new ArrayList(5);
        while (i < 5) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        SERVICES = DesugarCollections.unmodifiableList(arrayList);
    }
}
