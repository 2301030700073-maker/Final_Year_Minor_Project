package com.android.launcher3.keyboard;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import b.m.b.AbstractC0168b0;
import b.m.b.t0;
import com.android.launcher3.keyboard.FocusIndicatorHelper;

/* loaded from: classes.dex */
public class FocusedItemDecorator extends AbstractC0168b0 {
    public FocusIndicatorHelper mHelper;

    public FocusedItemDecorator(View view) {
        this.mHelper = new FocusIndicatorHelper.SimpleFocusIndicatorHelper(view);
    }

    @Override // b.m.b.AbstractC0168b0
    public void onDraw(Canvas canvas, RecyclerView recyclerView, t0 t0Var) {
        this.mHelper.draw(canvas);
    }
}
