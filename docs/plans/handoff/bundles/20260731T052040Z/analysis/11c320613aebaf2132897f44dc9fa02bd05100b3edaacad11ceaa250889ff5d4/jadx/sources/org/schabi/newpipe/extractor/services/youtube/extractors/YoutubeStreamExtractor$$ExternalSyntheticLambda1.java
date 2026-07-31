package org.schabi.newpipe.extractor.services.youtube.extractors;

import j$.util.function.Function$CC;
import java.util.function.Function;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.VideoStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class YoutubeStreamExtractor$$ExternalSyntheticLambda1 implements Function {
    public final /* synthetic */ YoutubeStreamExtractor f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ YoutubeStreamExtractor$$ExternalSyntheticLambda1(YoutubeStreamExtractor youtubeStreamExtractor, boolean z) {
        this.f$0 = youtubeStreamExtractor;
        this.f$1 = z;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        ItagInfo itagInfo = (ItagInfo) obj;
        ItagItem itagItem = itagInfo.getItagItem();
        String valueOf = String.valueOf(itagItem.id);
        String content = itagInfo.getContent();
        boolean isUrl = itagInfo.getIsUrl();
        MediaFormat mediaFormat = itagItem.getMediaFormat();
        String str = itagItem.resolutionString;
        if (str == null) {
            str = "";
        }
        String str2 = str;
        DeliveryMethod deliveryMethod = (this.f$0.streamType == StreamType.VIDEO_STREAM && itagInfo.getIsUrl()) ? DeliveryMethod.PROGRESSIVE_HTTP : DeliveryMethod.DASH;
        if (valueOf == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
            return null;
        }
        if (content != null) {
            return new VideoStream(valueOf, content, isUrl, mediaFormat, deliveryMethod, str2, this.f$1, null, itagItem);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
        return null;
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
