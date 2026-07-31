package androidx.camera.core.impl;

import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.core.view.MenuHostHelper;
import androidx.lifecycle.Observer;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LiveDataObservable$$ExternalSyntheticLambda3 implements Observer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LiveDataObservable$$ExternalSyntheticLambda3(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    private final void onChanged$androidx$camera$core$impl$LiveDataObservable$$ExternalSyntheticLambda3(Object obj) {
        HashMap hashMap;
        MenuHostHelper menuHostHelper = (MenuHostHelper) this.f$0;
        LiveDataObservable$Result liveDataObservable$Result = (LiveDataObservable$Result) obj;
        synchronized (((HashMap) menuHostHelper.mProviderToLifecycleContainers)) {
            hashMap = new HashMap((HashMap) menuHostHelper.mProviderToLifecycleContainers);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            ((Executor) entry.getValue()).execute(new CameraX$$ExternalSyntheticLambda2(19, entry, liveDataObservable$Result));
        }
    }

    private final void onChanged$com$fsck$k9$ui$messagelist$LegacyMessageListFragment$$ExternalSyntheticLambda6(Object obj) {
        boolean isCurrentSnackbarLocked;
        LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.f$0;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        Snackbar snackbar = legacyMessageListFragment.recentChangesSnackbar;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recentChangesSnackbar");
            throw null;
        }
        Dispatcher dispatcher = Dispatcher.getInstance();
        BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = snackbar.managerCallback;
        synchronized (dispatcher.executorServiceOrNull) {
            isCurrentSnackbarLocked = dispatcher.isCurrentSnackbarLocked(anonymousClass5);
        }
        if (booleanValue && !isCurrentSnackbarLocked) {
            Snackbar snackbar2 = legacyMessageListFragment.recentChangesSnackbar;
            if (snackbar2 != null) {
                snackbar2.show();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("recentChangesSnackbar");
                throw null;
            }
        }
        if (booleanValue || !isCurrentSnackbarLocked) {
            return;
        }
        Snackbar snackbar3 = legacyMessageListFragment.recentChangesSnackbar;
        if (snackbar3 != null) {
            snackbar3.dispatchDismiss(3);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("recentChangesSnackbar");
            throw null;
        }
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        boolean isCurrentSnackbarLocked;
        switch (this.$r8$classId) {
            case 0:
                onChanged$androidx$camera$core$impl$LiveDataObservable$$ExternalSyntheticLambda3(obj);
                return;
            case 1:
                ((ProducerCoroutine) ((ProducerScope) this.f$0)).mo1016trySendJP2dKIU(obj);
                return;
            case 2:
                onChanged$com$fsck$k9$ui$messagelist$LegacyMessageListFragment$$ExternalSyntheticLambda6(obj);
                return;
            default:
                MessageListFragment messageListFragment = (MessageListFragment) this.f$0;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                Snackbar snackbar = messageListFragment.recentChangesSnackbar;
                if (snackbar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("recentChangesSnackbar");
                    throw null;
                }
                Dispatcher dispatcher = Dispatcher.getInstance();
                BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = snackbar.managerCallback;
                synchronized (dispatcher.executorServiceOrNull) {
                    isCurrentSnackbarLocked = dispatcher.isCurrentSnackbarLocked(anonymousClass5);
                }
                if (booleanValue && !isCurrentSnackbarLocked) {
                    Snackbar snackbar2 = messageListFragment.recentChangesSnackbar;
                    if (snackbar2 != null) {
                        snackbar2.show();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("recentChangesSnackbar");
                        throw null;
                    }
                }
                if (booleanValue || !isCurrentSnackbarLocked) {
                    return;
                }
                Snackbar snackbar3 = messageListFragment.recentChangesSnackbar;
                if (snackbar3 != null) {
                    snackbar3.dispatchDismiss(3);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("recentChangesSnackbar");
                    throw null;
                }
        }
    }
}
