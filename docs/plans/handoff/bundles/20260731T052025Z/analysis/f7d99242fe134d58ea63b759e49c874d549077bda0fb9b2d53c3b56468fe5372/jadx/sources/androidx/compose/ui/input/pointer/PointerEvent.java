package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.platform.WeakCache;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PointerEvent {
    public final int buttons;
    public final List changes;
    public final int classification;
    public final LocalFolder.AnonymousClass12 internalPointerEvent;
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
    public PointerEvent(java.util.List r10, com.fsck.k9.mailstore.LocalFolder.AnonymousClass12 r11) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerEvent.<init>(java.util.List, com.fsck.k9.mailstore.LocalFolder$12):void");
    }

    public final MotionEvent getMotionEvent() {
        LocalFolder.AnonymousClass12 anonymousClass12 = this.internalPointerEvent;
        if (anonymousClass12 != null) {
            return (MotionEvent) ((WeakCache) anonymousClass12.val$flags).referenceQueue;
        }
        return null;
    }
}
