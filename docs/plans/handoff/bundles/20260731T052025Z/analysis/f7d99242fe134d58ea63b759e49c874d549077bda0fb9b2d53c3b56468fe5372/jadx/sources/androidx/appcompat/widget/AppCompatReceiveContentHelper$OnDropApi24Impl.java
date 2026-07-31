package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AppCompatReceiveContentHelper$OnDropApi24Impl {
    public static boolean onDropForTextView(DragEvent dragEvent, TextView textView, Activity activity) {
        ContentInfoCompat.BuilderCompat builderCompat;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                builderCompat = new ScrollCapture(clipData, 3);
            } else {
                ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl();
                compatImpl.mClip = clipData;
                compatImpl.mSource = 3;
                builderCompat = compatImpl;
            }
            ViewCompat.performReceiveContent(textView, builderCompat.build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean onDropForView(DragEvent dragEvent, View view, Activity activity) {
        ContentInfoCompat.BuilderCompat builderCompat;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            builderCompat = new ScrollCapture(clipData, 3);
        } else {
            ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl();
            compatImpl.mClip = clipData;
            compatImpl.mSource = 3;
            builderCompat = compatImpl;
        }
        ViewCompat.performReceiveContent(view, builderCompat.build());
        return true;
    }
}
