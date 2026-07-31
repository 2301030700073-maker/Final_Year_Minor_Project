package com.fsck.k9.ui.messagelist;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageLoaderHelper$4$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LegacyMessageListFragment$$ExternalSyntheticLambda7 implements SwipeRefreshLayout.OnRefreshListener, OnApplyWindowInsetsListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyMessageListFragment f$0;

    public /* synthetic */ LegacyMessageListFragment$$ExternalSyntheticLambda7(LegacyMessageListFragment legacyMessageListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyMessageListFragment;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0062 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0062 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isActionSupported(com.fsck.k9.ui.messagelist.MessageListItem r4, net.thunderbird.core.common.action.SwipeAction r5) {
        /*
            r3 = this;
            long r0 = r4.folderId
            net.thunderbird.core.android.account.LegacyAccount r4 = r4.account
            r5.getClass()
            int r5 = r5.ordinal()
            com.fsck.k9.ui.messagelist.LegacyMessageListFragment r3 = r3.f$0
            r2 = 0
            switch(r5) {
                case 0: goto L62;
                case 1: goto L60;
                case 2: goto L5a;
                case 3: goto L53;
                case 4: goto L3f;
                case 5: goto L3f;
                case 6: goto L3f;
                case 7: goto L60;
                case 8: goto L28;
                case 9: goto L15;
                default: goto L11;
            }
        L11:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r2
        L15:
            boolean r5 = r3.isOutbox()
            if (r5 != 0) goto L62
            com.fsck.k9.controller.MessagingControllerWrapper r3 = r3.getMessagingController()
            net.thunderbird.feature.account.AccountId r4 = r4.id
            boolean r3 = r3.isMoveCapable(r4)
            if (r3 == 0) goto L62
            goto L60
        L28:
            boolean r3 = r3.isOutbox()
            if (r3 != 0) goto L62
            java.lang.Long r3 = r4.spamFolderId
            if (r3 == 0) goto L3e
            if (r3 != 0) goto L35
            goto L60
        L35:
            long r3 = r3.longValue()
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 == 0) goto L62
            goto L60
        L3e:
            return r2
        L3f:
            boolean r3 = r3.isOutbox()
            if (r3 != 0) goto L62
            java.lang.Long r3 = r4.archiveFolderId
            if (r3 != 0) goto L4a
            goto L60
        L4a:
            long r3 = r3.longValue()
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 == 0) goto L62
            goto L60
        L53:
            boolean r3 = r3.isOutbox()
            if (r3 != 0) goto L62
            goto L60
        L5a:
            boolean r3 = r3.isOutbox()
            if (r3 != 0) goto L62
        L60:
            r3 = 1
            return r3
        L62:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messagelist.LegacyMessageListFragment$$ExternalSyntheticLambda7.isActionSupported(com.fsck.k9.ui.messagelist.MessageListItem, net.thunderbird.core.common.action.SwipeAction):boolean");
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        view.getClass();
        Insets insets = windowInsetsCompat.mImpl.getInsets(519);
        insets.getClass();
        int dimensionPixelSize = this.f$0.getResources().getDimensionPixelSize(R.dimen.floatingActionButtonMargin);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            Regex$$ExternalSyntheticBUOutline0.m("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.leftMargin = insets.left + dimensionPixelSize;
        marginLayoutParams.bottomMargin = insets.bottom + dimensionPixelSize;
        marginLayoutParams.rightMargin = dimensionPixelSize + insets.right;
        view.setLayoutParams(marginLayoutParams);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        AccountId accountId;
        AccountId accountId2;
        AccountId accountId3;
        int i = this.$r8$classId;
        LegacyMessageListFragment legacyMessageListFragment = this.f$0;
        switch (i) {
            case 1:
                legacyMessageListFragment.onRemoteSearchRequested();
                return;
            default:
                if (!legacyMessageListFragment.isSingleAccountMode || !legacyMessageListFragment.isSingleFolderMode) {
                    if (legacyMessageListFragment.allAccounts) {
                        legacyMessageListFragment.getMessagingController().messagingController.checkMail(null, true, true, false, legacyMessageListFragment.activityListener);
                        return;
                    }
                    String[] strArr = legacyMessageListFragment.accountUuids;
                    if (strArr == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("accountUuids");
                        throw null;
                    }
                    for (String str : strArr) {
                        LegacyAccount account = legacyMessageListFragment.getAccountManager$1().getAccount(str);
                        if (account != null && (accountId = account.id) != null) {
                            MessagingControllerWrapper messagingController = legacyMessageListFragment.getMessagingController();
                            messagingController.messagingController.checkMail(messagingController.getAccountDtoOrNull(accountId), true, true, false, legacyMessageListFragment.activityListener);
                        }
                    }
                    return;
                }
                FolderInfoHolder folderInfoHolder = legacyMessageListFragment.currentFolder;
                folderInfoHolder.getClass();
                long j = folderInfoHolder.databaseId;
                LegacyAccount legacyAccount = legacyMessageListFragment.account;
                if (legacyAccount != null && (accountId3 = legacyAccount.id) != null) {
                    MessagingControllerWrapper messagingController2 = legacyMessageListFragment.getMessagingController();
                    MessageListFragment.MessageListActivityListener messageListActivityListener = legacyMessageListFragment.activityListener;
                    messagingController2.getClass();
                    LegacyAccountDto accountDtoOrThrow = messagingController2.getAccountDtoOrThrow(accountId3);
                    MessagingController messagingController3 = messagingController2.messagingController;
                    messagingController3.putBackground("synchronizeMailbox", new MessageLoaderHelper$4$$ExternalSyntheticLambda0(messagingController3, accountDtoOrThrow, j, messageListActivityListener, 4));
                }
                LegacyAccount legacyAccount2 = legacyMessageListFragment.account;
                if (legacyAccount2 == null || (accountId2 = legacyAccount2.id) == null) {
                    return;
                }
                MessagingControllerWrapper messagingController4 = legacyMessageListFragment.getMessagingController();
                messagingController4.getClass();
                LegacyAccountDto accountDtoOrThrow2 = messagingController4.getAccountDtoOrThrow(accountId2);
                MessagingController messagingController5 = messagingController4.messagingController;
                messagingController5.putBackground("sendPendingMessages", new MessagingController.AnonymousClass3(messagingController5, accountDtoOrThrow2, 2));
                return;
        }
    }
}
