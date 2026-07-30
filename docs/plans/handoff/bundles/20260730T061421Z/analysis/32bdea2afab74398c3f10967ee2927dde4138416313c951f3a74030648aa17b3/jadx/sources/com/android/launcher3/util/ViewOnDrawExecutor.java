package com.android.launcher3.util;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class ViewOnDrawExecutor implements Executor, ViewTreeObserver.OnDrawListener, Runnable, View.OnAttachStateChangeListener {
    public View mAttachedView;
    public boolean mCompleted;
    public boolean mFirstDrawCompleted;
    public boolean mLoadAnimationCompleted;
    public Consumer mOnClearCallback;
    public final ArrayList mTasks = new ArrayList();

    public void attachTo(View view, boolean z, Consumer consumer) {
        this.mOnClearCallback = consumer;
        this.mAttachedView = view;
        view.addOnAttachStateChangeListener(this);
        if (!z) {
            this.mLoadAnimationCompleted = true;
        }
        if (!this.mAttachedView.isAttachedToWindow() || this.mCompleted) {
            return;
        }
        this.mAttachedView.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.mTasks.add(runnable);
        Executors.MODEL_EXECUTOR.setThreadPriority(10);
    }

    public void markCompleted() {
        this.mTasks.clear();
        this.mCompleted = true;
        View view = this.mAttachedView;
        if (view != null) {
            view.getViewTreeObserver().removeOnDrawListener(this);
            this.mAttachedView.removeOnAttachStateChangeListener(this);
        }
        Consumer consumer = this.mOnClearCallback;
        if (consumer != null) {
            consumer.accept(this);
        }
        Executors.MODEL_EXECUTOR.setThreadPriority(0);
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        this.mFirstDrawCompleted = true;
        this.mAttachedView.post(this);
    }

    public void onLoadAnimationCompleted() {
        this.mLoadAnimationCompleted = true;
        View view = this.mAttachedView;
        if (view != null) {
            view.post(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        if (this.mCompleted) {
            return;
        }
        this.mAttachedView.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mLoadAnimationCompleted && this.mFirstDrawCompleted && !this.mCompleted) {
            runAllTasks();
        }
    }

    public void runAllTasks() {
        Iterator it = this.mTasks.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        markCompleted();
    }
}
