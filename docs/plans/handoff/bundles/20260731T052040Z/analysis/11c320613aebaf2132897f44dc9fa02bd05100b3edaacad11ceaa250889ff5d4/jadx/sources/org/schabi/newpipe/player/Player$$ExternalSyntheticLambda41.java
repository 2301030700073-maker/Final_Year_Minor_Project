package org.schabi.newpipe.player;

import android.app.Activity;
import android.content.Context;
import android.util.Pair;
import com.google.common.collect.AbstractMapBasedMultimap;
import com.google.common.collect.ImmutableEntry;
import com.grack.nanojson.JsonObject;
import j$.util.function.Function$CC;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.i18n.Resources_fi;
import org.ocpsoft.prettytime.i18n.Resources_ja;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.services.youtube.extractors.ItagInfo;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeSubscriptionExtractor;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.subscription.SubscriptionItem;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi;
import org.schabi.newpipe.player.mediasession.SessionConnectorActionProvider;
import org.schabi.newpipe.player.notification.NotificationActionData;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;
import org.schabi.newpipe.util.ListHelper;
import org.schabi.newpipe.util.StreamItemAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda41 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Player$$ExternalSyntheticLambda41(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        TimeFormat lambda$getFormatFor$0;
        TimeFormat lambda$getFormatFor$02;
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(((MediaItemTag.AudioTrack) obj).selectedAudioStreamIndex != ((MediaItemTag.AudioTrack) obj2).selectedAudioStreamIndex);
            case 1:
                return new ImmutableEntry(obj2, obj);
            case 2:
                return ((AbstractMapBasedMultimap.AsMap) obj2).wrapEntry((Map.Entry) obj);
            case 3:
                lambda$getFormatFor$0 = ((Resources_fi) obj2).lambda$getFormatFor$0((TimeUnit) obj);
                return lambda$getFormatFor$0;
            case 4:
                lambda$getFormatFor$02 = ((Resources_ja) obj2).lambda$getFormatFor$0((TimeUnit) obj);
                return lambda$getFormatFor$02;
            case 5:
                Map.Entry entry = (Map.Entry) obj;
                return new MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO((JsonObject) obj2, (String) entry.getKey(), (JsonObject) entry.getValue());
            case 6:
                ItagInfo itagInfo = (ItagInfo) obj;
                ItagItem itagItem = itagInfo.getItagItem();
                AudioStream.Builder builder = new AudioStream.Builder();
                builder.id = String.valueOf(itagItem.id);
                String content = itagInfo.getContent();
                boolean isUrl = itagInfo.getIsUrl();
                builder.content = content;
                builder.isUrl = isUrl;
                builder.mediaFormat = itagItem.getMediaFormat();
                builder.averageBitrate = itagItem.avgBitrate;
                builder.audioTrackId = itagItem.getAudioTrackId();
                builder.audioTrackName = itagItem.getAudioTrackName();
                builder.audioLocale = itagItem.getAudioLocale();
                builder.audioTrackType = itagItem.getAudioTrackType();
                builder.itagItem = itagItem;
                StreamType streamType = ((YoutubeStreamExtractor) obj2).streamType;
                if (streamType == StreamType.LIVE_STREAM || streamType == StreamType.POST_LIVE_STREAM || !itagInfo.getIsUrl()) {
                    builder.deliveryMethod = DeliveryMethod.DASH;
                }
                return builder.build();
            case 7:
                YoutubeSubscriptionExtractor youtubeSubscriptionExtractor = (YoutubeSubscriptionExtractor) obj2;
                String[] strArr = (String[]) obj;
                String replace = strArr[1].replace("http://", "https://");
                if (replace.startsWith("https://www.youtube.com/channel/")) {
                    return new SubscriptionItem(replace, ((StreamingService) youtubeSubscriptionExtractor.mBigContentTitle).serviceId, strArr[2]);
                }
                return null;
            case 8:
                return ((Activity) obj2).getString(((StreamDialogEntry) obj).resource);
            case 9:
                return new SessionConnectorActionProvider((NotificationActionData) obj, ((MediaSessionPlayerUi) obj2).context);
            case 10:
                Map.Entry entry2 = (Map.Entry) obj;
                return new Pair((String) ((Function) entry2.getKey()).apply((PreferenceSearchItem) obj2), (Float) entry2.getValue());
            case 11:
                return new StreamItemAdapter.StreamInfoWrapper((Context) obj2, (List) obj);
            case 12:
                return ListHelper.m879$r8$lambda$Ym_KTWtQOXZPWZ4u_KnchNzCxw((Comparator) obj2, (List) obj);
            case 13:
                return ((Locale) obj).getDisplayName((Locale) obj2);
            default:
                return (Boolean) ((FeedFragment$$ExternalSyntheticLambda10) obj2).invoke(obj);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
