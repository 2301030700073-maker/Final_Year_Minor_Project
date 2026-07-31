package org.schabi.newpipe.util.text;

import android.content.Context;
import android.content.Intent;
import coil3.decode.StaticImageDecoderKt;
import java.util.regex.Pattern;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.player.PlayerIntentType;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.TimestampChangeData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class InternalUrlsHandler {
    public static final Pattern AMPERSAND_TIMESTAMP_PATTERN = Pattern.compile("(.*)&t=(\\d+)");

    public static boolean playOnPopup(Context context, String str, StreamingService streamingService, int i) {
        Cookie.Companion streamLHFactory = streamingService.getStreamLHFactory();
        try {
            StaticImageDecoderKt.startForegroundService(context, new Intent(context, (Class<?>) PlayerService.class).putExtra("player_intent_type", PlayerIntentType.TimestampChange).putExtra("player_intent_data", new TimestampChangeData(streamingService.serviceId, i, streamLHFactory.getUrl(streamLHFactory.getId(str)))));
            return true;
        } catch (ParsingException unused) {
            return false;
        }
    }
}
