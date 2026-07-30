package com.android.quickstep.views;

import android.annotation.TargetApi;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.icu.text.MeasureFormat;
import android.icu.util.Measure;
import android.icu.util.MeasureUnit;
import android.os.UserHandle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import c.a.c.a.a;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.quickstep.views.DigitalWellBeingToast;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import java.time.Duration;
import java.util.Locale;

@TargetApi(29)
/* loaded from: classes.dex */
public final class DigitalWellBeingToast {
    public static final int MINUTE_MS = 60000;
    public static final Intent OPEN_APP_USAGE_SETTINGS_TEMPLATE = new Intent("android.settings.action.APP_USAGE_SETTINGS");
    public static final String TAG = DigitalWellBeingToast.class.getSimpleName();
    public final BaseDraggingActivity mActivity;
    public long mAppRemainingTimeMs;
    public boolean mHasLimit;
    public final LauncherApps mLauncherApps;
    public Task mTask;
    public final TaskView mTaskView;

    public DigitalWellBeingToast(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
        this.mActivity = baseDraggingActivity;
        this.mTaskView = taskView;
        this.mLauncherApps = (LauncherApps) baseDraggingActivity.getSystemService(LauncherApps.class);
    }

    private String getContentDescriptionForTask(Task task, long j, long j2) {
        return (j < 0 || j2 < 0) ? task.titleDescription : this.mActivity.getString(R.string.task_contents_description_with_remaining_time, new Object[]{task.titleDescription, getText(j2)});
    }

    private String getReadableDuration(Duration duration, MeasureFormat.FormatWidth formatWidth, int i, boolean z) {
        int intExact = Math.toIntExact(duration.toHours());
        int intExact2 = Math.toIntExact(duration.minusHours(intExact).toMinutes());
        if (intExact > 0 && intExact2 > 0) {
            return MeasureFormat.getInstance(Locale.getDefault(), formatWidth).formatMeasures(new Measure(Integer.valueOf(intExact), MeasureUnit.HOUR), new Measure(Integer.valueOf(intExact2), MeasureUnit.MINUTE));
        }
        if (intExact > 0) {
            Locale locale = Locale.getDefault();
            if (!z) {
                formatWidth = MeasureFormat.FormatWidth.WIDE;
            }
            return MeasureFormat.getInstance(locale, formatWidth).formatMeasures(new Measure(Integer.valueOf(intExact), MeasureUnit.HOUR));
        }
        if (intExact2 > 0) {
            Locale locale2 = Locale.getDefault();
            if (!z) {
                formatWidth = MeasureFormat.FormatWidth.WIDE;
            }
            return MeasureFormat.getInstance(locale2, formatWidth).formatMeasures(new Measure(Integer.valueOf(intExact2), MeasureUnit.MINUTE));
        }
        if (duration.compareTo(Duration.ZERO) > 0) {
            return this.mActivity.getString(i);
        }
        Locale locale3 = Locale.getDefault();
        if (!z) {
            formatWidth = MeasureFormat.FormatWidth.WIDE;
        }
        return MeasureFormat.getInstance(locale3, formatWidth).formatMeasures(new Measure(0, MeasureUnit.MINUTE));
    }

    private String getRoundedUpToMinuteReadableDuration(long j) {
        if (j > 60000) {
            j = (((j + 60000) - 1) / 60000) * 60000;
        }
        return getReadableDuration(Duration.ofMillis(j), MeasureFormat.FormatWidth.NARROW, R.string.shorter_duration_less_than_one_minute);
    }

    private void setLimit(long j, long j2) {
        this.mAppRemainingTimeMs = j2;
        this.mHasLimit = true;
        TextView textView = (TextView) this.mActivity.getViewCache().getView(R.layout.digital_wellbeing_toast, this.mActivity, this.mTaskView);
        textView.setText(Utilities.prefixTextWithIcon(this.mActivity, R.drawable.ic_hourglass_top, getText()));
        textView.setOnClickListener(new View.OnClickListener() { // from class: c.a.b.d2.Y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DigitalWellBeingToast.this.openAppUsageSettings(view);
            }
        });
        setTaskFooter(textView);
        this.mTaskView.setContentDescription(getContentDescriptionForTask(this.mTask, j, j2));
        RecentsView recentsView = this.mTaskView.getRecentsView();
        if (recentsView != null) {
            recentsView.onDigitalWellbeingToastShown();
        }
    }

    private void setNoLimit() {
        this.mHasLimit = false;
        this.mTaskView.setContentDescription(this.mTask.titleDescription);
        setTaskFooter(null);
        this.mAppRemainingTimeMs = 0L;
    }

    private void setTaskFooter(View view) {
        View footer = this.mTaskView.setFooter(0, view);
        if (footer != null) {
            footer.setOnClickListener(null);
            this.mActivity.getViewCache().recycleView(R.layout.digital_wellbeing_toast, footer);
        }
    }

    public /* synthetic */ void a(long j, long j2) {
        if (j < 0 || j2 < 0) {
            setNoLimit();
        } else {
            setLimit(j, j2);
        }
    }

    public String getText() {
        return getText(this.mAppRemainingTimeMs);
    }

    public boolean hasLimit() {
        return this.mHasLimit;
    }

    public void initialize(final Task task) {
        this.mTask = task;
        if (task.key.userId != UserHandle.myUserId()) {
            setNoLimit();
        } else {
            Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: c.a.b.d2.e
                @Override // java.lang.Runnable
                public final void run() {
                    final DigitalWellBeingToast digitalWellBeingToast = DigitalWellBeingToast.this;
                    Task task2 = task;
                    LauncherApps.AppUsageLimit appUsageLimit = digitalWellBeingToast.mLauncherApps.getAppUsageLimit(task2.getTopComponent().getPackageName(), UserHandle.of(task2.key.userId));
                    long totalUsageLimit = appUsageLimit != null ? appUsageLimit.getTotalUsageLimit() : -1L;
                    final long usageRemaining = appUsageLimit != null ? appUsageLimit.getUsageRemaining() : -1L;
                    final long j = totalUsageLimit;
                    digitalWellBeingToast.mTaskView.post(new Runnable() { // from class: c.a.b.d2.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            DigitalWellBeingToast.this.a(j, usageRemaining);
                        }
                    });
                }
            });
        }
    }

    public void openAppUsageSettings(View view) {
        Intent addFlags = new Intent(OPEN_APP_USAGE_SETTINGS_TEMPLATE).putExtra("android.intent.extra.PACKAGE_NAME", this.mTask.getTopComponent().getPackageName()).addFlags(268468224);
        try {
            BaseActivity fromContext = BaseActivity.fromContext(view.getContext());
            fromContext.startActivity(addFlags, ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getWidth(), view.getHeight()).toBundle());
            fromContext.getUserEventDispatcher().logActionOnControl(0, 18, view, new int[0]);
        } catch (ActivityNotFoundException e) {
            String str = TAG;
            StringBuilder f = a.f("Failed to open app usage settings for task ");
            f.append(this.mTask.getTopComponent().getPackageName());
            Log.e(str, f.toString(), e);
        }
    }

    private String getText(long j) {
        return this.mActivity.getString(R.string.time_left_for_app, new Object[]{getRoundedUpToMinuteReadableDuration(j)});
    }

    private String getReadableDuration(Duration duration, MeasureFormat.FormatWidth formatWidth, int i) {
        return getReadableDuration(duration, formatWidth, i, false);
    }
}
