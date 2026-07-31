package org.schabi.newpipe.fragments.detail;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import java.util.LinkedList;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;
import org.schabi.newpipe.settings.NotificationsSettingsFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda10 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                LinkedList linkedList = VideoDetailFragment.stack;
                break;
            default:
                int i = NotificationsSettingsFragment.$r8$clinit;
                NotificationHelper.Companion companion = NotificationHelper.Companion;
                Context context = view.getContext();
                context.getClass();
                companion.getClass();
                if (Build.VERSION.SDK_INT < 26) {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    Uri parse = Uri.parse("package:" + context.getPackageName());
                    parse.getClass();
                    intent.setData(parse);
                    context.startActivity(intent);
                    break;
                } else {
                    Intent addFlags = new Intent("android.settings.APP_NOTIFICATION_SETTINGS").putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName()).addFlags(268435456);
                    addFlags.getClass();
                    context.startActivity(addFlags);
                    break;
                }
        }
    }
}
