package org.wikipedia.views;

import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.hcaptcha.sdk.HCaptchaDialogFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SwipeableListView$$ExternalSyntheticLambda0 implements View.OnTouchListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SwipeableListView$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        AppCompatActivity activity;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                int i2 = SwipeableListView.$r8$clinit;
                return ((GestureDetector) obj).onTouchEvent(motionEvent);
            case 1:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                if (motionEvent.getAction() == 1) {
                    long uptimeMillis = SystemClock.uptimeMillis() - dropdownMenuEndIconDelegate.dropdownPopupActivatedAt;
                    if (uptimeMillis < 0 || uptimeMillis > 300) {
                        dropdownMenuEndIconDelegate.dropdownPopupDirty = false;
                    }
                    dropdownMenuEndIconDelegate.showHideDropdown();
                    dropdownMenuEndIconDelegate.dropdownPopupDirty = true;
                    dropdownMenuEndIconDelegate.dropdownPopupActivatedAt = SystemClock.uptimeMillis();
                }
                return false;
            default:
                HCaptchaDialogFragment hCaptchaDialogFragment = (HCaptchaDialogFragment) obj;
                if (hCaptchaDialogFragment.readyForInteraction || !hCaptchaDialogFragment.isAdded() || (activity = hCaptchaDialogFragment.getActivity()) == null) {
                    return view.performClick();
                }
                activity.dispatchTouchEvent(motionEvent);
                return true;
        }
    }
}
