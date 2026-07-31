package org.wikipedia.views;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentListener;
import androidx.core.view.ViewCompat;
import androidx.work.Operation$State;
import com.google.android.material.textfield.TextInputEditText;
import java.util.Arrays;
import java.util.WeakHashMap;
import kotlin.Metadata;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/views/PlainPasteEditText;", "Lcom/google/android/material/textfield/TextInputEditText;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class PlainPasteEditText extends TextInputEditText {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlainPasteEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        String[] strArr = {"text/*"};
        OnReceiveContentListener onReceiveContentListener = new OnReceiveContentListener() { // from class: org.wikipedia.views.PlainPasteEditText$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnReceiveContentListener
            public final ContentInfoCompat onReceiveContent(View view, ContentInfoCompat contentInfoCompat) {
                ContentInfoCompat.BuilderCompat builderCompat;
                int i = PlainPasteEditText.$r8$clinit;
                view.getClass();
                contentInfoCompat.getClass();
                ContentInfoCompat.Compat compat = contentInfoCompat.mCompat;
                ClipData clip = compat.getClip();
                clip.getClass();
                String obj = clip.getItemAt(clip.getItemCount() - 1).coerceToText(PlainPasteEditText.this.getContext()).toString();
                if (Build.VERSION.SDK_INT >= 31) {
                    builderCompat = new ScrollCapture(contentInfoCompat);
                } else {
                    ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl(1);
                    compatImpl.mClip = compat.getClip();
                    compatImpl.mSource = compat.getSource();
                    compatImpl.mFlags = compat.getFlags();
                    compatImpl.mLinkUri = compat.getLinkUri();
                    compatImpl.mExtras = compat.getExtras();
                    builderCompat = compatImpl;
                }
                builderCompat.setClip(ClipData.newPlainText(null, obj));
                return builderCompat.build();
            }
        };
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (Build.VERSION.SDK_INT >= 31) {
            ViewCompat.Api31Impl.setOnReceiveContentListener(this, strArr, onReceiveContentListener);
            return;
        }
        Operation$State.checkArgument("A MIME type set here must not start with *: " + Arrays.toString(strArr), !strArr[0].startsWith("*"));
        setTag(R.id.tag_on_receive_content_mime_types, strArr);
        setTag(R.id.tag_on_receive_content_listener, onReceiveContentListener);
    }

    @Override // com.google.android.material.textfield.TextInputEditText, androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.getClass();
        boolean z = (getInputType() & 131072) == 131072;
        int i = editorInfo.imeOptions;
        if ((i & 6) == 6 && z) {
            editorInfo.imeOptions = (-1073741825) & i;
        }
        return super.onCreateInputConnection(editorInfo);
    }
}
