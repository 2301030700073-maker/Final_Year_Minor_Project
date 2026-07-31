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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl(1);
                compatImpl.mClip = clipData;
                compatImpl.mSource = 3;
                builderCompat = compatImpl;
            }
            ViewCompat.performReceiveContent(textView, builderCompat.build());
            return true;
        } finally {
            textView.endBatchEdit();
        }
    }

    public static boolean onDropForView(DragEvent dragEvent, View view, Activity activity) {
        ContentInfoCompat.BuilderCompat builderCompat;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            builderCompat = new ScrollCapture(clipData, 3);
        } else {
            ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl(1);
            compatImpl.mClip = clipData;
            compatImpl.mSource = 3;
            builderCompat = compatImpl;
        }
        ViewCompat.performReceiveContent(view, builderCompat.build());
        return true;
    }
}
