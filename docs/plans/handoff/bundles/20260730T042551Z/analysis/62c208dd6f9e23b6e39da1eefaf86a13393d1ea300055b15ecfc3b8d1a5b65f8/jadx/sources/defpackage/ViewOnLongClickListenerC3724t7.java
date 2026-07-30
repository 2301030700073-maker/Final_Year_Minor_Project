package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;

/* renamed from: t7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnLongClickListenerC3724t7 implements View.OnLongClickListener {
    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        CharSequence contentDescription = view.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        view.getLocationOnScreen(iArr);
        view.getWindowVisibleDisplayFrame(rect);
        Context context = view.getContext();
        int width = view.getWidth();
        int height = view.getHeight();
        int i = (width / 2) + iArr[0];
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        int i3 = (int) (context.getResources().getDisplayMetrics().density * 48.0f);
        Toast makeText = Toast.makeText(context, contentDescription, 0);
        int i4 = iArr[1];
        if (i4 < i3) {
            makeText.setGravity(49, i - (i2 / 2), (i4 - rect.top) + height);
        } else {
            makeText.setGravity(49, i - (i2 / 2), (i4 - rect.top) - i3);
        }
        makeText.show();
        return true;
    }
}
