package com.android.launcher3.allapps;

import android.content.Context;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.Switch;
import com.android.launcher3.Insettable;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.UserCache;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes.dex */
public class WorkModeSwitch extends Switch implements Insettable {
    public Rect mInsets;
    public final float[] mTouch;
    public int mTouchSlop;

    public final class SetQuietModeEnabledAsyncTask extends AsyncTask {
        public final boolean enabled;
        public final WeakReference switchWeakReference;

        public SetQuietModeEnabledAsyncTask(boolean z, WeakReference weakReference) {
            this.enabled = z;
            this.switchWeakReference = weakReference;
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object[] objArr) {
            WorkModeSwitch workModeSwitch = (WorkModeSwitch) this.switchWeakReference.get();
            if (workModeSwitch == null || !Utilities.ATLEAST_P) {
                return Boolean.FALSE;
            }
            Context context = workModeSwitch.getContext();
            UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
            boolean z = false;
            Iterator it = ((UserCache) UserCache.INSTANCE.b(context)).getUserProfiles().iterator();
            while (it.hasNext()) {
                if (!Process.myUserHandle().equals((UserHandle) it.next())) {
                    z |= !userManager.requestQuietModeEnabled(this.enabled, r2);
                }
            }
            return Boolean.valueOf(z);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            WorkModeSwitch workModeSwitch;
            if (!((Boolean) obj).booleanValue() || (workModeSwitch = (WorkModeSwitch) this.switchWeakReference.get()) == null) {
                return;
            }
            workModeSwitch.setEnabled(true);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            WorkModeSwitch workModeSwitch = (WorkModeSwitch) this.switchWeakReference.get();
            if (workModeSwitch != null) {
                workModeSwitch.setEnabled(false);
            }
        }
    }

    public WorkModeSwitch(Context context) {
        super(context);
        this.mInsets = new Rect();
        this.mTouch = new float[2];
        init();
    }

    public /* synthetic */ void a() {
        setVisibility(8);
    }

    public final void init() {
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    @Override // android.widget.Switch, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.mTouch[0] = motionEvent.getX();
            this.mTouch[1] = motionEvent.getY();
        } else if (motionEvent.getActionMasked() == 2 && (Math.abs(this.mTouch[0] - motionEvent.getX()) > this.mTouchSlop || Math.abs(this.mTouch[1] - motionEvent.getY()) > this.mTouchSlop)) {
            int action = motionEvent.getAction();
            motionEvent.setAction(3);
            super.onTouchEvent(motionEvent);
            motionEvent.setAction(action);
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.Switch, android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int i = rect.bottom;
        Rect rect2 = this.mInsets;
        int i2 = i - rect2.bottom;
        rect2.set(rect);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom() + i2);
    }

    @Override // android.widget.Switch, android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        Utilities.getPrefs(getContext()).edit().putInt("worked_tip_counter", -1).apply();
        new SetQuietModeEnabledAsyncTask(isChecked(), new WeakReference(this)).execute(new Void[0]);
    }

    public void update(boolean z) {
        super.setChecked(z);
        setCompoundDrawablesRelativeWithIntrinsicBounds(z ? R.drawable.ic_corp : R.drawable.ic_corp_off, 0, 0, 0);
        setEnabled(true);
    }

    public WorkModeSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInsets = new Rect();
        this.mTouch = new float[2];
        init();
    }

    public WorkModeSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInsets = new Rect();
        this.mTouch = new float[2];
        init();
    }
}
