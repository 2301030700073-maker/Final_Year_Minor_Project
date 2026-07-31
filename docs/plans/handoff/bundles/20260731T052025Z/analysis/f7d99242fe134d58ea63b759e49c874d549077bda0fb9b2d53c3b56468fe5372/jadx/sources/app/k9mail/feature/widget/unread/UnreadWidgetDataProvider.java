package app.k9mail.feature.widget.unread;

import android.content.Context;
import android.content.Intent;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.Preferences;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import kotlin.Lazy;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetDataProvider {
    public final Context context;
    public final K9CoreResourceProvider coreResourceProvider;
    public final DefaultFolderProvider defaultFolderProvider;
    public final FolderNameFormatter folderNameFormatter;
    public final DefaultFolderRepository folderRepository;
    public final Logger logger;
    public final DefaultMessageCountsProvider messageCountsProvider;
    public final Preferences preferences;

    public UnreadWidgetDataProvider(Context context, Preferences preferences, DefaultMessageCountsProvider defaultMessageCountsProvider, DefaultFolderProvider defaultFolderProvider, DefaultFolderRepository defaultFolderRepository, FolderNameFormatter folderNameFormatter, K9CoreResourceProvider k9CoreResourceProvider, Logger logger) {
        this.context = context;
        this.preferences = preferences;
        this.messageCountsProvider = defaultMessageCountsProvider;
        this.defaultFolderProvider = defaultFolderProvider;
        this.folderRepository = defaultFolderRepository;
        this.folderNameFormatter = folderNameFormatter;
        this.coreResourceProvider = k9CoreResourceProvider;
        this.logger = logger;
    }

    public final Intent getClickIntentForFolder(LegacyAccountDto legacyAccountDto, long j) {
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        localMessageSearch.addAllowedFolder(j);
        localMessageSearch.addAccountUuid(legacyAccountDto.uuid);
        Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
        Intent intentDisplaySearch = MessageHomeActivity.Companion.intentDisplaySearch(this.context, localMessageSearch, false, true);
        intentDisplaySearch.addFlags(131072);
        return intentDisplaySearch;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getFolderDisplayName(net.thunderbird.core.android.account.LegacyAccountDto r5, long r6, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$getFolderDisplayName$1
            if (r0 == 0) goto L13
            r0 = r8
            app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$getFolderDisplayName$1 r0 = (app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$getFolderDisplayName$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$getFolderDisplayName$1 r0 = new app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$getFolderDisplayName$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            long r6 = r0.J$0
            net.thunderbird.core.android.account.LegacyAccountDto r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L46
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            net.thunderbird.feature.account.AccountId r8 = r5.id
            r0.L$0 = r5
            r0.J$0 = r6
            r0.label = r3
            app.k9mail.legacy.mailstore.DefaultFolderRepository r1 = r4.folderRepository
            java.lang.Object r8 = r1.getFolder(r8, r6, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r0) goto L46
            return r0
        L46:
            net.thunderbird.feature.mail.folder.api.Folder r8 = (net.thunderbird.feature.mail.folder.api.Folder) r8
            if (r8 == 0) goto L51
            app.k9mail.legacy.ui.folder.FolderNameFormatter r4 = r4.folderNameFormatter
            java.lang.String r4 = r4.displayName(r8)
            return r4
        L51:
            androidx.compose.ui.text.platform.AndroidTextPaint$$ExternalSyntheticLambda0 r8 = new androidx.compose.ui.text.platform.AndroidTextPaint$$ExternalSyntheticLambda0
            r8.<init>(r5, r6, r3)
            r5 = 2
            net.thunderbird.core.logging.Logger r4 = r4.logger
            java.lang.String r6 = "UnreadWidgetDataProvider"
            kotlinx.io.Sink$CC.error$default(r4, r6, r2, r8, r5)
            java.lang.String r4 = ""
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.widget.unread.UnreadWidgetDataProvider.getFolderDisplayName(net.thunderbird.core.android.account.LegacyAccountDto, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadAccountData(app.k9mail.feature.widget.unread.UnreadWidgetConfiguration r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadAccountData$1
            if (r0 == 0) goto L13
            r0 = r10
            app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadAccountData$1 r0 = (app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadAccountData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadAccountData$1 r0 = new app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadAccountData$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L36
            if (r1 != r3) goto L30
            java.lang.String r9 = r0.L$2
            net.thunderbird.core.android.account.LegacyAccountDto r1 = r0.L$1
            app.k9mail.feature.widget.unread.UnreadWidgetConfiguration r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r7 = r10
            r10 = r9
            r9 = r0
            r0 = r7
            goto L64
        L30:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r2
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            com.fsck.k9.Preferences r10 = r8.preferences
            java.lang.String r1 = r9.accountUuid
            net.thunderbird.core.android.account.LegacyAccountDto r1 = r10.getAccount(r1)
            if (r1 != 0) goto L44
            return r2
        L44:
            java.lang.String r10 = r1.getDisplayName()
            kotlinx.coroutines.scheduling.DefaultScheduler r4 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r4 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            androidx.datastore.core.DataStoreImpl$data$1$3 r5 = new androidx.datastore.core.DataStoreImpl$data$1$3
            r6 = 25
            r5.<init>(r8, r1, r2, r6)
            r0.L$0 = r9
            r0.L$1 = r1
            r0.L$2 = r10
            r0.label = r3
            java.lang.Object r0 = kotlinx.coroutines.JobKt.withContext(r4, r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r2) goto L64
            return r2
        L64:
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            com.fsck.k9.ui.messagelist.DefaultFolderProvider r2 = r8.defaultFolderProvider
            long r2 = r2.getDefaultFolder(r1)
            android.content.Intent r8 = r8.getClickIntentForFolder(r1, r2)
            app.k9mail.feature.widget.unread.UnreadWidgetData r1 = new app.k9mail.feature.widget.unread.UnreadWidgetData
            r1.<init>(r9, r10, r0, r8)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.widget.unread.UnreadWidgetDataProvider.loadAccountData(app.k9mail.feature.widget.unread.UnreadWidgetConfiguration, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadFolderData(app.k9mail.feature.widget.unread.UnreadWidgetConfiguration r16, kotlin.coroutines.jvm.internal.ContinuationImpl r17) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.widget.unread.UnreadWidgetDataProvider.loadFolderData(app.k9mail.feature.widget.unread.UnreadWidgetConfiguration, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadUnifiedFoldersData(app.k9mail.feature.widget.unread.UnreadWidgetConfiguration r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadUnifiedFoldersData$1
            if (r0 == 0) goto L13
            r0 = r10
            app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadUnifiedFoldersData$1 r0 = (app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadUnifiedFoldersData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadUnifiedFoldersData$1 r0 = new app.k9mail.feature.widget.unread.UnreadWidgetDataProvider$loadUnifiedFoldersData$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2e
            java.lang.String r9 = r0.L$2
            net.thunderbird.feature.search.legacy.SearchAccount r1 = r0.L$1
            app.k9mail.feature.widget.unread.UnreadWidgetConfiguration r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r4 = r9
            r9 = r0
            goto L7c
        L2e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r2
        L34:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String r10 = r9.accountUuid
            java.lang.String r1 = "unified_folders"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L93
            com.fsck.k9.resources.K9CoreResourceProvider r10 = r8.coreResourceProvider
            java.lang.String r4 = r10.searchUnifiedFoldersTitle()
            java.lang.String r10 = r10.searchUnifiedFoldersDetail()
            net.thunderbird.feature.search.legacy.LocalMessageSearch r5 = new net.thunderbird.feature.search.legacy.LocalMessageSearch
            r5.<init>()
            r5.id = r1
            net.thunderbird.feature.search.legacy.api.MessageSearchField r1 = net.thunderbird.feature.search.legacy.api.MessageSearchField.INTEGRATE
            java.lang.String r6 = "1"
            net.thunderbird.feature.search.legacy.api.SearchAttribute r7 = net.thunderbird.feature.search.legacy.api.SearchAttribute.EQUALS
            r5.and(r1, r6, r7)
            net.thunderbird.feature.search.legacy.SearchAccount r1 = new net.thunderbird.feature.search.legacy.SearchAccount
            r1.<init>(r5, r4, r10)
            kotlinx.coroutines.scheduling.DefaultScheduler r10 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r10 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            androidx.datastore.core.DataStoreImpl$data$1$3 r5 = new androidx.datastore.core.DataStoreImpl$data$1$3
            r6 = 26
            r5.<init>(r8, r1, r2, r6)
            r0.L$0 = r9
            r0.L$1 = r1
            r0.L$2 = r4
            r0.label = r3
            java.lang.Object r10 = kotlinx.coroutines.JobKt.withContext(r10, r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r0) goto L7c
            return r0
        L7c:
            java.lang.Number r10 = (java.lang.Number) r10
            int r10 = r10.intValue()
            kotlin.Lazy r0 = com.fsck.k9.activity.MessageHomeActivity.coreResourceProvider$delegate
            net.thunderbird.feature.search.legacy.LocalMessageSearch r0 = r1.relatedSearch
            r1 = 0
            android.content.Context r8 = r8.context
            android.content.Intent r8 = com.fsck.k9.activity.MessageHomeActivity.Companion.intentDisplaySearch(r8, r0, r1, r3)
            app.k9mail.feature.widget.unread.UnreadWidgetData r0 = new app.k9mail.feature.widget.unread.UnreadWidgetData
            r0.<init>(r9, r4, r10, r8)
            return r0
        L93:
            java.lang.String r8 = "SearchAccount expected"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.widget.unread.UnreadWidgetDataProvider.loadUnifiedFoldersData(app.k9mail.feature.widget.unread.UnreadWidgetConfiguration, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
