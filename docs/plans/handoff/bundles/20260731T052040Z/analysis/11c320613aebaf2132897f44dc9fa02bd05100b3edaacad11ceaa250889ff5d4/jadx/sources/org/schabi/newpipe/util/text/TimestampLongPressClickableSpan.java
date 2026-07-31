package org.schabi.newpipe.util.text;

import android.content.Context;
import android.view.View;
import androidx.transition.Transition;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.util.text.TimestampExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class TimestampLongPressClickableSpan extends LongPressClickableSpan {
    public static final Companion Companion = new Companion();
    public final Context context;
    public final String descriptionText;
    public final StreamingService relatedInfoService;
    public final String relatedStreamUrl;
    public final TimestampExtractor.TimestampMatchDTO timestampMatchDTO;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public TimestampLongPressClickableSpan(Context context, String str, CompositeDisposable compositeDisposable, StreamingService streamingService, String str2, TimestampExtractor.TimestampMatchDTO timestampMatchDTO) {
        context.getClass();
        compositeDisposable.getClass();
        streamingService.getClass();
        str2.getClass();
        this.context = context;
        this.descriptionText = str;
        this.relatedInfoService = streamingService;
        this.relatedStreamUrl = str2;
        this.timestampMatchDTO = timestampMatchDTO;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        view.getClass();
        InternalUrlsHandler.playOnPopup(this.context, this.relatedStreamUrl, this.relatedInfoService, this.timestampMatchDTO.seconds);
    }

    @Override // org.schabi.newpipe.util.text.LongPressClickableSpan
    public final void onLongClick(View view) {
        String str;
        Companion.getClass();
        YoutubeService youtubeService = ServiceList.YouTube;
        StreamingService streamingService = this.relatedInfoService;
        boolean areEqual = Intrinsics.areEqual(streamingService, youtubeService);
        String str2 = this.relatedStreamUrl;
        TimestampExtractor.TimestampMatchDTO timestampMatchDTO = this.timestampMatchDTO;
        if (areEqual) {
            str = str2 + "&t=" + timestampMatchDTO.seconds;
        } else if (Intrinsics.areEqual(streamingService, ServiceList.SoundCloud) || Intrinsics.areEqual(streamingService, ServiceList.MediaCCC)) {
            str = str2 + "#t=" + timestampMatchDTO.seconds;
        } else if (Intrinsics.areEqual(streamingService, ServiceList.PeerTube)) {
            str = str2 + "?start=" + timestampMatchDTO.seconds;
        } else {
            str = this.descriptionText.substring(timestampMatchDTO.timestampStart, timestampMatchDTO.timestampEnd);
        }
        Transition.Impl26.copyToClipboard(this.context, str);
    }
}
