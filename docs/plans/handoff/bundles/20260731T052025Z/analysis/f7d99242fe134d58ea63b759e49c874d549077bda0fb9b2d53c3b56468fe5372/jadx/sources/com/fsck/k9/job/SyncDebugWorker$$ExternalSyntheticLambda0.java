package com.fsck.k9.job;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Updater;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.network.CacheStrategy;
import coil3.network.ConcurrentRequestStrategy;
import coil3.util.ServiceLoaderComponentRegistry;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.controller.MessagingController;
import java.util.EnumSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncDebugWorker$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SyncDebugWorker$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        CacheStrategy cacheStrategy;
        CacheStrategy cacheStrategy2;
        ConcurrentRequestStrategy concurrentRequestStrategy;
        CacheStrategy cacheStrategy3;
        List fetchers_delegate$lambda$0;
        List decoders_delegate$lambda$0;
        switch (this.$r8$classId) {
            case 0:
                return "Failed to export log";
            case 1:
                cacheStrategy = CacheStrategy.DEFAULT;
                return cacheStrategy;
            case 2:
                cacheStrategy2 = CacheStrategy.DEFAULT;
                return cacheStrategy2;
            case 3:
                concurrentRequestStrategy = ConcurrentRequestStrategy.UNCOORDINATED;
                return concurrentRequestStrategy;
            case 4:
                cacheStrategy3 = CacheStrategy.DEFAULT;
                return cacheStrategy3;
            case 5:
                fetchers_delegate$lambda$0 = ServiceLoaderComponentRegistry.fetchers_delegate$lambda$0();
                return fetchers_delegate$lambda$0;
            case 6:
                decoders_delegate$lambda$0 = ServiceLoaderComponentRegistry.decoders_delegate$lambda$0();
                return decoders_delegate$lambda$0;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                return "The account property is null. Skipping drawer configuration. ";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
                return "Switching to split view due to unfold";
            case 9:
                Lazy lazy3 = MessageHomeActivity.coreResourceProvider$delegate;
                return "Switching to single pane view due to fold";
            case 10:
                int i = AccountSetupComposition.$r8$clinit;
                return Updater.mutableStateOf$default(Boolean.TRUE);
            case 11:
                return "refreshFolderList() called";
            case BasicTextKt.ShiftMeta /* 12 */:
                return MessagingController.MoveOrCopyFlavor.MOVE_AND_MARK_AS_READ;
            case 13:
                return MessagingController.MoveOrCopyFlavor.MOVE;
            case 14:
                EnumSet enumSet = MessagingController.SYNC_FLAGS;
                return "Error while loading remote message";
            case OffsetKt.Horizontal /* 15 */:
                return "getOutboxFolderId: Couldn't find Outbox folder.";
            case 16:
                return "Creating Outbox folder.";
            case 17:
                return "Failed to create Outbox folder.";
            case 18:
                return "hasPendingMessages: Couldn't check for pending messages.";
            case 19:
                return "Failed to save preferences";
            case 20:
                return "Committing preference changes";
            case 21:
                return "Loading preferences from DB into Storage";
            case 22:
                return "Creating Storage database";
            case 23:
                return "fetching IMAP prefix";
            case 24:
                return "No Imap Prefix detected, skipping db migration";
            case 25:
                return "failed to fetch IMAP prefix due to authentication error. skipping db migration";
            case 26:
                return "failed to fetch IMAP prefix due to network error. skipping db migration";
            case 27:
                return "Could not abort remote search before going back";
            case 28:
                return "Remote search in progress, attempting to abort...";
            default:
                return "Could not cancel remote search future.";
        }
    }
}
