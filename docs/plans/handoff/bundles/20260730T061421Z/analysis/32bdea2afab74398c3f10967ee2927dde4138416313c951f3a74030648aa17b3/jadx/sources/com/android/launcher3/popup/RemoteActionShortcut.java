package com.android.launcher3.popup;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.RemoteActionShortcut;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.R;
import java.util.Objects;

@TargetApi(29)
/* loaded from: classes.dex */
public class RemoteActionShortcut extends SystemShortcut {
    public static final boolean DEBUG = Utilities.IS_DEBUG_DEVICE;
    public final RemoteAction mAction;

    public RemoteActionShortcut(RemoteAction remoteAction, BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        super(0, R.id.action_remote_action_shortcut, baseDraggingActivity, itemInfo);
        this.mAction = remoteAction;
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
        return new AccessibilityNodeInfo.AccessibilityAction(R.id.action_remote_action_shortcut, this.mAction.getContentDescription());
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public boolean isLeftGroup() {
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractFloatingView.closeAllOpenViews(this.mTarget);
        this.mTarget.getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP);
        final String str = ((Object) this.mAction.getTitle()) + ", " + this.mItemInfo.getTargetComponent().getPackageName();
        try {
            if (DEBUG) {
                Log.d("RemoteActionShortcut", "Sending action: " + str);
            }
            this.mAction.getActionIntent().send(this.mTarget, 0, new Intent().putExtra("android.intent.extra.PACKAGE_NAME", this.mItemInfo.getTargetComponent().getPackageName()), new PendingIntent.OnFinished() { // from class: c.a.a.R0.n
                @Override // android.app.PendingIntent.OnFinished
                public final void onSendFinished(PendingIntent pendingIntent, Intent intent, int i, String str2, Bundle bundle) {
                    RemoteActionShortcut remoteActionShortcut = RemoteActionShortcut.this;
                    String str3 = str;
                    Objects.requireNonNull(remoteActionShortcut);
                    if (RemoteActionShortcut.DEBUG) {
                        Log.d("RemoteActionShortcut", "Action is complete: " + str3);
                    }
                    if (str2 == null || str2.isEmpty()) {
                        return;
                    }
                    Log.e("RemoteActionShortcut", "Remote action returned result: " + str3 + " : " + str2);
                    Toast.makeText(remoteActionShortcut.mTarget, str2, 0).show();
                }
            }, Executors.MAIN_EXECUTOR.mHandler);
        } catch (PendingIntent.CanceledException e) {
            Log.e("RemoteActionShortcut", "Remote action canceled: " + str, e);
            BaseDraggingActivity baseDraggingActivity = this.mTarget;
            Toast.makeText(baseDraggingActivity, baseDraggingActivity.getString(R.string.remote_action_failed, new Object[]{this.mAction.getTitle()}), 0).show();
        }
        this.mTarget.getUserEventDispatcher().logActionOnControl(0, 17, view, new int[0]);
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public void setIconAndContentDescriptionFor(final ImageView imageView) {
        this.mAction.getIcon().loadDrawableAsync(imageView.getContext(), new Icon.OnDrawableLoadedListener() { // from class: c.a.a.R0.a
            @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
            public final void onDrawableLoaded(Drawable drawable) {
                imageView.setImageDrawable(drawable);
            }
        }, Executors.MAIN_EXECUTOR.mHandler);
        imageView.setContentDescription(this.mAction.getContentDescription());
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public void setIconAndLabelFor(final View view, TextView textView) {
        this.mAction.getIcon().loadDrawableAsync(view.getContext(), new Icon.OnDrawableLoadedListener() { // from class: c.a.a.R0.o
            @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
            public final void onDrawableLoaded(Drawable drawable) {
                view.setBackground(drawable);
            }
        }, Executors.MAIN_EXECUTOR.mHandler);
        textView.setText(this.mAction.getTitle());
    }
}
