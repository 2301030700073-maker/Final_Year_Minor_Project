package org.schabi.newpipe.info_list.holder;

import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class CommentInfoItemHolder$$ExternalSyntheticLambda3 implements View.OnTouchListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CommentInfoItemHolder$$ExternalSyntheticLambda3(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                TextView textView = ((CommentInfoItemHolder) obj).itemContentView;
                CharSequence text = textView.getText();
                if (text instanceof Spanned) {
                    Spanned spanned = (Spanned) text;
                    int action = motionEvent.getAction();
                    if (action == 1 || action == 0) {
                        int offsetForHorizontalLine = BundleKt.getOffsetForHorizontalLine(textView, motionEvent);
                        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spanned.getSpans(offsetForHorizontalLine, offsetForHorizontalLine, ClickableSpan.class);
                        if (clickableSpanArr.length != 0) {
                            if (action == 1) {
                                clickableSpanArr[0].onClick(textView);
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                if (motionEvent.getAction() == 1) {
                    long currentTimeMillis = System.currentTimeMillis() - dropdownMenuEndIconDelegate.dropdownPopupActivatedAt;
                    if (currentTimeMillis < 0 || currentTimeMillis > 300) {
                        dropdownMenuEndIconDelegate.dropdownPopupDirty = false;
                    }
                    dropdownMenuEndIconDelegate.showHideDropdown();
                    dropdownMenuEndIconDelegate.dropdownPopupDirty = true;
                    dropdownMenuEndIconDelegate.dropdownPopupActivatedAt = System.currentTimeMillis();
                    break;
                }
                break;
        }
        return false;
    }
}
