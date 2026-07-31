package com.fsck.k9.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class StatusIndicator extends ToolableViewAnimator {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Status {
        public static final /* synthetic */ Status[] $VALUES;
        public static final Status ERROR;
        public static final Status IDLE;
        public static final Status OK;
        public static final Status PROGRESS;

        static {
            Status status = new Status("IDLE", 0);
            IDLE = status;
            Status status2 = new Status("PROGRESS", 1);
            PROGRESS = status2;
            Status status3 = new Status("OK", 2);
            OK = status3;
            Status status4 = new Status("ERROR", 3);
            ERROR = status4;
            $VALUES = new Status[]{status, status2, status3, status4};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }
    }

    public StatusIndicator(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(R.layout.status_indicator, (ViewGroup) this, true);
        setInAnimation(AnimationUtils.loadAnimation(context, R.anim.fade_in));
        setOutAnimation(AnimationUtils.loadAnimation(context, R.anim.fade_out));
    }

    @Override // com.fsck.k9.view.ToolableViewAnimator, android.widget.ViewAnimator
    public void setDisplayedChild(int i) {
        if (i != getDisplayedChild()) {
            super.setDisplayedChild(i);
        }
    }

    public void setDisplayedChild(Status status) {
        setDisplayedChild(status.ordinal());
    }

    public StatusIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.status_indicator, (ViewGroup) this, true);
        setInAnimation(AnimationUtils.loadAnimation(context, R.anim.fade_in));
        setOutAnimation(AnimationUtils.loadAnimation(context, R.anim.fade_out));
    }
}
