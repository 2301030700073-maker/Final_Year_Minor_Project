package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import android.widget.Toast;
import com.joeykrim.rootcheck.R;

/* renamed from: qc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3575qc extends LinkMovementMethod {

    /* renamed from: do, reason: not valid java name */
    public static Activity f15139do;

    public C3575qc(Activity activity) {
        f15139do = activity;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public final boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        try {
            Spannable newSpannable = Spannable.Factory.getInstance().newSpannable(textView.getText());
            boolean z = false;
            if (motionEvent.getAction() == 1) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                int totalPaddingLeft = x - textView.getTotalPaddingLeft();
                int totalPaddingTop = y - textView.getTotalPaddingTop();
                int scrollX = totalPaddingLeft + textView.getScrollX();
                int scrollY = totalPaddingTop + textView.getScrollY();
                Layout layout = textView.getLayout();
                int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) newSpannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                if (clickableSpanArr.length != 0) {
                    clickableSpanArr[0].onClick(textView);
                    z = true;
                }
            }
            if (z && textView.getId() == R.id.creditsDetails) {
                if (C0583Wh.f4395do != null) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putString("item_name", "Credits-Contributors");
                        C0583Wh.f4395do.m6073do("card_pressed", bundle);
                    } catch (Exception unused) {
                    }
                }
                C4012y0.m8692for("Credits-Contributors");
            }
            return z;
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            Activity activity = f15139do;
            if (activity != null) {
                Toast.makeText(activity, activity.getString(R.string.notFoundBrowser), 1).show();
            }
            return true;
        }
    }
}
