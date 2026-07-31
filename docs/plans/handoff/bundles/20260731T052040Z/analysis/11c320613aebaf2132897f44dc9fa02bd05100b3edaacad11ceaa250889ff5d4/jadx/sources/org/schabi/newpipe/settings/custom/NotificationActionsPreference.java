package org.schabi.newpipe.settings.custom;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import j$.util.stream.IntStream;
import java.util.ArrayList;
import java.util.function.IntFunction;
import org.schabi.newpipe.DownloaderImpl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda2;
import org.schabi.newpipe.player.notification.NotificationConstants;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class NotificationActionsPreference extends Preference {
    public ArrayList compactSlots;
    public NotificationSlot[] notificationSlots;

    public NotificationActionsPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLayoutResId = R.layout.settings_notification;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        if (Build.VERSION.SDK_INT >= 33) {
            ((TextView) preferenceViewHolder.itemView.findViewById(R.id.summary)).setText(R.string.notification_actions_summary_android13);
        }
        preferenceViewHolder.itemView.setClickable(false);
        final View view = preferenceViewHolder.itemView;
        this.compactSlots = new ArrayList(NotificationConstants.getCompactSlotsFromPreferences(this.mContext, getSharedPreferences()));
        this.notificationSlots = (NotificationSlot[]) IntStream.CC.range(0, 5).mapToObj(new IntFunction() { // from class: org.schabi.newpipe.settings.custom.NotificationActionsPreference$$ExternalSyntheticLambda0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                NotificationActionsPreference notificationActionsPreference = NotificationActionsPreference.this;
                return new NotificationSlot(notificationActionsPreference.mContext, notificationActionsPreference.getSharedPreferences(), i, view, notificationActionsPreference.compactSlots.contains(Integer.valueOf(i)), new DownloaderImpl$$ExternalSyntheticLambda0(notificationActionsPreference, 2));
            }
        }).toArray(new Utils$$ExternalSyntheticLambda2(5));
    }

    @Override // androidx.preference.Preference
    public final void onDetached() {
        unregisterDependency();
        ArrayList arrayList = this.compactSlots;
        Context context = this.mContext;
        if (arrayList != null && this.notificationSlots != null) {
            SharedPreferences.Editor edit = getSharedPreferences().edit();
            int i = 0;
            while (i < 3) {
                edit.putInt(context.getString(NotificationConstants.SLOT_COMPACT_PREF_KEYS[i]), i < this.compactSlots.size() ? ((Integer) this.compactSlots.get(i)).intValue() : -1);
                i++;
            }
            for (int i2 = 0; i2 < 5; i2++) {
                edit.putInt(context.getString(NotificationConstants.SLOT_PREF_KEYS[i2]), this.notificationSlots[i2].selectedAction);
            }
            edit.apply();
        }
        context.sendBroadcast(new Intent("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION").setPackage("org.schabi.newpipe"));
    }
}
