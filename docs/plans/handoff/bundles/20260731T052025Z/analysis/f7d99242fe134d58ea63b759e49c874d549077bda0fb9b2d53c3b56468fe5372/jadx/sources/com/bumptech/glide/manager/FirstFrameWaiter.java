package com.bumptech.glide.manager;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityRecreator;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FirstFrameWaiter implements FrameWaiter {
    public volatile boolean isFirstFrameSet;
    public final Set pendingActivities = Collections.newSetFromMap(new WeakHashMap());

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.manager.FirstFrameWaiter$1, reason: invalid class name */
    public final class AnonymousClass1 implements ViewTreeObserver.OnDrawListener {
        public final /* synthetic */ View val$view;

        public AnonymousClass1(View view) {
            this.val$view = view;
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            Util.getUiThreadHandler().post(new ActivityRecreator.AnonymousClass1(13, this, this, false));
        }
    }

    @Override // com.bumptech.glide.manager.FrameWaiter
    public final void registerSelf(AppCompatActivity appCompatActivity) {
        if (!this.isFirstFrameSet && this.pendingActivities.add(appCompatActivity)) {
            View decorView = appCompatActivity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new AnonymousClass1(decorView));
        }
    }
}
