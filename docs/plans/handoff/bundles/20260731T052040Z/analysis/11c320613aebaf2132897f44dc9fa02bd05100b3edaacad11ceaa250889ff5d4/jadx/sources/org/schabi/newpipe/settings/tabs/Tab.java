package org.schabi.newpipe.settings.tabs;

import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonStringWriter;
import j$.util.Objects;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.fragments.BlankFragment;
import org.schabi.newpipe.fragments.list.channel.ChannelFragment;
import org.schabi.newpipe.fragments.list.kiosk.DefaultKioskFragment;
import org.schabi.newpipe.fragments.list.kiosk.KioskFragment;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.history.StatisticsPlaylistFragment;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.util.ServiceHelper;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class Tab {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ChannelTab extends Tab {
        public String channelName;
        public int channelServiceId;
        public String channelUrl;

        public ChannelTab(String str, int i, String str2) {
            this.channelServiceId = i;
            this.channelUrl = str;
            this.channelName = str2;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final boolean equals(Object obj) {
            if (!(obj instanceof ChannelTab)) {
                return false;
            }
            ChannelTab channelTab = (ChannelTab) obj;
            return super.equals(obj) && this.channelServiceId == channelTab.channelServiceId && this.channelUrl.equals(channelTab.channelUrl) && this.channelName.equals(channelTab.channelName);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final Fragment getFragment() {
            return ChannelFragment.getInstance(this.channelUrl, this.channelServiceId, this.channelName);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabIconRes(Context context) {
            return R.drawable.ic_tv;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabId() {
            return 6;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final String getTabName(Context context) {
            return this.channelName;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int hashCode() {
            return Objects.hash(6, Integer.valueOf(this.channelServiceId), this.channelUrl, this.channelName);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void readDataFromJson(JsonObject jsonObject) {
            this.channelServiceId = jsonObject.getInt(-1, "channel_service_id");
            this.channelUrl = jsonObject.getString("channel_url", "<no-url>");
            this.channelName = jsonObject.getString("channel_name", "<no-name>");
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void writeDataToJson(JsonStringWriter jsonStringWriter) {
            jsonStringWriter.value(this.channelServiceId, "channel_service_id");
            jsonStringWriter.value("channel_url", this.channelUrl);
            jsonStringWriter.value("channel_name", this.channelName);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes.dex */
    public final class DefaultKioskTab extends Tab {
        public static String getDefaultKioskId(Context context) {
            try {
                return (String) Utility.getService(ServiceHelper.getSelectedServiceId(context)).getKioskList().value;
            } catch (ExtractionException e) {
                ErrorInfo errorInfo = new ErrorInfo(e, UserAction.REQUESTED_KIOSK, "Loading default kiosk for selected service", (Integer) null, 24);
                ErrorUtil.Companion.getClass();
                ErrorUtil.Companion.showSnackbar(context, errorInfo);
                return "";
            }
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final Fragment getFragment() {
            return new DefaultKioskFragment();
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabIconRes(Context context) {
            return RangesKt.getKioskIcon(getDefaultKioskId(context));
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabId() {
            return 7;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final String getTabName(Context context) {
            return RangesKt.getTranslatedKioskName(context, getDefaultKioskId(context));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes.dex */
    public final class FeedGroupTab extends Tab {
        public Long feedGroupId;
        public String feedGroupName;
        public int iconId;

        public FeedGroupTab(Long l, String str, int i) {
            this.feedGroupId = l;
            this.feedGroupName = str;
            this.iconId = i;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final boolean equals(Object obj) {
            if (!(obj instanceof FeedGroupTab)) {
                return false;
            }
            FeedGroupTab feedGroupTab = (FeedGroupTab) obj;
            return super.equals(obj) && this.feedGroupId.equals(feedGroupTab.feedGroupId) && this.feedGroupName.equals(feedGroupTab.feedGroupName) && this.iconId == feedGroupTab.iconId;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final Fragment getFragment() {
            return FeedFragment.newInstance(this.feedGroupName, this.feedGroupId.longValue());
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabIconRes(Context context) {
            return this.iconId;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabId() {
            return 9;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final String getTabName(Context context) {
            return context.getString(R.string.fragment_feed_title);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int hashCode() {
            return Objects.hash(9, this.feedGroupId, this.feedGroupName, Integer.valueOf(this.iconId));
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void readDataFromJson(JsonObject jsonObject) {
            this.feedGroupId = Long.valueOf(jsonObject.getLong("feed_group_id", -1L));
            this.feedGroupName = jsonObject.getString("feed_group_name", "<no-name>");
            this.iconId = jsonObject.getInt(R.drawable.ic_asterisk, "feed_group_icon");
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void writeDataToJson(JsonStringWriter jsonStringWriter) {
            Long l = this.feedGroupId;
            if (l == null) {
                jsonStringWriter.preValue("feed_group_id");
                jsonStringWriter.raw(JsonStringWriter.NULL);
            } else {
                jsonStringWriter.preValue("feed_group_id");
                jsonStringWriter.raw(l.toString());
            }
            jsonStringWriter.value("feed_group_name", this.feedGroupName);
            jsonStringWriter.value(this.iconId, "feed_group_icon");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes.dex */
    public final class FeedTab extends Tab {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ FeedTab(int i) {
            this.$r8$classId = i;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final Fragment getFragment() {
            switch (this.$r8$classId) {
                case 0:
                    return new FeedFragment();
                case 1:
                    return new BlankFragment();
                case 2:
                    return new BookmarkFragment();
                case 3:
                    return new StatisticsPlaylistFragment();
                default:
                    return new SubscriptionFragment();
            }
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabIconRes(Context context) {
            switch (this.$r8$classId) {
                case 0:
                    return R.drawable.ic_subscriptions;
                case 1:
                    return R.drawable.ic_crop_portrait;
                case 2:
                    return R.drawable.ic_bookmark;
                case 3:
                    return R.drawable.ic_history;
                default:
                    return R.drawable.ic_tv;
            }
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabId() {
            switch (this.$r8$classId) {
                case 0:
                    return 2;
                case 1:
                    return 0;
                case 2:
                    return 3;
                case 3:
                    return 4;
                default:
                    return 1;
            }
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final String getTabName(Context context) {
            switch (this.$r8$classId) {
                case 0:
                    return context.getString(R.string.fragment_feed_title);
                case 1:
                    return "NewPipe";
                case 2:
                    return context.getString(R.string.tab_bookmarks);
                case 3:
                    return context.getString(R.string.title_activity_history);
                default:
                    return context.getString(R.string.tab_subscriptions);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class KioskTab extends Tab {
        public String kioskId;
        public int kioskServiceId;

        public KioskTab(int i, String str) {
            this.kioskServiceId = i;
            this.kioskId = str;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final boolean equals(Object obj) {
            if (!(obj instanceof KioskTab)) {
                return false;
            }
            KioskTab kioskTab = (KioskTab) obj;
            return super.equals(obj) && this.kioskServiceId == kioskTab.kioskServiceId && this.kioskId.equals(kioskTab.kioskId);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final Fragment getFragment() {
            return KioskFragment.getInstance(this.kioskServiceId, this.kioskId);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabIconRes(Context context) {
            int kioskIcon = RangesKt.getKioskIcon(this.kioskId);
            if (kioskIcon > 0) {
                return kioskIcon;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m(new StringBuilder("Kiosk ID is not valid: \""), this.kioskId, "\""));
            return 0;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabId() {
            return 5;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final String getTabName(Context context) {
            return RangesKt.getTranslatedKioskName(context, this.kioskId);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int hashCode() {
            return Objects.hash(5, Integer.valueOf(this.kioskServiceId), this.kioskId);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void readDataFromJson(JsonObject jsonObject) {
            this.kioskServiceId = jsonObject.getInt(-1, "service_id");
            this.kioskId = jsonObject.getString("kiosk_id", "<no-id>");
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void writeDataToJson(JsonStringWriter jsonStringWriter) {
            jsonStringWriter.value(this.kioskServiceId, "service_id");
            jsonStringWriter.value("kiosk_id", this.kioskId);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PlaylistTab extends Tab {
        public long playlistId;
        public String playlistName;
        public LocalItem.LocalItemType playlistType = LocalItem.LocalItemType.PLAYLIST_LOCAL_ITEM;
        public int playlistServiceId = -1;
        public String playlistUrl = "<no-url>";

        public PlaylistTab(String str, long j) {
            this.playlistName = str;
            this.playlistId = j;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final boolean equals(Object obj) {
            if (!(obj instanceof PlaylistTab)) {
                return false;
            }
            PlaylistTab playlistTab = (PlaylistTab) obj;
            return super.equals(obj) && this.playlistServiceId == playlistTab.playlistServiceId && this.playlistId == playlistTab.playlistId && this.playlistUrl.equals(playlistTab.playlistUrl) && this.playlistName.equals(playlistTab.playlistName) && this.playlistType == playlistTab.playlistType;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final Fragment getFragment() {
            if (this.playlistType == LocalItem.LocalItemType.PLAYLIST_LOCAL_ITEM) {
                return LocalPlaylistFragment.getInstance(this.playlistName, this.playlistId);
            }
            int i = this.playlistServiceId;
            String str = this.playlistUrl;
            String str2 = this.playlistName;
            PlaylistFragment playlistFragment = new PlaylistFragment();
            playlistFragment.setInitialData(str, i, str2);
            return playlistFragment;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabIconRes(Context context) {
            return R.drawable.ic_bookmark;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int getTabId() {
            return 8;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final String getTabName(Context context) {
            return this.playlistName;
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final int hashCode() {
            return Objects.hash(8, Integer.valueOf(this.playlistServiceId), Long.valueOf(this.playlistId), this.playlistUrl, this.playlistName, this.playlistType);
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void readDataFromJson(JsonObject jsonObject) {
            this.playlistServiceId = jsonObject.getInt(-1, "playlist_service_id");
            this.playlistUrl = jsonObject.getString("playlist_url", "<no-url>");
            this.playlistName = jsonObject.getString("playlist_name", "<no-name>");
            this.playlistId = jsonObject.getInt(-1, "playlist_id");
            this.playlistType = LocalItem.LocalItemType.valueOf(jsonObject.getString("playlist_type", "PLAYLIST_LOCAL_ITEM"));
        }

        @Override // org.schabi.newpipe.settings.tabs.Tab
        public final void writeDataToJson(JsonStringWriter jsonStringWriter) {
            jsonStringWriter.value(this.playlistServiceId, "playlist_service_id");
            jsonStringWriter.value("playlist_url", this.playlistUrl);
            jsonStringWriter.value("playlist_name", this.playlistName);
            long j = this.playlistId;
            jsonStringWriter.preValue("playlist_id");
            jsonStringWriter.raw(Long.toString(j));
            jsonStringWriter.value("playlist_type", this.playlistType.toString());
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public enum Type {
        BLANK(new FeedTab(1)),
        DEFAULT_KIOSK(new DefaultKioskTab()),
        SUBSCRIPTIONS(new FeedTab(4)),
        FEED(new FeedTab(0)),
        BOOKMARKS(new FeedTab(2)),
        /* JADX INFO: Fake field, exist only in values array */
        HISTORY(new FeedTab(3)),
        /* JADX INFO: Fake field, exist only in values array */
        KIOSK(new KioskTab(-1, "<no-id>")),
        /* JADX INFO: Fake field, exist only in values array */
        CHANNEL(new ChannelTab("<no-url>", -1, "<no-name>")),
        /* JADX INFO: Fake field, exist only in values array */
        PLAYLIST(new PlaylistTab("<no-name>", -1)),
        /* JADX INFO: Fake field, exist only in values array */
        FEEDGROUP(new FeedGroupTab(-1L, "<no-name>", R.drawable.ic_asterisk));

        private final Tab tab;

        Type(Tab tab) {
            this.tab = tab;
        }

        public final Tab getTab() {
            return this.tab;
        }

        public final int getTabId() {
            return this.tab.getTabId();
        }
    }

    public Tab(JsonObject jsonObject) {
        readDataFromJson(jsonObject);
    }

    public static Type typeFrom(int i) {
        for (Type type : Type.values()) {
            if (type.getTabId() == i) {
                return type;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Tab) && getTabId() == ((Tab) obj).getTabId();
    }

    public abstract Fragment getFragment();

    public abstract int getTabIconRes(Context context);

    public abstract int getTabId();

    public abstract String getTabName(Context context);

    public int hashCode() {
        return Integer.valueOf(getTabId()).hashCode();
    }

    public void readDataFromJson(JsonObject jsonObject) {
    }

    public void writeDataToJson(JsonStringWriter jsonStringWriter) {
    }
}
