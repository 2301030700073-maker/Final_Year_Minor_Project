package org.schabi.newpipe.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewTreeObserver;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.views.FocusAwareSeekBar;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class FocusAwareSeekBar extends AppCompatSeekBar {
    public static final /* synthetic */ int $r8$clinit = 0;
    public NestedListener listener;
    public final ViewTreeObserver.OnTouchModeChangeListener touchModeListener;
    public ViewTreeObserver treeObserver;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NestedListener implements SeekBar.OnSeekBarChangeListener {
        public final SeekBar.OnSeekBarChangeListener delegate;
        public boolean isSeeking;

        public NestedListener(SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
            this.delegate = onSeekBarChangeListener;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (!seekBar.isInTouchMode() && !this.isSeeking && z) {
                this.isSeeking = true;
                onStartTrackingTouch(seekBar);
            }
            this.delegate.onProgressChanged(seekBar, i, z);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            this.isSeeking = true;
            this.delegate.onStartTrackingTouch(seekBar);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            this.isSeeking = false;
            this.delegate.onStopTrackingTouch(seekBar);
        }
    }

    public FocusAwareSeekBar(Context context) {
        super(context);
        this.touchModeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: org.schabi.newpipe.views.FocusAwareSeekBar$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public final void onTouchModeChanged(boolean z) {
                if (!z) {
                    int i = FocusAwareSeekBar.$r8$clinit;
                    return;
                }
                FocusAwareSeekBar focusAwareSeekBar = FocusAwareSeekBar.this;
                FocusAwareSeekBar.NestedListener nestedListener = focusAwareSeekBar.listener;
                if (nestedListener == null || !nestedListener.isSeeking) {
                    return;
                }
                nestedListener.onStopTrackingTouch(focusAwareSeekBar);
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        this.treeObserver = viewTreeObserver;
        viewTreeObserver.addOnTouchModeChangeListener(this.touchModeListener);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver = this.treeObserver;
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            this.treeObserver = getViewTreeObserver();
        }
        this.treeObserver.removeOnTouchModeChangeListener(this.touchModeListener);
        this.treeObserver = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        NestedListener nestedListener;
        super.onFocusChanged(z, i, rect);
        if (isInTouchMode() || z || (nestedListener = this.listener) == null || !nestedListener.isSeeking) {
            return;
        }
        nestedListener.onStopTrackingTouch(this);
    }

    @Override // android.widget.AbsSeekBar, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedListener nestedListener;
        if (!isInTouchMode()) {
            boolean z = DeviceUtils.SAMSUNG;
            if ((i == 23 || i == 62 || i == 66 || i == 160) && (nestedListener = this.listener) != null && nestedListener.isSeeking) {
                nestedListener.onStopTrackingTouch(this);
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.SeekBar
    public void setOnSeekBarChangeListener(SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        NestedListener nestedListener = onSeekBarChangeListener == null ? null : new NestedListener(onSeekBarChangeListener);
        this.listener = nestedListener;
        super.setOnSeekBarChangeListener(nestedListener);
    }

    public FocusAwareSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.touchModeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: org.schabi.newpipe.views.FocusAwareSeekBar$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public final void onTouchModeChanged(boolean z) {
                if (!z) {
                    int i = FocusAwareSeekBar.$r8$clinit;
                    return;
                }
                FocusAwareSeekBar focusAwareSeekBar = FocusAwareSeekBar.this;
                FocusAwareSeekBar.NestedListener nestedListener = focusAwareSeekBar.listener;
                if (nestedListener == null || !nestedListener.isSeeking) {
                    return;
                }
                nestedListener.onStopTrackingTouch(focusAwareSeekBar);
            }
        };
    }

    public FocusAwareSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.touchModeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: org.schabi.newpipe.views.FocusAwareSeekBar$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public final void onTouchModeChanged(boolean z) {
                if (!z) {
                    int i2 = FocusAwareSeekBar.$r8$clinit;
                    return;
                }
                FocusAwareSeekBar focusAwareSeekBar = FocusAwareSeekBar.this;
                FocusAwareSeekBar.NestedListener nestedListener = focusAwareSeekBar.listener;
                if (nestedListener == null || !nestedListener.isSeeking) {
                    return;
                }
                nestedListener.onStopTrackingTouch(focusAwareSeekBar);
            }
        };
    }
}
