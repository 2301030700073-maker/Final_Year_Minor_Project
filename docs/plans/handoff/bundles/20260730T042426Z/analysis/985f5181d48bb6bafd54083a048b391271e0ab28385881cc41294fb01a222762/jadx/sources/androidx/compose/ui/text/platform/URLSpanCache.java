package androidx.compose.ui.text.platform;

import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.UrlAnnotation;
import java.util.WeakHashMap;

/* compiled from: URLSpanCache.android.kt */
/* loaded from: classes.dex */
public final class URLSpanCache {
    private final WeakHashMap spansByAnnotation = new WeakHashMap();
    private final WeakHashMap urlSpansByAnnotation = new WeakHashMap();
    private final WeakHashMap linkSpansWithListenerByAnnotation = new WeakHashMap();

    public final URLSpan toURLSpan(UrlAnnotation urlAnnotation) {
        WeakHashMap weakHashMap = this.spansByAnnotation;
        Object obj = weakHashMap.get(urlAnnotation);
        if (obj == null) {
            obj = new URLSpan(urlAnnotation.getUrl());
            weakHashMap.put(urlAnnotation, obj);
        }
        return (URLSpan) obj;
    }

    public final URLSpan toURLSpan(AnnotatedString.Range range) {
        WeakHashMap weakHashMap = this.urlSpansByAnnotation;
        Object obj = weakHashMap.get(range);
        if (obj == null) {
            obj = new URLSpan(((LinkAnnotation.Url) range.getItem()).getUrl());
            weakHashMap.put(range, obj);
        }
        return (URLSpan) obj;
    }

    public final ClickableSpan toClickableSpan(AnnotatedString.Range range) {
        WeakHashMap weakHashMap = this.linkSpansWithListenerByAnnotation;
        Object obj = weakHashMap.get(range);
        if (obj == null) {
            obj = new ComposeClickableSpan((LinkAnnotation) range.getItem());
            weakHashMap.put(range, obj);
        }
        return (ClickableSpan) obj;
    }
}
