package org.schabi.newpipe.util.text;

import android.os.Handler;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LongPressLinkMovementMethod extends LinkMovementMethod {
    public static final int LONG_PRESS_TIME = ViewConfiguration.getLongPressTimeout();
    public static LongPressLinkMovementMethod instance;
    public boolean isLongPressed;
    public Handler longClickHandler;

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public final boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        Handler handler;
        int action = motionEvent.getAction();
        if (action == 3 && (handler = this.longClickHandler) != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (action == 1 || action == 0) {
            int offsetForHorizontalLine = BundleKt.getOffsetForHorizontalLine(textView, motionEvent);
            LongPressClickableSpan[] longPressClickableSpanArr = (LongPressClickableSpan[]) spannable.getSpans(offsetForHorizontalLine, offsetForHorizontalLine, LongPressClickableSpan.class);
            if (longPressClickableSpanArr.length != 0) {
                if (action != 1) {
                    Selection.setSelection(spannable, spannable.getSpanStart(longPressClickableSpanArr[0]), spannable.getSpanEnd(longPressClickableSpanArr[0]));
                    Handler handler2 = this.longClickHandler;
                    if (handler2 != null) {
                        handler2.postDelayed(new WorkerKt$$ExternalSyntheticLambda2(18, this, longPressClickableSpanArr, textView), LONG_PRESS_TIME);
                    }
                    return true;
                }
                Handler handler3 = this.longClickHandler;
                if (handler3 != null) {
                    handler3.removeCallbacksAndMessages(null);
                }
                if (!this.isLongPressed) {
                    longPressClickableSpanArr[0].onClick(textView);
                }
                this.isLongPressed = false;
                return true;
            }
        }
        return super.onTouchEvent(textView, spannable, motionEvent);
    }
}
