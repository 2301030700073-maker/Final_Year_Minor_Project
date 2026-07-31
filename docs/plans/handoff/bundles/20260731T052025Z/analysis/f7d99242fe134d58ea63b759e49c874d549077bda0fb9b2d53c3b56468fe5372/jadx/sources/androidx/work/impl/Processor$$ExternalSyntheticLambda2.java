package androidx.work.impl;

import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.platform.WrappedComposition;
import androidx.core.content.res.CamUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroupAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.TransactionExecutor;
import androidx.room.util.DBUtil;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.sidecar.SidecarWindowBackend;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import androidx.work.impl.utils.EnqueueUtilsKt;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.NotificationOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.notification.NewMailNotificationController;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.ui.compose.SimpleHighlightView;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.android.HandlerContext;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okhttp3.Dispatcher;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Processor$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Processor$$ExternalSyntheticLambda2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final int preferenceAdapterPosition;
        LegacyAccountDto account;
        int i = 2;
        switch (this.$r8$classId) {
            case 0:
                Processor processor = (Processor) this.f$0;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) this.f$1;
                synchronized (processor.mLock) {
                    try {
                        Iterator it = processor.mOuterListeners.iterator();
                        while (it.hasNext()) {
                            ((ExecutionListener) it.next()).onExecuted(workGenerationalId, false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                WrappedComposition wrappedComposition = (WrappedComposition) this.f$0;
                Lifecycle lifecycle = (Lifecycle) this.f$1;
                if (wrappedComposition.disposed) {
                    return;
                }
                wrappedComposition.addedToLifecycle = lifecycle;
                lifecycle.addObserver(wrappedComposition);
                return;
            case 2:
                ((CamUtils) this.f$0).onFontRetrieved((Typeface) this.f$1);
                return;
            case 3:
                Runnable runnable = (Runnable) this.f$0;
                TransactionExecutor transactionExecutor = (TransactionExecutor) this.f$1;
                try {
                    runnable.run();
                    return;
                } finally {
                    transactionExecutor.scheduleNext();
                }
            case 4:
                ((SidecarWindowBackend.WindowLayoutChangeCallbackWrapper) this.f$0).callback.accept((WindowLayoutInfo) this.f$1);
                return;
            case 5:
                ((Base64Util) ((Dispatcher) this.f$0).readyAsyncCalls).stopWork((StartStopToken) this.f$1, 3);
                return;
            case 6:
                List list = (List) this.f$0;
                ConstraintTracker constraintTracker = (ConstraintTracker) this.f$1;
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((BaseConstraintController$track$1$listener$1) it2.next()).onConstraintChanged(constraintTracker.currentState);
                }
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f$0;
                String uuid = ((UUID) this.f$1).toString();
                uuid.getClass();
                EnqueueUtilsKt.cancel(workManagerImpl, uuid);
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                WorkDatabase workDatabase = (WorkDatabase) this.f$0;
                WorkManagerImpl workManagerImpl2 = (WorkManagerImpl) this.f$1;
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                workSpecDao.getClass();
                Iterator it3 = ((List) DBUtil.performBlocking(workSpecDao.__db, true, false, new Data$$ExternalSyntheticLambda0(8))).iterator();
                while (it3.hasNext()) {
                    EnqueueUtilsKt.cancel(workManagerImpl2, (String) it3.next());
                }
                return;
            case 9:
                final ParseError parseError = (ParseError) this.f$0;
                final GeneralSettingsFragment generalSettingsFragment = (GeneralSettingsFragment) this.f$1;
                final Preference findPreference = generalSettingsFragment.findPreference(parseError.cursorPos);
                if (findPreference == null) {
                    Log.e("doHighlight", "Preference not found on given screen");
                    return;
                }
                final RecyclerView recyclerView = generalSettingsFragment.mList;
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (!(adapter instanceof PreferenceGroupAdapter) || (preferenceAdapterPosition = ((PreferenceGroupAdapter) adapter).getPreferenceAdapterPosition(findPreference)) == -1) {
                    ParseError.highlightFallback(generalSettingsFragment, findPreference);
                    return;
                } else {
                    recyclerView.scrollToPosition(preferenceAdapterPosition);
                    recyclerView.postDelayed(new Runnable(parseError, recyclerView, preferenceAdapterPosition, generalSettingsFragment, findPreference) { // from class: com.bytehamster.lib.preferencesearch.SearchPreferenceResult$$ExternalSyntheticLambda1
                        public final /* synthetic */ RecyclerView f$1;
                        public final /* synthetic */ int f$2;
                        public final /* synthetic */ GeneralSettingsFragment f$3;
                        public final /* synthetic */ Preference f$4;

                        {
                            this.f$1 = recyclerView;
                            this.f$2 = preferenceAdapterPosition;
                            this.f$3 = generalSettingsFragment;
                            this.f$4 = findPreference;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.f$1.findViewHolderForAdapterPosition(this.f$2);
                            GeneralSettingsFragment generalSettingsFragment2 = this.f$3;
                            if (findViewHolderForAdapterPosition == null) {
                                ParseError.highlightFallback(generalSettingsFragment2, this.f$4);
                                return;
                            }
                            View view = findViewHolderForAdapterPosition.itemView;
                            Drawable background = view.getBackground();
                            view.setBackgroundColor((ParseError.getColorFromAttr(generalSettingsFragment2.getContext()) & 16777215) | 855638016);
                            new Handler().postDelayed(new Processor$$ExternalSyntheticLambda2(10, findViewHolderForAdapterPosition, background), 1000L);
                        }
                    }, 200L);
                    return;
                }
            case 10:
                ((RecyclerView.ViewHolder) this.f$0).itemView.setBackgroundDrawable((Drawable) this.f$1);
                return;
            case 11:
                MessagingController messagingController = (MessagingController) this.f$0;
                LocalMessageSearch localMessageSearch = (LocalMessageSearch) this.f$1;
                ImapSync imapSync = messagingController.notificationOperations;
                NotificationController notificationController = (NotificationController) imapSync.accountName;
                NewMailNotificationController newMailNotificationController = notificationController.newMailNotificationController;
                Preferences preferences = (Preferences) imapSync.backendStorage;
                localMessageSearch.getClass();
                if (!Intrinsics.areEqual(localMessageSearch.id, "unified_folders")) {
                    if (Intrinsics.areEqual(localMessageSearch.id, "new_messages")) {
                        Iterator it4 = preferences.getAccounts().iterator();
                        while (it4.hasNext()) {
                            notificationController.clearNewMailNotifications((LegacyAccountDto) it4.next(), false);
                        }
                        return;
                    } else {
                        if (localMessageSearch.getAccountUuids().size() == 1 && localMessageSearch.getFolderIds().size() == 1 && (account = preferences.getAccount((String) CollectionsKt.first(localMessageSearch.getAccountUuids()))) != null) {
                            WorkSpecDao_Impl$$ExternalSyntheticLambda26 workSpecDao_Impl$$ExternalSyntheticLambda26 = new WorkSpecDao_Impl$$ExternalSyntheticLambda26(4, ((Number) CollectionsKt.first((List) localMessageSearch.getFolderIds())).longValue());
                            net.thunderbird.core.logging.legacy.Log.v("Removing some notifications for account %s", account.uuid);
                            newMailNotificationController.removeNewMailNotifications(account, false, workSpecDao_Impl$$ExternalSyntheticLambda26);
                            return;
                        }
                        return;
                    }
                }
                for (LegacyAccountDto legacyAccountDto : preferences.getAccounts()) {
                    List folders = ((K9MessageStore) ((MessageStoreManager) imapSync.imapStore).getMessageStore(legacyAccountDto).messageStore.val$folders).getFolders(new Regex$$ExternalSyntheticBUOutline0(i));
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : folders) {
                        if (obj != null) {
                            arrayList.add(obj);
                        }
                    }
                    Set set = CollectionsKt.toSet(arrayList);
                    if (!set.isEmpty()) {
                        NotificationOperations$$ExternalSyntheticLambda2 notificationOperations$$ExternalSyntheticLambda2 = new NotificationOperations$$ExternalSyntheticLambda2(set, 0);
                        net.thunderbird.core.logging.legacy.Log.v("Removing some notifications for account %s", legacyAccountDto.uuid);
                        newMailNotificationController.removeNewMailNotifications(legacyAccountDto, false, notificationOperations$$ExternalSyntheticLambda2);
                    }
                }
                return;
            case BasicTextKt.ShiftMeta /* 12 */:
                SimpleHighlightView simpleHighlightView = (SimpleHighlightView) this.f$0;
                View view = (View) this.f$1;
                if (simpleHighlightView.getMeasuredHeight() > 0 && simpleHighlightView.getMeasuredWidth() > 0) {
                    simpleHighlightView.updateBitmap();
                }
                int[] iArr = new int[2];
                view.getLocationInWindow(iArr);
                Point point = new Point((view.getWidth() / 2) + iArr[0], (view.getHeight() / 2) + iArr[1]);
                int i2 = point.x;
                int i3 = point.y;
                int[] iArr2 = simpleHighlightView.positionInWindow;
                simpleHighlightView.getLocationInWindow(iArr2);
                simpleHighlightView.highlightX = i2 - iArr2[0];
                simpleHighlightView.highlightY = i3 - iArr2[1];
                simpleHighlightView.invalidate();
                return;
            default:
                ((CancellableContinuationImpl) this.f$0).resumeUndispatched((HandlerContext) this.f$1);
                return;
        }
    }
}
