package b.b.g;

import android.text.StaticLayout;
import android.widget.TextView;

/* renamed from: b.b.g.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0043d0 extends C0041c0 {
    @Override // b.b.g.C0045e0
    public void a(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(textView.getTextDirectionHeuristic());
    }
}
