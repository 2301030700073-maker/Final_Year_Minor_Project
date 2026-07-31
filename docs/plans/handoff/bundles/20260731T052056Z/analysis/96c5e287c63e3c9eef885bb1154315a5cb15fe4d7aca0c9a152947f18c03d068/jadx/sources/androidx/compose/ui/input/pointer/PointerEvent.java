package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.cardview.widget.CardView;
import com.caverock.androidsvg.CSSParser;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PointerEvent {
    public final int buttons;
    public final List changes;
    public final int classification;
    public final CSSParser internalPointerEvent;
    public final int keyboardModifiers;
    public int type;

    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        if (r11 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        r0 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0084, code lost:
    
        if (r11 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008e, code lost:
    
        if (r11 != false) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PointerEvent(java.util.List r10, com.caverock.androidsvg.CSSParser r11) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerEvent.<init>(java.util.List, com.caverock.androidsvg.CSSParser):void");
    }

    public final MotionEvent getMotionEvent() {
        CSSParser cSSParser = this.internalPointerEvent;
        if (cSSParser != null) {
            return (MotionEvent) ((CardView.AnonymousClass1) cSSParser.source).this$0;
        }
        return null;
    }
}
