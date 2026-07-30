package com.android.launcher3.graphics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import b.e.d.a;
import b.l.W;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.icons.BitmapInfo;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class PlaceHolderIconDrawable extends FastBitmapDrawable {
    public final Path mProgressPath;

    public PlaceHolderIconDrawable(BitmapInfo bitmapInfo, Context context) {
        super(bitmapInfo);
        this.mProgressPath = IconShape.getShapePath();
        this.mPaint.setColor(a.f(W.getAttrColor(context, R.attr.loadingIconColor), bitmapInfo.color));
    }

    @Override // com.android.launcher3.FastBitmapDrawable
    public void drawInternal(Canvas canvas, Rect rect) {
        int save = canvas.save();
        canvas.translate(rect.left, rect.top);
        canvas.scale(rect.width() / 100.0f, rect.height() / 100.0f);
        canvas.drawPath(this.mProgressPath, this.mPaint);
        canvas.restoreToCount(save);
    }
}
