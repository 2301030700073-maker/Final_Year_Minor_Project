package com.android.launcher3.settings;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.preference.Preference;
import b.i.b.ActivityC0124t;
import b.l.V;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class NotificationDotsPreference extends Preference implements SecureSettingsObserver.OnChangeListener {
    public boolean mWidgetFrameVisible;

    public class NotificationAccessConfirmation extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ComponentName componentName = new ComponentName(getActivity(), (Class<?>) NotificationListener.class);
            Bundle bundle = new Bundle();
            bundle.putString(":settings:fragment_args_key", componentName.flattenToString());
            getActivity().startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS").addFlags(268435456).putExtra(":settings:fragment_args_key", componentName.flattenToString()).putExtra(":settings:show_fragment_args", bundle));
        }

        @Override // androidx.fragment.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            ActivityC0124t activity = getActivity();
            return new AlertDialog.Builder(activity).setTitle(R.string.title_missing_notification_access).setMessage(activity.getString(R.string.msg_missing_notification_access, activity.getString(R.string.derived_app_name))).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.title_change_settings, this).create();
        }
    }

    public NotificationDotsPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mWidgetFrameVisible = false;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        View a2 = v.a(android.R.id.widget_frame);
        if (a2 != null) {
            a2.setVisibility(this.mWidgetFrameVisible ? 0 : 8);
        }
    }

    @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
    public void onSettingsChanged(boolean z) {
        int i = z ? R.string.notification_dots_desc_on : R.string.notification_dots_desc_off;
        boolean z2 = true;
        if (z) {
            String string = Settings.Secure.getString(this.mContext.getContentResolver(), "enabled_notification_listeners");
            ComponentName componentName = new ComponentName(this.mContext, (Class<?>) NotificationListener.class);
            if (string == null || (!string.contains(componentName.flattenToString()) && !string.contains(componentName.flattenToShortString()))) {
                z2 = false;
            }
            if (!z2) {
                i = R.string.title_missing_notification_access;
            }
        }
        boolean z3 = !z2;
        if (this.mWidgetFrameVisible != z3) {
            this.mWidgetFrameVisible = z3;
            notifyChanged();
        }
        this.mFragment = z2 ? null : NotificationAccessConfirmation.class.getName();
        setSummary(this.mContext.getString(i));
    }

    public NotificationDotsPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mWidgetFrameVisible = false;
    }

    public NotificationDotsPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWidgetFrameVisible = false;
    }

    public NotificationDotsPreference(Context context) {
        super(context);
        this.mWidgetFrameVisible = false;
    }
}
