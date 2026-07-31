package org.wikipedia.notifications;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.activity.result.ActivityResultRegistry$register$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationActivity$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationActivity f$0;

    public /* synthetic */ NotificationActivity$$ExternalSyntheticLambda3(NotificationActivity notificationActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        NotificationActivity notificationActivity = this.f$0;
        switch (i) {
            case 0:
                int i2 = NotificationActivity.$r8$clinit;
                notificationActivity.getViewModel().fetchAndSave(false);
                break;
            case 1:
                int i3 = NotificationActivity.$r8$clinit;
                notificationActivity.getOnBackPressedDispatcher().onBackPressed();
                break;
            case 2:
                if (notificationActivity.actionMode == null) {
                    notificationActivity.actionMode = notificationActivity.startSupportActionMode(notificationActivity.searchActionModeCallback);
                    notificationActivity.postprocessAndDisplay(null);
                    break;
                }
                break;
            default:
                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = notificationActivity.resultLauncher;
                int i4 = NotificationFilterActivity.$r8$clinit;
                Context context = view.getContext();
                context.getClass();
                activityResultRegistry$register$2.launch(new Intent(context, (Class<?>) NotificationFilterActivity.class), null);
                break;
        }
    }
}
