package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import defpackage.C0378Na;

/* loaded from: classes.dex */
public final class P1 {
    /* renamed from: do, reason: not valid java name */
    public static boolean m1735do(DragEvent dragEvent, TextView textView, Activity activity) {
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            QK.m1863super(textView, (Build.VERSION.SDK_INT >= 31 ? new C0378Na.Cdo(clipData, 3) : new C0378Na.Cfor(clipData, 3)).mo1540for());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m1736if(DragEvent dragEvent, View view, Activity activity) {
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        QK.m1863super(view, (Build.VERSION.SDK_INT >= 31 ? new C0378Na.Cdo(clipData, 3) : new C0378Na.Cfor(clipData, 3)).mo1540for());
        return true;
    }
}
