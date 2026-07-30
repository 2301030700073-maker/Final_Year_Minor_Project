package com.android.launcher3.util;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.util.ViewPool;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class ViewPool {
    public int mCurrentSize = 0;
    public final LayoutInflater mInflater;
    public final int mLayoutId;
    public final ViewGroup mParent;
    public final Object[] mPool;

    public interface Reusable {
        void onRecycle();
    }

    public ViewPool(Context context, ViewGroup viewGroup, int i, int i2, final int i3) {
        this.mLayoutId = i;
        this.mParent = viewGroup;
        this.mInflater = LayoutInflater.from(context);
        this.mPool = new Object[i2];
        if (i3 > 0) {
            final Handler handler = new Handler();
            LayoutInflater layoutInflater = this.mInflater;
            final LayoutInflater cloneInContext = layoutInflater.cloneInContext(layoutInflater.getContext());
            new Thread(new Runnable() { // from class: c.a.a.a1.w
                @Override // java.lang.Runnable
                public final void run() {
                    final ViewPool viewPool = ViewPool.this;
                    int i4 = i3;
                    LayoutInflater layoutInflater2 = cloneInContext;
                    Handler handler2 = handler;
                    Objects.requireNonNull(viewPool);
                    for (int i5 = 0; i5 < i4; i5++) {
                        final View inflate = layoutInflater2.inflate(viewPool.mLayoutId, viewPool.mParent, false);
                        handler2.post(new Runnable() { // from class: c.a.a.a1.v
                            @Override // java.lang.Runnable
                            public final void run() {
                                ViewPool viewPool2 = ViewPool.this;
                                View view = inflate;
                                int i6 = viewPool2.mCurrentSize;
                                Object[] objArr = viewPool2.mPool;
                                if (i6 >= objArr.length) {
                                    return;
                                }
                                objArr[i6] = view;
                                viewPool2.mCurrentSize = i6 + 1;
                            }
                        });
                    }
                }
            }, "ViewPool-init").start();
        }
    }

    public View getView() {
        int i = this.mCurrentSize;
        if (i <= 0) {
            return this.mInflater.inflate(R.layout.task, this.mParent, false);
        }
        int i2 = i - 1;
        this.mCurrentSize = i2;
        return (View) this.mPool[i2];
    }
}
