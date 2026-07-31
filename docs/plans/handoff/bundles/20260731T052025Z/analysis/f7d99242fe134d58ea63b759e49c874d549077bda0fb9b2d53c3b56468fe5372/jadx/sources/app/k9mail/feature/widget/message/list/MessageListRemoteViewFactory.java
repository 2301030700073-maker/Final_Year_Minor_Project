package app.k9mail.feature.widget.message.list;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.disk.DiskLruCache;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.resources.K9CoreResourceProvider;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListRemoteViewFactory implements RemoteViewsService.RemoteViewsFactory, KoinComponent {
    public final Context context;
    public final Lazy coreResourceProvider$delegate;
    public final Lazy generalSettingsManager$delegate;
    public List messageListItems;
    public final Lazy messageListLoader$delegate;
    public int readTextColor;
    public boolean senderAboveSubject;
    public LocalMessageSearch unifiedInboxFolders;
    public int unreadTextColor;

    public MessageListRemoteViewFactory(Context context) {
        this.context = context;
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(this, 3);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.messageListLoader$delegate = ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        this.coreResourceProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(this, 4));
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(this, 5));
        this.messageListItems = EmptyList.INSTANCE;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final int getCount() {
        return this.messageListItems.size();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final long getItemId(int i) {
        return ((MessageListItem) this.messageListItems.get(i)).uniqueId;
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final RemoteViews getLoadingView() {
        Context context = this.context;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.message_list_widget_list_item_loading);
        remoteViews.setTextViewText(R.id.loadingText, context.getString(R.string.message_list_widget_list_item_loading));
        return remoteViews;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final RemoteViews getViewAt(int i) {
        RemoteViews remoteViews = new RemoteViews(this.context.getPackageName(), R.layout.message_list_widget_list_item);
        MessageListItem messageListItem = (MessageListItem) this.messageListItems.get(i);
        boolean z = messageListItem.isRead;
        String str = messageListItem.displayName;
        if (!z) {
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new StyleSpan(1), 0, str.length(), 0);
            str = spannableString;
        }
        String str2 = messageListItem.subject;
        if (!z) {
            SpannableString spannableString2 = new SpannableString(str2);
            spannableString2.setSpan(new StyleSpan(1), 0, str2.length(), 0);
            str2 = spannableString2;
        }
        if (this.senderAboveSubject) {
            remoteViews.setTextViewText(R.id.sender, str);
            remoteViews.setTextViewText(R.id.mail_subject, str2);
        } else {
            remoteViews.setTextViewText(R.id.sender, str2);
            remoteViews.setTextViewText(R.id.mail_subject, str);
        }
        remoteViews.setTextViewText(R.id.mail_date, messageListItem.displayDate);
        remoteViews.setTextViewText(R.id.mail_preview, messageListItem.preview);
        int i2 = messageListItem.threadCount;
        if (i2 > 1) {
            remoteViews.setTextViewText(R.id.thread_count, String.valueOf(i2));
            remoteViews.setInt(R.id.thread_count, "setVisibility", 0);
        } else {
            remoteViews.setInt(R.id.thread_count, "setVisibility", 8);
        }
        int i3 = z ? this.readTextColor : this.unreadTextColor;
        remoteViews.setTextColor(R.id.sender, i3);
        remoteViews.setTextColor(R.id.mail_subject, i3);
        remoteViews.setTextColor(R.id.mail_date, i3);
        remoteViews.setTextColor(R.id.mail_preview, i3);
        if (messageListItem.hasAttachments) {
            remoteViews.setInt(R.id.attachment, "setVisibility", 0);
        } else {
            remoteViews.setInt(R.id.attachment, "setVisibility", 8);
        }
        Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
        MessageReference messageReference = messageListItem.messageReference;
        Intent intent = new Intent();
        intent.putExtra("message_reference", messageReference.toIdentityString());
        remoteViews.setOnClickFillInIntent(R.id.mail_list_item, intent);
        remoteViews.setInt(R.id.chip, "setBackgroundColor", messageListItem.accountColor);
        return remoteViews;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onCreate() {
        Lazy lazy = this.coreResourceProvider$delegate;
        ((K9CoreResourceProvider) lazy.getValue()).searchUnifiedFoldersTitle();
        ((K9CoreResourceProvider) lazy.getValue()).searchUnifiedFoldersDetail();
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        localMessageSearch.id = "unified_folders";
        localMessageSearch.and(MessageSearchField.INTEGRATE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
        this.unifiedInboxFolders = localMessageSearch;
        this.senderAboveSubject = ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager$delegate.getValue())).getConfig().display.inboxSettings.isMessageListSenderAboveSubject;
        Context context = this.context;
        this.readTextColor = context.getColor(R.color.message_list_widget_text_read);
        this.unreadTextColor = context.getColor(R.color.message_list_widget_text_unread);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onDataSetChanged() {
        List list;
        LocalMessageSearch localMessageSearch = this.unifiedInboxFolders;
        if (localMessageSearch == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unifiedInboxFolders");
            throw null;
        }
        MessageListConfig messageListConfig = new MessageListConfig(localMessageSearch, ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager$delegate.getValue())).getConfig().display.inboxSettings.isThreadedViewEnabled);
        MessageListLoader messageListLoader = (MessageListLoader) this.messageListLoader$delegate.getValue();
        messageListLoader.getClass();
        try {
            list = messageListLoader.getMessageListInfo(messageListConfig);
        } catch (Exception e) {
            Log.e(e, "Error while fetching message list", new Object[0]);
            list = EmptyList.INSTANCE;
        }
        this.messageListItems = list;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onDestroy() {
    }
}
