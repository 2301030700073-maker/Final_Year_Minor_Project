package org.wikipedia.notifications;

import android.content.Intent;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.ViewModelKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.tabs.TabLayout;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.page.LinkMovementMethodExt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationActivity$$ExternalSyntheticLambda0 implements ActivityResultCallback, OnApplyWindowInsetsListener, SwipeRefreshLayout.OnRefreshListener, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ NotificationActivity f$0;

    public /* synthetic */ NotificationActivity$$ExternalSyntheticLambda0(NotificationActivity notificationActivity) {
        this.f$0 = notificationActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        int i = NotificationActivity.$r8$clinit;
        activityResult.getClass();
        int i2 = activityResult.resultCode;
        NotificationActivity notificationActivity = this.f$0;
        if (i2 == 2) {
            notificationActivity.getViewModel().fetchAndSave(true);
            return;
        }
        NotificationViewModel viewModel = notificationActivity.getViewModel();
        ItemNotificationBinding itemNotificationBinding = notificationActivity.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        viewModel.selectedFilterTab = ((TabLayout) itemNotificationBinding.notificationSubtitle).getSelectedTabPosition();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new NotificationViewModel$updateSearchQuery$1(viewModel, null, 1), 2);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = NotificationActivity.$r8$clinit;
        view.getClass();
        Insets insets = windowInsetsCompat.mImpl.getInsets(519);
        insets.getClass();
        ItemNotificationBinding itemNotificationBinding = this.f$0.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) itemNotificationBinding.notificationTime;
        coordinatorLayout.getClass();
        coordinatorLayout.setPadding(coordinatorLayout.getPaddingLeft(), insets.top, coordinatorLayout.getPaddingRight(), coordinatorLayout.getPaddingBottom());
        return windowInsetsCompat;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        int i = NotificationActivity.$r8$clinit;
        NotificationActivity notificationActivity = this.f$0;
        notificationActivity.finishActionMode$1();
        notificationActivity.getViewModel().fetchAndSave(true);
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = NotificationActivity.$r8$clinit;
        NotificationActivity notificationActivity = this.f$0;
        notificationActivity.resultLauncher.launch(new Intent(notificationActivity, (Class<?>) NotificationFilterActivity.class), null);
    }
}
