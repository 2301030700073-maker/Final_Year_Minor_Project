package com.google.android.material.dialog;

import android.R;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.appcompat.app.AlertDialog;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InsetDialogOnTouchListener implements View.OnTouchListener {
    public final AlertDialog dialog;
    public final int leftInset;
    public final int prePieSlop;
    public final int topInset;

    public InsetDialogOnTouchListener(AlertDialog alertDialog, Rect rect) {
        this.dialog = alertDialog;
        this.leftInset = rect.left;
        this.topInset = rect.top;
        this.prePieSlop = ViewConfiguration.get(alertDialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = findViewById.getLeft() + this.leftInset;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.topInset, width, findViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            float f = (-this.prePieSlop) - 1;
            obtain.setLocation(f, f);
        }
        view.performClick();
        return this.dialog.onTouchEvent(obtain);
    }
}
