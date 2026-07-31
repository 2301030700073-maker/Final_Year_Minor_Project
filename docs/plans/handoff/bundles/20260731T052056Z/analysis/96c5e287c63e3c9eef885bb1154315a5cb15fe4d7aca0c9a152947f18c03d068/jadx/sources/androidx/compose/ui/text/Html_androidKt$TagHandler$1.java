package androidx.compose.ui.text;

import android.text.Editable;
import android.text.Html;
import kotlin.jvm.internal.Intrinsics;
import org.xml.sax.XMLReader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Html_androidKt$TagHandler$1 implements Html.TagHandler {
    @Override // android.text.Html.TagHandler
    public final void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
        if (xMLReader == null || editable == null || !z || !Intrinsics.areEqual(str, "ContentHandlerReplacementTag")) {
            return;
        }
        xMLReader.setContentHandler(new AnnotationContentHandler(xMLReader.getContentHandler(), editable));
    }
}
