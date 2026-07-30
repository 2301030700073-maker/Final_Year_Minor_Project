package com.android.quickstep;

import android.graphics.Canvas;
import android.view.View;
import com.android.systemui.shared.system.WindowCallbacksCompat;
import java.util.function.BooleanSupplier;

/* loaded from: classes.dex */
public class ViewUtils {
    public static boolean postDraw(View view, Runnable runnable) {
        return postDraw(view, runnable, new BooleanSupplier() { // from class: c.a.b.P1
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return false;
            }
        });
    }

    public static boolean postDraw(final View view, final Runnable runnable, final BooleanSupplier booleanSupplier) {
        return new WindowCallbacksCompat(view) { // from class: com.android.quickstep.ViewUtils.1
            public int mDeferFrameCount = 2;

            @Override // com.android.systemui.shared.system.WindowCallbacksCompat
            public void onPostDraw(Canvas canvas) {
                if (booleanSupplier.getAsBoolean()) {
                    detach();
                    return;
                }
                int i = this.mDeferFrameCount;
                if (i > 0) {
                    this.mDeferFrameCount = i - 1;
                    detach();
                    attach();
                    view.invalidate();
                    return;
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
                detach();
            }
        }.attach();
    }
}
