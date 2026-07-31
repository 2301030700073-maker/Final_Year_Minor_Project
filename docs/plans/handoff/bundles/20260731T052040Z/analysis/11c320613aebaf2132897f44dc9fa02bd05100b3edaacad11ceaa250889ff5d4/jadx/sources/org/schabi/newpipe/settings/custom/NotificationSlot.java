package org.schabi.newpipe.settings.custom;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import j$.util.Objects;
import okhttp3.Cookie;
import org.schabi.newpipe.DownloaderImpl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.notification.NotificationConstants;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class NotificationSlot {
    public static final int[] SLOT_ITEMS = {R.id.notificationAction0, R.id.notificationAction1, R.id.notificationAction2, R.id.notificationAction3, R.id.notificationAction4};
    public static final int[] SLOT_TITLES = {R.string.notification_action_0_title, R.string.notification_action_1_title, R.string.notification_action_2_title, R.string.notification_action_3_title, R.string.notification_action_4_title};
    public final Context context;
    public final int i;
    public final ImageView icon;
    public final DownloaderImpl$$ExternalSyntheticLambda0 onToggleCompactSlot;
    public int selectedAction;
    public final TextView summary;

    public NotificationSlot(Context context, SharedPreferences sharedPreferences, int i, View view, boolean z, DownloaderImpl$$ExternalSyntheticLambda0 downloaderImpl$$ExternalSyntheticLambda0) {
        this.context = context;
        this.i = i;
        this.onToggleCompactSlot = downloaderImpl$$ExternalSyntheticLambda0;
        Objects.requireNonNull(sharedPreferences);
        this.selectedAction = sharedPreferences.getInt(context.getString(NotificationConstants.SLOT_PREF_KEYS[i]), NotificationConstants.SLOT_DEFAULTS[i]);
        View findViewById = view.findViewById(SLOT_ITEMS[i]);
        int i2 = Build.VERSION.SDK_INT;
        int i3 = 8;
        if (i2 >= 33 && i < 3) {
            findViewById.setVisibility(8);
            return;
        }
        this.icon = (ImageView) findViewById.findViewById(R.id.notificationActionIcon);
        this.summary = (TextView) findViewById.findViewById(R.id.notificationActionSummary);
        updateInfo();
        ((TextView) findViewById.findViewById(R.id.notificationActionTitle)).setText(SLOT_TITLES[i]);
        findViewById.findViewById(R.id.notificationActionClickableArea).setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, i3));
        CheckBox checkBox = (CheckBox) findViewById.findViewById(R.id.notificationActionCheckBox);
        if (i2 >= 33) {
            checkBox.setVisibility(8);
            findViewById.findViewById(R.id.notificationActionCheckBoxClickableArea).setVisibility(8);
        } else {
            checkBox.setChecked(z);
            findViewById.findViewById(R.id.notificationActionCheckBoxClickableArea).setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, checkBox, 15));
        }
    }

    public final void updateInfo() {
        int i = NotificationConstants.ACTION_ICONS[this.selectedAction];
        Context context = this.context;
        ImageView imageView = this.icon;
        if (i == 0) {
            imageView.setImageDrawable(null);
        } else {
            imageView.setImageDrawable(Cookie.Companion.getDrawable(context, i));
        }
        this.summary.setText(NotificationConstants.getActionName(context, this.selectedAction));
    }
}
