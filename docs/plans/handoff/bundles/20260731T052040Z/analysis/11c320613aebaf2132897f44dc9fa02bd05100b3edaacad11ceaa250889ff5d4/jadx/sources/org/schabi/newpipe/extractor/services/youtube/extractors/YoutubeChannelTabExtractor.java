package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.work.OperationKt;
import com.android.tools.r8.RecordTag;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.function.Function$CC;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeLiveLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class YoutubeChannelTabExtractor extends SearchExtractor {
    public YoutubeChannelHelper$ChannelHeader channelHeader;
    public String channelId;
    public JsonObject jsonResponse;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class YoutubeGridShowRendererChannelInfoItemExtractor extends YoutubeBaseShowInfoItemExtractor {
        public final String channelName;
        public final String channelUrl;
        public final int verifiedStatus;

        public YoutubeGridShowRendererChannelInfoItemExtractor(int i, JsonObject jsonObject, String str, String str2) {
            super(jsonObject);
            this.verifiedStatus = i;
            this.channelName = str;
            this.channelUrl = str2;
        }

        @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
        public final String getUploaderName() {
            return this.channelName;
        }

        @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
        public final String getUploaderUrl() {
            return this.channelUrl;
        }

        @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
        public final boolean isUploaderVerified() {
            int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(this.verifiedStatus);
            if (ordinal == 0) {
                return true;
            }
            if (ordinal == 1) {
                return false;
            }
            Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader verification status");
            return false;
        }
    }

    public static void commitLockup(MultiInfoItemsCollector multiInfoItemsCollector, final int i, final String str, final String str2, TimeAgoParser timeAgoParser, JsonObject jsonObject) {
        JsonObject object = jsonObject.getObject("lockupViewModel");
        String string = object.getString("contentType", null);
        if ("LOCKUP_CONTENT_TYPE_PLAYLIST".equals(string) || "LOCKUP_CONTENT_TYPE_PODCAST".equals(string)) {
            multiInfoItemsCollector.commit(new YoutubeMixOrPlaylistLockupInfoItemExtractor(object) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.4
                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeMixOrPlaylistLockupInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                public final String getUploaderName() {
                    String str3 = str;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeMixOrPlaylistLockupInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                public final String getUploaderUrl() {
                    String str3 = str2;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeMixOrPlaylistLockupInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                public final boolean isUploaderVerified() {
                    int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
                    if (ordinal == 0) {
                        return true;
                    }
                    if (ordinal != 1) {
                        return super.isUploaderVerified();
                    }
                    return false;
                }
            });
        } else if ("LOCKUP_CONTENT_TYPE_VIDEO".equals(string)) {
            multiInfoItemsCollector.commit(new YoutubeStreamInfoItemLockupExtractor(object, timeAgoParser) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.3
                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final List getUploaderAvatars() {
                    return Collections.EMPTY_LIST;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final String getUploaderName() {
                    String str3 = str;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final String getUploaderUrl() {
                    String str3 = str2;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemLockupExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final boolean isUploaderVerified() {
                    return i == 1;
                }
            });
        }
    }

    public final Optional collectItem(MultiInfoItemsCollector multiInfoItemsCollector, JsonObject jsonObject, final int i, final String str, final String str2) {
        TimeAgoParser timeAgoParser = getTimeAgoParser();
        if (jsonObject.containsKey("richItemRenderer")) {
            JsonObject object = jsonObject.getObject("richItemRenderer").getObject("content");
            if (object.containsKey("videoRenderer")) {
                multiInfoItemsCollector.commit(new YoutubeStreamInfoItemExtractor(object.getObject("videoRenderer"), timeAgoParser) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.5
                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderName() {
                        String str3 = str;
                        return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderUrl() {
                        String str3 = str2;
                        return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final boolean isUploaderVerified() {
                        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
                        if (ordinal == 0) {
                            return true;
                        }
                        if (ordinal != 1) {
                            return super.isUploaderVerified();
                        }
                        return false;
                    }
                });
            } else if (object.containsKey("reelItemRenderer")) {
                multiInfoItemsCollector.commit(new YoutubeReelInfoItemExtractor(object.getObject("reelItemRenderer")) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.1
                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderName() {
                        String str3 = str;
                        if (Utils.isNullOrEmpty(str3)) {
                            return null;
                        }
                        return str3;
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderUrl() {
                        String str3 = str2;
                        if (Utils.isNullOrEmpty(str3)) {
                            return null;
                        }
                        return str3;
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final boolean isUploaderVerified() {
                        return i == 1;
                    }
                });
            } else if (object.containsKey("shortsLockupViewModel")) {
                multiInfoItemsCollector.commit(new StreamInfoItemExtractor(i, object.getObject("shortsLockupViewModel"), str, str2) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.2
                    public final JsonObject shortsLockupViewModel;
                    public final /* synthetic */ String val$channelName;
                    public final /* synthetic */ String val$channelUrl;
                    public final /* synthetic */ int val$channelVerifiedStatus;

                    {
                        this.val$channelName = str;
                        this.val$channelUrl = str2;
                        this.shortsLockupViewModel = r2;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final /* synthetic */ ContentAvailability getContentAvailability() {
                        return ContentAvailability.UNKNOWN;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final long getDuration() {
                        return -1L;
                    }

                    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
                    public final String getName() {
                        return RecordTag.m480m(this.shortsLockupViewModel, "overlayMetadata", "primaryText", "content", (String) null);
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final /* synthetic */ String getShortDescription() {
                        return null;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final StreamType getStreamType() {
                        return StreamType.VIDEO_STREAM;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getTextualUploadDate() {
                        return null;
                    }

                    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
                    public final List getThumbnails() {
                        JsonObject jsonObject2 = this.shortsLockupViewModel;
                        return jsonObject2.containsKey("thumbnail") ? YoutubeParsingHelper.getImagesFromThumbnailsArray(jsonObject2.getObject("thumbnail").getArray("sources")) : YoutubeParsingHelper.getImagesFromThumbnailsArray(jsonObject2.getObject("thumbnailViewModel").getObject("thumbnailViewModel").getObject("image").getArray("sources"));
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final DateWrapper getUploadDate() {
                        return null;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final List getUploaderAvatars() {
                        return Collections.EMPTY_LIST;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderName() {
                        String str3 = this.val$channelName;
                        if (Utils.isNullOrEmpty(str3)) {
                            return null;
                        }
                        return str3;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final String getUploaderUrl() {
                        String str3 = this.val$channelUrl;
                        if (Utils.isNullOrEmpty(str3)) {
                            return null;
                        }
                        return str3;
                    }

                    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
                    public final String getUrl() {
                        JsonObject jsonObject2 = this.shortsLockupViewModel;
                        String string = jsonObject2.getObject("onTap").getObject("innertubeCommand").getObject("reelWatchEndpoint").getString("videoId", null);
                        if (Utils.isNullOrEmpty(string)) {
                            string = RecordTag.m(jsonObject2, "inlinePlayerData", "onVisible", "innertubeCommand", "watchEndpoint").getString("videoId", null);
                        }
                        if (Utils.isNullOrEmpty(string)) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not get video ID");
                            return null;
                        }
                        try {
                            return YoutubeStreamLinkHandlerFactory.INSTANCE.getUrl(string);
                        } catch (Exception e) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not get URL", e);
                            return null;
                        }
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final long getViewCount() {
                        String m480m = RecordTag.m480m(this.shortsLockupViewModel, "overlayMetadata", "secondaryText", "content", (String) null);
                        if (Utils.isNullOrEmpty(m480m)) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not get short view count");
                            return 0L;
                        }
                        if (m480m.contains("✪")) {
                            return -1L;
                        }
                        if (m480m.toLowerCase().contains("no views")) {
                            return 0L;
                        }
                        return Utils.mixedNumberWordToLong(m480m);
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final boolean isAd() {
                        return false;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final boolean isShortFormContent() {
                        return true;
                    }

                    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                    public final boolean isUploaderVerified() {
                        return this.val$channelVerifiedStatus == 1;
                    }
                });
            } else if (object.containsKey("playlistRenderer")) {
                multiInfoItemsCollector.commit(new YoutubePlaylistInfoItemExtractor(object.getObject("playlistRenderer")) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.6
                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                    public final String getUploaderName() {
                        String str3 = str;
                        return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                    public final String getUploaderUrl() {
                        String str3 = str2;
                        return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                    }

                    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                    public final boolean isUploaderVerified() {
                        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
                        if (ordinal == 0) {
                            return true;
                        }
                        if (ordinal != 1) {
                            return super.isUploaderVerified();
                        }
                        return false;
                    }
                });
            } else if (object.containsKey("lockupViewModel")) {
                commitLockup(multiInfoItemsCollector, i, str, str2, timeAgoParser, object);
            }
        } else if (jsonObject.containsKey("gridVideoRenderer")) {
            multiInfoItemsCollector.commit(new YoutubeStreamInfoItemExtractor(jsonObject.getObject("gridVideoRenderer"), timeAgoParser) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.5
                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final String getUploaderName() {
                    String str3 = str;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final String getUploaderUrl() {
                    String str3 = str2;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor, org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
                public final boolean isUploaderVerified() {
                    int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
                    if (ordinal == 0) {
                        return true;
                    }
                    if (ordinal != 1) {
                        return super.isUploaderVerified();
                    }
                    return false;
                }
            });
        } else if (jsonObject.containsKey("gridPlaylistRenderer")) {
            multiInfoItemsCollector.commit(new YoutubePlaylistInfoItemExtractor(jsonObject.getObject("gridPlaylistRenderer")) { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.6
                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                public final String getUploaderName() {
                    String str3 = str;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                public final String getUploaderUrl() {
                    String str3 = str2;
                    return Utils.isNullOrEmpty(str3) ? super.getUploaderName() : str3;
                }

                @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor, org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
                public final boolean isUploaderVerified() {
                    int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
                    if (ordinal == 0) {
                        return true;
                    }
                    if (ordinal != 1) {
                        return super.isUploaderVerified();
                    }
                    return false;
                }
            });
        } else if (jsonObject.containsKey("gridShowRenderer")) {
            multiInfoItemsCollector.commit(new YoutubeGridShowRendererChannelInfoItemExtractor(i, jsonObject.getObject("gridShowRenderer"), str, str2));
        } else {
            if (jsonObject.containsKey("shelfRenderer")) {
                return collectItem(multiInfoItemsCollector, jsonObject.getObject("shelfRenderer").getObject("content"), i, str, str2);
            }
            if (jsonObject.containsKey("itemSectionRenderer")) {
                return collectItemsFrom(multiInfoItemsCollector, jsonObject.getObject("itemSectionRenderer").getArray("contents"), i, str, str2);
            }
            if (jsonObject.containsKey("horizontalListRenderer")) {
                return collectItemsFrom(multiInfoItemsCollector, jsonObject.getObject("horizontalListRenderer").getArray("items"), i, str, str2);
            }
            if (jsonObject.containsKey("expandedShelfContentsRenderer")) {
                return collectItemsFrom(multiInfoItemsCollector, jsonObject.getObject("expandedShelfContentsRenderer").getArray("items"), i, str, str2);
            }
            if (jsonObject.containsKey("lockupViewModel")) {
                commitLockup(multiInfoItemsCollector, i, str, str2, timeAgoParser, jsonObject);
            } else if (jsonObject.containsKey("continuationItemRenderer")) {
                return Optional.ofNullable(jsonObject.getObject("continuationItemRenderer"));
            }
        }
        return Optional.empty();
    }

    public final Optional collectItemsFrom(final MultiInfoItemsCollector multiInfoItemsCollector, JsonArray jsonArray, final int i, final String str, final String str2) {
        return (Optional) jsonArray.streamAsJsonObjects().map(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo646andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String str3 = str2;
                return YoutubeChannelTabExtractor.this.collectItem(multiInfoItemsCollector, (JsonObject) obj, i, str, str3);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).reduce(Optional.empty(), new StringUtil$$ExternalSyntheticLambda3(2));
    }

    public String getChannelName() {
        return OperationKt.getChannelName(this.channelHeader, OperationKt.getChannelAgeGateRenderer(this.jsonResponse), this.jsonResponse);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getId() {
        return OperationKt.getChannelId(this.channelHeader, this.jsonResponse, this.channelId);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b5 A[LOOP:0: B:18:0x00b3->B:19:0x00b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage getInitialPage() {
        /*
            r10 = this;
            org.schabi.newpipe.extractor.MultiInfoItemsCollector r1 = new org.schabi.newpipe.extractor.MultiInfoItemsCollector
            org.schabi.newpipe.extractor.StreamingService r0 = r10.service
            int r0 = r0.serviceId
            r1.<init>(r0)
            com.grack.nanojson.JsonArray r0 = new com.grack.nanojson.JsonArray
            r0.<init>()
            j$.util.Optional r2 = r10.getTabData()
            boolean r3 = r2.isPresent()
            r6 = 0
            if (r3 == 0) goto L6d
            java.lang.Object r0 = r2.get()
            com.grack.nanojson.JsonObject r0 = (com.grack.nanojson.JsonObject) r0
            java.lang.String r2 = "content"
            com.grack.nanojson.JsonObject r0 = r0.getObject(r2)
            java.lang.String r2 = "sectionListRenderer"
            com.grack.nanojson.JsonObject r3 = r0.getObject(r2)
            java.lang.String r4 = "contents"
            com.grack.nanojson.JsonArray r3 = r3.getArray(r4)
            com.grack.nanojson.JsonObject r3 = r3.getObject(r6)
            java.lang.String r5 = "itemSectionRenderer"
            com.grack.nanojson.JsonObject r3 = r3.getObject(r5)
            com.grack.nanojson.JsonArray r3 = r3.getArray(r4)
            com.grack.nanojson.JsonObject r3 = r3.getObject(r6)
            java.lang.String r5 = "gridRenderer"
            com.grack.nanojson.JsonObject r3 = r3.getObject(r5)
            java.lang.String r5 = "items"
            com.grack.nanojson.JsonArray r3 = r3.getArray(r5)
            boolean r5 = r3.isEmpty()
            if (r5 == 0) goto L6f
            java.lang.String r3 = "richGridRenderer"
            com.grack.nanojson.JsonObject r3 = r0.getObject(r3)
            com.grack.nanojson.JsonArray r3 = r3.getArray(r4)
            boolean r5 = r3.isEmpty()
            if (r5 == 0) goto L6f
            com.grack.nanojson.JsonObject r0 = r0.getObject(r2)
            com.grack.nanojson.JsonArray r0 = r0.getArray(r4)
        L6d:
            r2 = r0
            goto L70
        L6f:
            r2 = r3
        L70:
            org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader r0 = r10.channelHeader
            r7 = 2
            r8 = 1
            r9 = 3
            if (r0 != 0) goto L79
            r3 = r9
            goto L83
        L79:
            boolean r0 = androidx.work.OperationKt.isChannelVerified(r0)
            if (r0 == 0) goto L81
            r0 = r8
            goto L82
        L81:
            r0 = r7
        L82:
            r3 = r0
        L83:
            java.lang.String r4 = r10.getChannelName()
            java.lang.String r5 = r10.getUrl()
            r0 = r10
            j$.util.Optional r10 = r0.collectItemsFrom(r1, r2, r3, r4, r5)
            r2 = 0
            java.lang.Object r10 = r10.orElse(r2)
            com.grack.nanojson.JsonObject r10 = (com.grack.nanojson.JsonObject) r10
            if (r3 == r8) goto La4
            if (r3 == r7) goto La1
            if (r3 != r9) goto La0
            java.lang.String r2 = "UNKNOWN"
            goto La6
        La0:
            throw r2
        La1:
            java.lang.String r2 = "UNVERIFIED"
            goto La6
        La4:
            java.lang.String r2 = "VERIFIED"
        La6:
            java.lang.Object[] r3 = new java.lang.Object[r9]
            r3[r6] = r4
            r3[r8] = r5
            r3[r7] = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>(r9)
        Lb3:
            if (r6 >= r9) goto Lbc
            r4 = r3[r6]
            int r6 = com.android.tools.r8.RecordTag.m(r4, r2, r4, r6, r8)
            goto Lb3
        Lbc:
            java.util.List r2 = j$.util.DesugarCollections.unmodifiableList(r2)
            org.schabi.newpipe.extractor.Page r10 = r0.getNextPageFrom(r10, r2)
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r0 = new org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage
            r0.<init>(r1, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.getInitialPage():org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage");
    }

    public final Page getNextPageFrom(JsonObject jsonObject, List list) {
        if (Utils.isNullOrEmpty(jsonObject)) {
            return null;
        }
        String m480m = RecordTag.m480m(jsonObject, "continuationEndpoint", "continuationCommand", "token", (String) null);
        StreamingService streamingService = this.service;
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(streamingService.getLocalization(), streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(m480m, "continuation");
        return new Page("https://www.youtube.com/youtubei/v1/browse?prettyPrint=false", null, list, null, Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        String str;
        String str2;
        String str3;
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        List ids = page.getIds();
        StreamingService streamingService = this.service;
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(streamingService.serviceId);
        JsonArray array = ((JsonObject) YoutubeParsingHelper.getJsonPostResponse("browse", page.getBody(), streamingService.getLocalization()).getArray("onResponseReceivedActions").streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(22)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(6)).findFirst().orElse(new JsonObject())).getArray("continuationItems");
        int i = 3;
        if (ids.size() >= 3) {
            String str4 = (String) ids.get(0);
            str2 = (String) ids.get(1);
            try {
                str3 = (String) ids.get(2);
            } catch (IllegalArgumentException unused) {
            }
            if (str3 != null) {
                if (str3.equals("VERIFIED")) {
                    i = 1;
                } else if (str3.equals("UNVERIFIED")) {
                    i = 2;
                } else if (!str3.equals("UNKNOWN")) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No enum constant org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor.VerifiedStatus.".concat(str3));
                }
                str = str4;
            } else {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Name is null");
            }
            i = 0;
            str = str4;
        } else {
            str = null;
            str2 = null;
        }
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, getNextPageFrom((JsonObject) collectItemsFrom(multiInfoItemsCollector, array, i, str, str2).orElse(null), ids));
    }

    public Optional getTabData() {
        return this.jsonResponse.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(23)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(7)).filter(new NewPipe$$ExternalSyntheticLambda2(YoutubeLiveLinkHandlerFactory.getUrlSuffix(getName()), 9)).findFirst().filter(new JsonArray$$ExternalSyntheticLambda0(24));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getUrl() {
        try {
            String str = "channel/" + getId();
            Object[] objArr = {getName()};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            return "https://www.youtube.com/" + str + YoutubeLiveLinkHandlerFactory.getUrlSuffix((String) DesugarCollections.unmodifiableList(arrayList).get(0));
        } catch (ParsingException unused) {
            return this.linkHandler.getUrl();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public void onFetchPage(CloseableKt closeableKt) {
        String name;
        String str;
        String resolveChannelId = OperationKt.resolveChannelId(this.linkHandler.getId());
        name = getName();
        name.getClass();
        switch (name) {
            case "playlists":
                str = "EglwbGF5bGlzdHPyBgQKAkIA";
                break;
            case "albums":
                str = "EghyZWxlYXNlc_IGBQoDsgEA";
                break;
            case "shorts":
                str = "EgZzaG9ydHPyBgUKA5oBAA%3D%3D";
                break;
            case "videos":
                str = "EgZ2aWRlb3PyBgQKAjoA";
                break;
            case "livestreams":
                str = "EgdzdHJlYW1z8gYECgJ6AA%3D%3D";
                break;
            default:
                throw new ParsingException("Unsupported channel tab: ".concat(name));
        }
        StreamingService streamingService = this.service;
        TokenData channelResponse = OperationKt.getChannelResponse(resolveChannelId, str, streamingService.getContentCountry(), streamingService.getLocalization());
        JsonObject jsonObject = (JsonObject) channelResponse.builder;
        this.jsonResponse = jsonObject;
        this.channelHeader = OperationKt.getChannelHeader(jsonObject);
        this.channelId = (String) channelResponse.value;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class VideosTabExtractor extends YoutubeChannelTabExtractor {
        public final String channelId;
        public final String channelName;
        public final String channelUrl;
        public final JsonObject tabRenderer;

        public VideosTabExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler, JsonObject jsonObject, YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader, String str, String str2, String str3) {
            super(streamingService, listLinkHandler, 0);
            this.channelHeader = youtubeChannelHelper$ChannelHeader;
            this.tabRenderer = jsonObject;
            this.channelId = str2;
            this.channelName = str;
            this.channelUrl = str3;
        }

        @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor
        public final String getChannelName() {
            return this.channelName;
        }

        @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor, org.schabi.newpipe.extractor.ListExtractor
        public final String getId() {
            return this.channelId;
        }

        @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor
        public final Optional getTabData() {
            return Optional.of(this.tabRenderer);
        }

        @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor, org.schabi.newpipe.extractor.ListExtractor
        public final String getUrl() {
            return this.channelUrl;
        }

        @Override // org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor, org.schabi.newpipe.extractor.ListExtractor
        public final void onFetchPage(CloseableKt closeableKt) {
        }
    }
}
