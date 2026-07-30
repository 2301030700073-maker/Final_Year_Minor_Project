package com.heinrichreimersoftware.materialintro.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes3.dex */
public class SwipeBlockableViewPager extends ViewPager {

    /* renamed from: break, reason: not valid java name */
    public boolean f12221break;

    /* renamed from: catch, reason: not valid java name */
    public boolean f12222catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f12223class;

    /* renamed from: else, reason: not valid java name */
    public float f12224else;

    public SwipeBlockableViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12221break = true;
        this.f12222catch = true;
        this.f12223class = false;
    }

    /* renamed from: interface, reason: not valid java name */
    public final int m6380interface(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f12224else = motionEvent.getX();
            return 0;
        }
        if (motionEvent.getAction() == 2 || motionEvent.getAction() == 1) {
            float x = motionEvent.getX() - this.f12224else;
            if (0.0f > Math.abs(x)) {
                return 0;
            }
            if (x > 0.0f) {
                return -1;
            }
            if (x < 0.0f) {
                return 1;
            }
        }
        return 0;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return !(((ViewPager) this).f8038new == 0 && getChildCount() == 0) && !((ViewPager) this).f8024else && m6381protected(motionEvent) && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (!(((ViewPager) this).f8038new == 0 && getChildCount() == 0) && m6381protected(motionEvent)) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public final boolean m6381protected(MotionEvent motionEvent) {
        if (m6380interface(motionEvent) == -1 && !this.f12221break) {
            if (!this.f12223class) {
                this.f12223class = true;
                int i = ((ViewPager) this).f8038new;
                scrollTo(getWidth() * i, getScrollY());
                m4693package(i);
            }
            return false;
        }
        if (m6380interface(motionEvent) != 1 || this.f12222catch) {
            this.f12223class = false;
            return true;
        }
        if (!this.f12223class) {
            this.f12223class = true;
            int i2 = ((ViewPager) this).f8038new;
            scrollTo(getWidth() * i2, getScrollY());
            m4693package(i2);
        }
        return false;
    }
}
